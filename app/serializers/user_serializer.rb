class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :username
  has_many :memes
end
