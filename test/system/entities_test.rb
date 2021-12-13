require "application_system_test_case"

class EntitiesTest < ApplicationSystemTestCase
  setup do
    @entity = entities(:one)
  end

  test "visiting the index" do
    visit entities_url
    assert_selector "h1", text: "Entities"
  end

  test "creating a Entity" do
    visit entities_url
    click_on "New Entity"

    fill_in "Address", with: @entity.address
    fill_in "County", with: @entity.county
    fill_in "Description", with: @entity.description
    fill_in "Email", with: @entity.email
    fill_in "Fax", with: @entity.fax
    fill_in "Industry", with: @entity.industry
    fill_in "Name", with: @entity.name
    fill_in "Phone", with: @entity.phone
    fill_in "Website", with: @entity.website
    click_on "Create Entity"

    assert_text "Entity was successfully created"
    click_on "Back"
  end

  test "updating a Entity" do
    visit entities_url
    click_on "Edit", match: :first

    fill_in "Address", with: @entity.address
    fill_in "County", with: @entity.county
    fill_in "Description", with: @entity.description
    fill_in "Email", with: @entity.email
    fill_in "Fax", with: @entity.fax
    fill_in "Industry", with: @entity.industry
    fill_in "Name", with: @entity.name
    fill_in "Phone", with: @entity.phone
    fill_in "Website", with: @entity.website
    click_on "Update Entity"

    assert_text "Entity was successfully updated"
    click_on "Back"
  end

  test "destroying a Entity" do
    visit entities_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Entity was successfully destroyed"
  end
end
