require 'rails_helper'

describe "add an image" do
  it "adds an image to user" do
    login_user
    visit user_path(2)
    click_link "Add an image"
    image = FactoryGirl.create(:image)
    click_on 'Save'
    expect(page).to have_content "Welcome to Flakr"
  end

  def login_user
    visit root_path
    click_link "Sign up"
    fill_in "Email", with: "cat@cat.com"
    fill_in "Username", with: "cat"
    fill_in "Password", with: "88888888"
    fill_in "Password confirmation", with: "88888888"
    click_on "Sign Up"
  end

end
