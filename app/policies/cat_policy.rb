class CatPolicy < ApplicationPolicy
  attr_reader :user, :cat

  def initialize(user, cat)
    @user = user
    @cat = cat
  end

  def index?
    true
  end

  def update?
    !@user.nil? && (@user.role == 'volunteer' || @user.role == 'admin')
  end

  def edit?
  	update?
  end
end
