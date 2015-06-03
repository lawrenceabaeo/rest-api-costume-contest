class EntrySerializer < ActiveModel::Serializer
  attributes :title, :character, :person, :display_rank
end
