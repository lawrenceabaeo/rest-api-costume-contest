class ContestIndexSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :location, :contest_occurrence
end
