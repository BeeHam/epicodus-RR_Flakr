require 'rails_helper'

describe 'the static page display' do
  it "will show the home page" do
    visit root_path
    expect(page).to have_content "Welcome to Flakr"
  end
end
