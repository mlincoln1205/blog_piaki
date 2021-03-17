class ArticlePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

# user ==> current_user
# record ==> @object

  def new?
    true
  end
  
  def create?
    user.admin?
  end

  def show?
    true
  end
  
  def edit?
    is_owner?
  end

  def update?
    is_owner?
  end

  def destroy?
    is_owner?
  end


  private
  
  def is_owner?
    user == record.user
  end

end
