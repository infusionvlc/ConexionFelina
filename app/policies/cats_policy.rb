class CatPolicy < ApplicationPolicy
  attr_reader :user, :cat

  def initialize(user, cat)
    @user = user
    @cat = cat
  end

  def index?
    true
  end
end
