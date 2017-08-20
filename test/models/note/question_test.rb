require 'test_helper'

class Note::QuestionTest < ActiveSupport::TestCase
  setup do
    @note = notes(:question)
  end

  test "A note that is attached to a question type" do
    assert @note.valid?
  end

  test "type is a Question" do
    assert_equal 'Note::Question', @note.type
  end
end
