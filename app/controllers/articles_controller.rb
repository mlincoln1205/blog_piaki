class ArticlesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_article, only: [:show, :edit, :update, :destroy]

  def index
    if params[:query]
      @articles = policy_scope(Article).order(created_at: :desc).page(params[:page]).per(5).search_by_title_and_synopsis(params[:query])
    else
      @articles = policy_scope(Article).order(created_at: :desc).page(params[:page]).per(5)
    end
  end

  def show
  end

  def new
    @article = Article.new
    authorize @article
  end

  def edit
    unless @article.user == current_user
    redirect_to articles_path
    end
  end

  def create
    @article = Article.new(article_params)
    @article.user = current_user
    authorize @article
    
    if @article.save
      redirect_to @article, notice: 'Article was successfully created.'
    else
      render :new
    end
  end

  def update
    if @article.update(article_params)
      redirect_to @article, notice: 'Article was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @article.destroy
    redirect_to articles_url, notice: 'Article was successfully destroyed.'
  end

  private
    def set_article
      @article = Article.find(params[:id])
      authorize @article
    end

    def article_params
      params.require(:article).permit(:title, :rich_body, :description, photos: [])
    end
end
