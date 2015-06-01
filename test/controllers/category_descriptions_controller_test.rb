require 'test_helper'

class CategoryDescriptionsControllerTest < ActionController::TestCase
  setup do
    @category_description = category_descriptions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:category_descriptions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create category_description" do
    assert_difference('CategoryDescription.count') do
      post :create, category_description: { description: @category_description.description, name: @category_description.name }
    end

    assert_redirected_to category_description_path(assigns(:category_description))
  end

  test "should show category_description" do
    get :show, id: @category_description
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @category_description
    assert_response :success
  end

  test "should update category_description" do
    patch :update, id: @category_description, category_description: { description: @category_description.description, name: @category_description.name }
    assert_redirected_to category_description_path(assigns(:category_description))
  end

  test "should destroy category_description" do
    assert_difference('CategoryDescription.count', -1) do
      delete :destroy, id: @category_description
    end

    assert_redirected_to category_descriptions_path
  end
end
