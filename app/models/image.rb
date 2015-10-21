class Image < ActiveRecord::Base
 validates :photo_file_name, :presence => true
 validates :description, :presence => true

 belongs_to :user
end
