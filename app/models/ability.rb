class Ability
  include CanCan::Ability

  def initialize(user)
    return unless user.present?

    can :read, :all
    can :create, :all
    can :destroy, Post, author: user
    can :destroy, Comment, author: user

    return unless user.admin?

    can :manage, :all
    can :destroy, :all
  end
end
