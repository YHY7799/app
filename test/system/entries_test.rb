require "application_system_test_case"

class EntriesTest < ApplicationSystemTestCase
  setup do
    @entry = entries(:one)
  end

  test "visiting the index" do
    visit entries_url
    assert_selector "h1", text: "Entries"
  end

  test "should create entry" do
    visit entries_url
    click_on "New entry"

    fill_in "Appartment", with: @entry.appartment
    fill_in "Durat", with: @entry.durat
    fill_in "Flat", with: @entry.flat
    fill_in "Join", with: @entry.join
    fill_in "Name", with: @entry.name
    fill_in "Phone", with: @entry.phone
    click_on "Create Entry"

    assert_text "Entry was successfully created"
    click_on "Back"
  end

  test "should update Entry" do
    visit entry_url(@entry)
    click_on "Edit this entry", match: :first

    fill_in "Appartment", with: @entry.appartment
    fill_in "Durat", with: @entry.durat
    fill_in "Flat", with: @entry.flat
    fill_in "Join", with: @entry.join
    fill_in "Name", with: @entry.name
    fill_in "Phone", with: @entry.phone
    click_on "Update Entry"

    assert_text "Entry was successfully updated"
    click_on "Back"
  end

  test "should destroy Entry" do
    visit entry_url(@entry)
    click_on "Destroy this entry", match: :first

    assert_text "Entry was successfully destroyed"
  end
end