require 'test_helper'

class NoteTest < ActiveSupport::TestCase
  setup do
    @note = notes(:invalid)
  end

  test 'is invalid without a body' do
    assert_equal @note.valid?, false
  end

  test 'is invalid without a note type' do
    assert_equal @note.valid?, false
  end

  test 'valid with a body and note type' do
    @note.body = 'learn to love the Law of God'
    @note.type = 'learn to love the Law of God'
    assert_equal @note.valid?, true
  end
end
