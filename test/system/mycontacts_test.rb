require "application_system_test_case"

class MycontactsTest < ApplicationSystemTestCase
  setup do
    @mycontact = mycontacts(:one)
  end

  test "visiting the index" do
    visit mycontacts_url
    assert_selector "h1", text: "Mycontacts"
  end

  test "should create mycontact" do
    visit mycontacts_url
    click_on "New mycontact"

    fill_in "Age", with: @mycontact.age
    fill_in "Mail", with: @mycontact.mail
    fill_in "Name", with: @mycontact.name
    check "Nationality" if @mycontact.nationality
    click_on "Create Mycontact"

    assert_text "Mycontact was successfully created"
    click_on "Back"
  end

  test "should update Mycontact" do
    visit mycontact_url(@mycontact)
    click_on "Edit this mycontact", match: :first

    fill_in "Age", with: @mycontact.age
    fill_in "Mail", with: @mycontact.mail
    fill_in "Name", with: @mycontact.name
    check "Nationality" if @mycontact.nationality
    click_on "Update Mycontact"

    assert_text "Mycontact was successfully updated"
    click_on "Back"
  end

  test "should destroy Mycontact" do
    visit mycontact_url(@mycontact)
    click_on "Destroy this mycontact", match: :first

    assert_text "Mycontact was successfully destroyed"
  end
end
