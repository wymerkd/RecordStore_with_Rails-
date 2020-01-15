require 'rails_helper'

describe Album do
  it { should have_many(:songs) }
  it { should have_and_belong_to_many :artists }
  it { should validate_presence_of :name }
end
