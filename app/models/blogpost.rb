class Blogpost < ApplicationRecord

  mount_uploader :blogimage, BlogimageUploader
  has_and_belongs_to_many :tags
  
end
