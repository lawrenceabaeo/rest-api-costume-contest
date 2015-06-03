class ContestIndexSerializer < ActiveModel::Serializer
  attributes :id, :name, :location, :contest_occurrence
end
