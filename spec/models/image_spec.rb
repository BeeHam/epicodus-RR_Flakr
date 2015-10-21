require 'rails_helper'

describe Image do
  it { should validate_presence_of :photo_file_name }
  it { should validate_presence_of :description }

  it { should belong_to :user }
end
