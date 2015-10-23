require 'rails_helper'

RSpec.describe Dept, type: :model do

  describe "名前があれば適正" do
    subject { Dept.new(name: "taro") }
    it { should be_valid }
  end
  
  describe "名前が無ければ不適" do
    subject { Dept.new(name: nil) }
    it { should_not be_valid }
  end
  
end
