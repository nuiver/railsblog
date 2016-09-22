class PortfolioItem < ApplicationRecord

  mount_uploader :image, ImageUploader
  has_and_belongs_to_many :tags

end
