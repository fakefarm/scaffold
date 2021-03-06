require 'test_helper'

class TaskTest < ActiveSupport::TestCase
  setup do
    @task = tasks(:invalid)
  end

  test 'is invalid without a title' do
    assert_equal @task.valid?, false
  end

  test 'valid with a title' do
    @task.title = 'build this baby'
    assert_equal @task.valid?, true
  end

  test "has many details" do
    skip
    @task = tasks(:one)
    assert @task.details
  end
end
