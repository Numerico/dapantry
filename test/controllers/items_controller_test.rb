require 'test_helper'

class ItemsControllerTest < ActionController::TestCase
  setup do
    @item = items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:items)
    assert_select "ul input[type='checkbox']", assigns(:items).count
    assert_select "ul input[checked]", 1
    
  end

  test "should create item" do
    assert_difference('Item.count') do
      post :create, item: { hay: @item.hay, name: @item.name }
    end

    assert_redirected_to items_path
  end

  test "should update item" do
    patch :update, id: @item, item: { hay: @item.hay, name: @item.name }
    assert_redirected_to item_path(assigns(:item))
  end

  test "should destroy item" do
    assert_difference('Item.count', -1) do
      delete :destroy, id: @item
    end

    assert_redirected_to items_path
  end
end
