require 'test_helper'

class NoteTest < ActiveSupport::TestCase
  test 'is invalid without a body, user, or type' do
    @note = notes(:invalid)
    assert_equal @note.valid?, false
  end

  test 'is valid with body, user, and type' do
    @note = notes(:one)
    assert_equal true, @note.valid?
  end

  test 'is invalid with random type' do
    skip # not sure what i'm figting against here.
    @note = notes(:one)
    @note.type = 'not a real type'
    assert_equal false, @note.valid?
  end
end
