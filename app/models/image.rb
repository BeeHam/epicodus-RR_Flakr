class Image < ActiveRecord::Base
  has_attached_file :photo

 validates :photo_file_name, :presence => true
 validates_attachment_content_type :photo, :content_type => /\Aimage\/.*\Z/
 validates :description, :presence => true

 belongs_to :user
end
