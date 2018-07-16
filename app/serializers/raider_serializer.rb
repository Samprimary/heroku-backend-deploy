class RaiderSerializer < ActiveModel::Serializer
  attributes :id, :name, :power, :user_id
end
