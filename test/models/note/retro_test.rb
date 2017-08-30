require 'test_helper'

class Note::RetroTest < ActiveSupport::TestCase
  setup do
    @note = notes(:retro)
  end

  test "A note that is attached to a retro type" do
    assert @note.valid?
  end

  test "type is a Retro" do
    assert_equal 'Note::Retro', @note.type
  end
end
