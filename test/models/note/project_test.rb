require 'test_helper'

class Note::ProjectTest < ActiveSupport::TestCase
  setup do
    @note = notes(:project)
  end

  test "A note that is attached to a project type" do
    assert @note.valid?
  end

  test "type is a Project" do
    assert_equal 'Note::Project', @note.type
  end
end
