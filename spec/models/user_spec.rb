require 'rails_helper'

describe User do
  describe 'phone validation' do
    it 'is valid when 10 digits' do
      user = User.new(
        name: "Pancrasio",
        email: "pancra@email.com",
        phone: "6578909090",
        password: "aleluya"
      )
      expect(user.valid?).to eq(true)
    end

    it 'is valid when not 10 digits' do
      user = User.new(
        name: "Pancrasio",
        email: "pancra@email.com",
        phone: "ffff578909090",
        password: "aleluya"
      )
      expect(user.valid?).to eq(false)
      expect(user.errors[:phone]).to eq(['is invalid'])
      # raise user.errors[:phone].inspect
    end
  end
end
