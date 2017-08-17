require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  test 'is invalid without a valid name' do
    p = Product.new
    assert_equal p.valid?, false
  end

  test 'valid with a name' do
    p = Product.create(name: 'scaffold')
    assert_equal p.valid?, true
  end
end
