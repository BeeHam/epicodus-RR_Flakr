FactoryGirl.define do
  factory(:image) do
    description 'A picture'
    photo Rack::Test::UploadedFile.new("#{Rails.root}/spec/fixtures/images/wolv.jpg", "image/jpg")
    # photo_file_name {'spicoli.jpg'}
    # photo_content_type {'spicoli.jpg'}
    # photo_file_size {1024}
  end
end
