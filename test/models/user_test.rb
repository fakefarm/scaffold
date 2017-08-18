require 'test_helper'

class UserTest < ActiveSupport::TestCase
    setup do
      @user = users(:invalid)
    end

    test 'is invalid without a first_name' do
      assert_equal @user.valid?, false
    end

    test 'is invalid without a last_name' do
      assert_equal @user.valid?, false
    end

    test 'is invalid without an email' do
      assert_equal @user.valid?, false
    end

    test 'valid with all attributes' do
      attributes = { first_name: 'Dave', last_name: 'Woodall', email: 'dave@woodalls.me'}
      @user.update_attributes(attributes)
      assert_equal @user.valid?, true
    end
end
