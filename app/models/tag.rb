class Tag < ApplicationRecord

  has_and_belongs_to_many :blogposts
  has_and_belongs_to_many :portfolio_items

end
