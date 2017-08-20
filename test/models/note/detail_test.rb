require 'test_helper'

class Note::DetailTest < ActiveSupport::TestCase
  setup do
    @note = notes(:detail)
  end

  test "A note that is attached to a detail type" do
    assert @note.valid?
  end

  test "type is a Detail" do
    assert_equal 'Note::Detail', @note.type
  end
end
