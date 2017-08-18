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

  test 'has many tasks' do
    product = products(:one)
    assert product.tasks
  end

  test 'has many projects' do
    product = products(:one)
    assert product.projects
  end

  test "has many activities" do
    @product = products(:one)
    assert @product.activities
  end

  test "has many details" do
    skip
    @product = products(:one)
    assert @product.details
  end
end
