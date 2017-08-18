require 'test_helper'

class ProjectTest < ActiveSupport::TestCase
  setup do
    @project = projects(:invalid)
  end

  test "invalid without a name" do
    assert_equal @project.valid?, false
  end

  test 'valid with a name' do
    @project.name = 'Lay down the scaffold'
    assert_equal @project.valid?, true
  end

  test "has many details" do
    @project = projects(:one)
    assert @project.details
  end

  test "has one retro" do
    @project = projects(:one)
    assert @project.retro
  end

  test "has many tasks" do
    @project = projects(:one)
    assert @project.tasks
  end
end
