class ContestSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :location, :contest_occurrence
  has_many :categories
end
