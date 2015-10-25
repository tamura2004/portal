require 'rails_helper'

RSpec.describe User, type: :model do
  describe "#password=" do
    example "セッターに文字列を与えると、hashed_passwordに長さ60の文字列が格納される" do
      user = User.new
      user.password = "openinfra1234"
      expect(user.hashed_password).to be_kind_of(String)
      expect(user.hashed_password.size).to eq(60)
    end

    example "nilを与えると、hased_passwordはnilになる" do
      user = User.new
      user.password = nil
      expect(user.hashed_password).to be_nil
    end

  end
end
