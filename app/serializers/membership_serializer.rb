class MembershipSerializer < ActiveModel::Serializer
  attributes :user_id

  belongs_to :user
  belongs_to :group
end
