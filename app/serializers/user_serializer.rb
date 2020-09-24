class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :avatar, :discord
end
