require 'rails_helper'

RSpec.describe Happening, type: :model do
  describe "validations" do
    it { is_expected.to have_many(:comments) }
    it { is_expected.to have_many(:likes) }
    it { is_expected.to have_many(:dislikes) }
  end
end
