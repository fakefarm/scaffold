require 'test_helper'

class Note::TaskTest < ActiveSupport::TestCase
  setup do
    @note = notes(:task)
  end

  test "A note that is attached to a task type" do
    assert @note.valid?
  end

  test "type is a Task" do
    assert_equal 'Note::Task', @note.type
  end
end
