class CategorySerializer < ActiveModel::Serializer
  attributes :id
  has_one :category_description
  has_many :entries
end
