# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    # Define abilities for the user here. For example:
    can :read, Post, public: true
    can :by_tag, Post, public: true
    can :by_tag, Startup, public: true
    can :read, Startup, public: true
    can :create, Subscription
    can :read, Profile

    return unless user.present?  # additional permissions for logged in users (they can read their own posts)
    can :manage, Post, user: user
    can :manage, Profile, user: user
    can :manage, Startup, user: user
    can :my, Post
    #can :manage, Chat, user: user
    #can :manage, Comment, user: user
    #   return unless user.present?
    #   can :read, :all
    return unless user.admin?
    can :manage, :all
    #
    # The first argument to `can` is the action you are giving the user
    # permission to do.
    # If you pass :manage it will apply to every action. Other common actions
    # here are :read, :create, :update and :destroy.
    #
    # The second argument is the resource the user can perform the action on.
    # If you pass :all it will apply to every resource. Otherwise pass a Ruby
    # class of the resource.
    #
    # The third argument is an optional hash of conditions to further filter the
    # objects.
    # For example, here the user can only update published articles.
    #
    #   can :update, Article, published: true
    #
    # See the wiki for details:
    # https://github.com/CanCanCommunity/cancancan/blob/develop/docs/define_check_abilities.md
  end
end
