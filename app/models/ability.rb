class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user (not logged in)
    can :manage, User, id: user.id
    if user.admin?
      can :manage, :all
    else
      can [:show], Order, user_id: user.id
      can :create, Comment, user_id: user.id
      can [:show, :index, :comment], Product
    end
  end
end
