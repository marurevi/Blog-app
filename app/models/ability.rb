# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    
    # Handle the case where we don't have a current_user i.e. the user is a guest
    user ||= User.new

    # Define a few sample abilities
    can    :manage , Article
    cannot :manage , Comment
    can    :read   , Tag , released: true

    return unless user.present?  # additional permissions for logged in users (they can read their own posts)
    can :read, Post, user: user

    return unless user.admin?  # additional permissions for administrators
    can :read, Post
  end
  
end
