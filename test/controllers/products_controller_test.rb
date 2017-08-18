require 'test_helper'

class ProductsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @product = products(:one)
  end

  test "GET index" do
    get products_url
    assert_response :success
  end

  test "GET new" do
    get new_product_url
    assert_response :success
  end

  test "POST product" do
    assert_difference('Product.count') do
      post products_url, params: { product: { name: @product.name, user_id: @product.user.id } }
    end

    assert_redirected_to product_url(Product.last)
  end

  test "GET product" do
    get product_url(@product)
    assert_response :success
  end

  test "GET edit" do
    get edit_product_url(@product)
    assert_response :success
  end

  test "PATCH product" do
    patch product_url(@product), params: { product: { name: @product.name } }
    assert_redirected_to product_url(@product)
  end

  test "DELETE product" do
    assert_difference('Product.count', -1) do
      delete product_url(@product)
    end

    assert_redirected_to products_url
  end
end
