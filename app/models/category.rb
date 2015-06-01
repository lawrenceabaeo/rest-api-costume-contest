class Category < ActiveRecord::Base
  belongs_to :contest
  belongs_to :category_description
  has_many :entries
end
