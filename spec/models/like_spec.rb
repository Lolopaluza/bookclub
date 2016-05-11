require 'rails_helper'

RSpec.describe Like, type: :model do
  describe "validations" do
    it { is_expected.to belong_to(:likeable) }
  end
end
