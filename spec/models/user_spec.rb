require 'rails_helper'

RSpec.describe User, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  describe "creation" do
    before do 
      @user = User.create(email: "test1@test.com", password: "badass", password_confirmation: "badass", first_name: "Jon", last_name: "Snow")
    end

    it "can be created" do      
      expect(@user).to be_valid
    end

    it "cannot be created without first_name, last_name" do 
      @user.first_name = nil
      @user.last_name = nil
      expect(@user).to_not be_valid
    end
  end

  describe "custom name methods" do
    it "has a full name method that combines first and last name" do
      expect(@user.full_name).to eq("SNOW, JON")
    end
  end
end
