require 'rails_helper'

RSpec.describe Dislike, type: :model do
  describe "validations" do
    it { is_expected.to belong_to(:dislikeable) }
  end
end
