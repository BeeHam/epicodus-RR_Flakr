class ImagesController < ApplicationController
  def new
    @user = User.find(params[:user_id])
    @image = @user.images.new
  end

  private

  def image_params
    params.require(:image).permit(:photo_file_name, :photo_content_type, :photo_file_size, :description)
  end
end
