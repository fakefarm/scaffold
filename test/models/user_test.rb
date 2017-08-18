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

  test "has many activities" do
    @user = users(:one)
    assert @user.activities
  end
  
  test "has many details" do
    @user = users(:one)
    assert @user.details
  end

  test "has many products" do
    @user = users(:one)
    assert @user.products
  end

  test "has many projects" do
    @user = users(:one)
    assert @user.projects
  end

  test "has many retros" do
    @user = users(:one)
    assert @user.retros
  end

  test "has many tasks" do
    @user = users(:one)
    assert @user.tasks
  end

end
