require 'test_helper'

class TaskTest < ActiveSupport::TestCase
  setup do
    @task = tasks(:invalid)
  end

  test 'is invalid without a title' do
    assert_equal @task.valid?, false
  end

  test 'valid with all attributes' do
    @task.title = 'build this baby'
    assert_equal @task.valid?, true
  end
end
