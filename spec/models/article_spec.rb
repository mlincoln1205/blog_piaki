require 'rails_helper'

RSpec.describe Article, type: :model do
  context 'When is valid' do
    it 'is valid?' do
      user = User.new
      user.first_name = 'John'
      user.last_name = 'Rambo'
      user.email = 'john.rambo@john.com'
      user.password = 'password'
      user.save

      article = Article.new
      article.title = 'My Article'
      article.body = 'My Article\'s body'
      article.user = user
      expect(article).to be_valid
    end
    it 'is not valid?' do
      user = User.new
      user.first_name = 'John'
      user.last_name = 'Rambo'
      user.email = 'john.rambo@john.com'
      user.password = 'password'
      user.save

      article = Article.new
      article.title = 'My Article'
      article.body = 'My Article\'s body'
      expect(article).not_to be_valid
    end
  end
end