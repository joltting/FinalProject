require 'test_helper'

class ActiveClassesControllerTest < ActionController::TestCase
  setup do
    @active_class = active_classes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:active_classes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create active_class" do
    assert_difference('ActiveClass.count') do
      post :create, active_class: { name: @active_class.name, number: @active_class.number, user: @active_class.user }
    end

    assert_redirected_to active_class_path(assigns(:active_class))
  end

  test "should show active_class" do
    get :show, id: @active_class
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @active_class
    assert_response :success
  end

  test "should update active_class" do
    patch :update, id: @active_class, active_class: { name: @active_class.name, number: @active_class.number, user: @active_class.user }
    assert_redirected_to active_class_path(assigns(:active_class))
  end

  test "should destroy active_class" do
    assert_difference('ActiveClass.count', -1) do
      delete :destroy, id: @active_class
    end

    assert_redirected_to active_classes_path
  end
end
