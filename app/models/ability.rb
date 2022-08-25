# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    
    # Handle the case where we don't have a current_user i.e. the user is a guest
    user ||= User.new

    if user.role == 'admin'
      can :manage, :all
    else
      can :read, :all
      can :manage, Post, author_id: user.id
    end
  end
  
end
