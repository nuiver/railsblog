# encoding: utf-8

class BlogimageUploader < CarrierWave::Uploader::Base

  include Cloudinary::CarrierWave

end
