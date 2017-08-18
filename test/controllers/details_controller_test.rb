require 'test_helper'

class DetailsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @detail = details(:one)
  end

  test "GET index" do
    get details_url
    assert_response :success
  end

  test "GET new" do
    get new_detail_url
    assert_response :success
  end

  test "POST detail" do
    assert_difference('Detail.count') do
      post details_url, params: { detail: { completed: @detail.completed, product_id: @detail.product_id, project_id: @detail.project_id, task_id: @detail.task_id, title: @detail.title, user_id: @detail.user_id } }
    end

    assert_redirected_to detail_url(Detail.last)
  end

  test "GET detail" do
    get detail_url(@detail)
    assert_response :success
  end

  test "GET edit" do
    get edit_detail_url(@detail)
    assert_response :success
  end

  test "PATCH detail" do
    patch detail_url(@detail), params: { detail: { completed: @detail.completed, completed_date: @detail.completed_date, product_id: @detail.product_id, project_id: @detail.project_id, task_id: @detail.task_id, title: @detail.title, user_id: @detail.user_id } }
    assert_redirected_to detail_url(@detail)
  end

  test "DELETE detail" do
    assert_difference('Detail.count', -1) do
      delete detail_url(@detail)
    end

    assert_redirected_to details_url
  end
end
