require 'test_helper'

class DetailTest < ActiveSupport::TestCase
  setup do
    @detail = details(:invalid)
  end

  test 'is invalid without a title' do
    assert_equal @detail.valid?, false
  end

  test 'valid with a title' do
    @detail.title = 'learn to love the Law of God'
    assert_equal @detail.valid?, true
  end
end
