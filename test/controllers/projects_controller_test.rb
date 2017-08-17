require 'test_helper'

class ProjectsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @project = projects(:one)
  end

  test "GET #index" do
    get projects_url
    assert_response :success
  end

  test "GET #new" do
    get new_project_url
    assert_response :success
  end

  test "POST #project" do
    assert_difference('Project.count') do
      post projects_url, params: { project: { name: @project.name, product_id: @project.product.id } }
    end

    assert_redirected_to project_url(Project.last)
  end

  test "GET #show" do
    get project_url(@project)
    assert_response :success
  end

  test "GET #get" do
    get edit_project_url(@project)
    assert_response :success
  end

  test "PATCH #update" do
    patch project_url(@project), params: { project: { name: @project.name } }
    assert_redirected_to project_url(@project)
  end

  test "DELETE #destroy" do
    assert_difference('Project.count', -1) do
      delete project_url(@project)
    end

    assert_redirected_to projects_url
  end
end
