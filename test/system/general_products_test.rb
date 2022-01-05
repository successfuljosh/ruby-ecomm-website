require "application_system_test_case"

class GeneralProductsTest < ApplicationSystemTestCase
  setup do
    @general_product = general_products(:one)
  end

  test "visiting the index" do
    visit general_products_url
    assert_selector "h1", text: "General Products"
  end

  test "creating a General product" do
    visit general_products_url
    click_on "New General Product"

    fill_in "Description", with: @general_product.description
    fill_in "Name", with: @general_product.name
    fill_in "Price", with: @general_product.price
    click_on "Create General product"

    assert_text "General product was successfully created"
    click_on "Back"
  end

  test "updating a General product" do
    visit general_products_url
    click_on "Edit", match: :first

    fill_in "Description", with: @general_product.description
    fill_in "Name", with: @general_product.name
    fill_in "Price", with: @general_product.price
    click_on "Update General product"

    assert_text "General product was successfully updated"
    click_on "Back"
  end

  test "destroying a General product" do
    visit general_products_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "General product was successfully destroyed"
  end
end
