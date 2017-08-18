require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  setup do
    @product = products(:invalid)
  end

  test 'is invalid without a name' do
    assert_equal @product.valid?, false
  end

  test 'valid with a name' do
    @product.name = 'scaffold'
    assert_equal @product.valid?, true
  end
end
