require 'test_helper'

class Note::ProductTest < ActiveSupport::TestCase
  setup do
    @note = notes(:product)
  end

  test "A note that is attached to a product type" do
    assert @note.valid?
  end

  test "type is a Product" do
    assert_equal 'Note::Product', @note.type
  end
end
