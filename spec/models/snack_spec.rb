require 'rails_helper'

RSpec.describe Snack, type: :model do
  context "validations" do
    it "is invalid without attributes" do
      snack = Snack.create()

      expect(snack).to_not be_valid
    end
  end
end
