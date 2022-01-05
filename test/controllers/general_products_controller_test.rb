require "test_helper"

class GeneralProductsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @general_product = general_products(:one)
  end

  test "should get index" do
    get general_products_url
    assert_response :success
  end

  test "should get new" do
    get new_general_product_url
    assert_response :success
  end

  test "should create general_product" do
    assert_difference('GeneralProduct.count') do
      post general_products_url, params: { general_product: { description: @general_product.description, name: @general_product.name, price: @general_product.price } }
    end

    assert_redirected_to general_product_url(GeneralProduct.last)
  end

  test "should show general_product" do
    get general_product_url(@general_product)
    assert_response :success
  end

  test "should get edit" do
    get edit_general_product_url(@general_product)
    assert_response :success
  end

  test "should update general_product" do
    patch general_product_url(@general_product), params: { general_product: { description: @general_product.description, name: @general_product.name, price: @general_product.price } }
    assert_redirected_to general_product_url(@general_product)
  end

  test "should destroy general_product" do
    assert_difference('GeneralProduct.count', -1) do
      delete general_product_url(@general_product)
    end

    assert_redirected_to general_products_url
  end
end
