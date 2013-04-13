require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  NAME = "Milk"
  AMOUNT = 2
  UNIT = "Brick"
  milkyProduct = Product.new(NAME,AMOUNT,UNIT)

  test "I can generate a product" do
    assert_not_nil(milkyProduct)
  end

  test "The product answers its amount times unit" do
    assert_equal("#{AMOUNT} x #{UNIT}",milkyProduct.getAmountXUnit())
  end

end
