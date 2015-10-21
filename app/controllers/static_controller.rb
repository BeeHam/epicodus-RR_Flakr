class StaticController < ApplicationController
  def index
    @users = User.all
    @images = Image.all
  end
end
