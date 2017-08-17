require 'test_helper'

class ProjectTest < ActiveSupport::TestCase
  test "invalid without a name" do
    p = Project.new
    assert_equal p.valid?, false
  end
  test 'valid with a name' do
    product = products(:one)
    p = Project.new(name: 'Lay down the scaffold', product_id: product.id)
    assert_equal p.valid?, true
  end
end
