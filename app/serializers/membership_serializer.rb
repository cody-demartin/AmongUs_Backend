class MembershipSerializer < ActiveModel::Serializer
  attributes :user_id, :group_id

  belongs_to :user
  belongs_to :group
end
