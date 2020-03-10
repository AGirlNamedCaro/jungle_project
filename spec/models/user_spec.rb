require 'rails_helper'

RSpec.describe User, type: :model do
 
  describe "Validations" do
  it "validates all attributes" do
    @user = User.create(email: "test@test.com", name: "User1", password: "12345", password_confirmation: "12345")
    expect(@user).to be_valid
  end
  it "password == password_confirmation" do 
    @user = User.create(email: "test@test.com", name: "User1", password: "12345", password_confirmation: "123")
    expect(@user).to_not be_valid
  end

  it "password & password_confirmation should not be blank" do 
    @user = User.create(email: "test@test.com", name: "User1", password: "", password_confirmation: "")
    expect(@user).to_not be_valid
  end

  it "Validates uniqueness of :email" do
    @user = User.create(email: "test@test.com", name: "User1", password: "123456", password_confirmation: "123456")
    @user2 = User.create(email: "test@test.com", name: "User1", password: "12345", password_confirmation: "12345")
    expect(@user2).to_not be_valid
  end

  it "validates the presence of :email" do
    @user = User.create(email: nil, name: "User1", password: "12345", password_confirmation: "12345")
    expect(@user).to_not be_valid
  end

  it "validates the presence of :name" do
    @user = User.create(email: "test@test.com", name: nil, password: "12345", password_confirmation: "12345")
    expect(@user).to_not be_valid
  end

  it "Length of the password must be minimum of 5 characters" do
    @user = User.create(email: "test@test.com", name: nil, password: "123", password_confirmation: "123")
    expect(@user).to_not be_valid
  end

  end

  describe '.authenticate_with_credentials' do

    @user = User.create(email: "test@test.com", name: "User1", password: "12345", password_confirmation: "12345")
    it 'Validates user authentication' do
     @session = @user.create.authenticate_with_credentials(email:  "test@test.com", password: "12345" )

    expect(@session).to eql(@user)
    end
  end
end





