require 'test_helper'

class ProductTest < ActiveSupport::TestCase

  test "I can generate a product" do
    assert_not_nil(products(:milk))
  end

  test "The product answers its amount times unit" do
    expected_result = products(:milk).amount.to_s() + " x " + products(:milk).unit_name
    assert_equal(expected_result,products(:milk).getAmountXUnit)
  end

end
