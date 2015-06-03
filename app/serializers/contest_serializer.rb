class ContestSerializer < ActiveModel::Serializer
  attributes :id, :name, :location, :contest_occurrence
  has_many :categories
end
