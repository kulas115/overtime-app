class PostPolicy < ApplicationPolicy
  def update?
    record.user_id == user.id || user.type.include?(user.type)
  end
end
