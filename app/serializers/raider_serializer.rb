class RaiderSerializer < ActiveModel::Serializer
  attributes :id, :name, :power
  belongs_to :users
end
