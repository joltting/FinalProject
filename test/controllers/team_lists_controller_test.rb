require 'test_helper'

class TeamListsControllerTest < ActionController::TestCase
  setup do
    @team_list = team_lists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:team_lists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create team_list" do
    assert_difference('TeamList.count') do
      post :create, team_list: { name: @team_list.name }
    end

    assert_redirected_to team_list_path(assigns(:team_list))
  end

  test "should show team_list" do
    get :show, id: @team_list
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @team_list
    assert_response :success
  end

  test "should update team_list" do
    patch :update, id: @team_list, team_list: { name: @team_list.name }
    assert_redirected_to team_list_path(assigns(:team_list))
  end

  test "should destroy team_list" do
    assert_difference('TeamList.count', -1) do
      delete :destroy, id: @team_list
    end

    assert_redirected_to team_lists_path
  end
end
