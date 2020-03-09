require 'rails_helper'

RSpec.describe Product, type: :model do
 describe "Validations" do
  it 'is valid with all attributes' do
    @category = Category.create(name: "TECH")
    @product = Product.create(name: "APPLE", description: "Something", image:"cat", price_cents: "20", quantity: "50", created_at: "some random time", updated_at: "some other time" ,category: @category)
    expect(@product).to be_valid
  end
  it 'validates :name, presence: true' do 
    @category = Category.create(name: "TECH")
    @product = Product.create(name: nil , description: "Something", image:"cat", price_cents: "20", quantity: "50", created_at: "some random time", updated_at: "some other time" ,category: @category)
    expect(@product).to_not be_valid
  end
  it 'validates :price, presence: true' do 
    @category = Category.create(name: "TECH")
    @product = Product.create(name: "Apple" , description: "Something", image:"cat", price_cents: nil, quantity: "50", created_at: "some random time", updated_at: "some other time" ,category: @category)
    expect(@product).to_not be_valid
  end
  it 'validates :quantity, presence: true' do 
    @category = Category.create(name: "TECH")
    @product = Product.create(name: nil , description: "Something", image:"cat", price_cents: "20", quantity: nil, created_at: "some random time", updated_at: "some other time" ,category: @category)
    expect(@product).to_not be_valid
  end
  it 'validates :category, presence: true' do 
    @product = Product.create(name: "Apple" , description: "Something", image:"cat", price_cents: "20", quantity: "50", created_at: "some random time", updated_at: "some other time" ,category: nil)
    expect(@product).to_not be_valid
  end
 end
end
