require 'rails_helper'

RSpec.describe Product, type: :model do
  it { should have_many(:images) }

  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:category) }
  it { should validate_presence_of(:price) }
end
