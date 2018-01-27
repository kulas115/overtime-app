require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @user = FactoryGirl.create(:user)
  end
  describe "creation" do
    it "can be created" do
      expect(@user).to be_valid
    end
  end

  describe "validations" do
    it "cannot be created without first_name" do
      @user.first_name = nil
      expect(@user).to_not be_valid
    end

    it "cannot be created without last_name" do
      @user.last_name = nil
      expect(@user).to_not be_valid
    end

    it "cannot be created without phone" do
      @user.phone = nil
      expect(@user).to_not be_valid
    end

    it 'requires the phone attr to only contain integers' do
      @user.phone = "mygreatstrr" #11 characters as per Polish numbers
      expect(@user).to_not be_valid
    end

    it 'requires the phone attr to only have 11 chars' do
      @user.phone = "123456789012" #11 characters as per Polish numbers
      expect(@user).to_not be_valid
    end

    it 'requires ssn attr ' do
      @user.ssn = nil
      expect(@user).to_not be_valid
    end

    it 'requires the ssn attr to only contain integers' do
      @user.phone = "mygreatstrr" #11 characters as per Polish numbers
      expect(@user).to_not be_valid
    end

    it 'requires the ssn attr to only have 4 chars' do
      @user.phone = "12345" #11 characters as per Polish numbers
      expect(@user).to_not be_valid
    end

    it 'requires a company' do
      @user.company = nil
      expect(@user).to_not be_valid
    end


  end

  describe 'custom name methods' do
    it 'has a full name method that combines first and last name' do
      expect(@user.full_name).to eq("ROGERS, NORVILLE")
    end
  end

  describe 'relationship between admins and employees' do
    it 'allows for admins to be associated with multiple employees' do
      employee_1 = FactoryGirl.create(:user)
      employee_2 = FactoryGirl.create(:user)
      admin      = FactoryGirl.create(:admin_user)
      Hand.create!(user_id: admin.id, hand_id: employee_1.id)
      Hand.create!(user_id: admin.id, hand_id: employee_2.id)

      expect(admin.hands.count).to eq(2)

    end
  end
end
