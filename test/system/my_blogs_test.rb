require "application_system_test_case"

class MyBlogsTest < ApplicationSystemTestCase
  setup do
    @my_blog = my_blogs(:one)
  end

  test "visiting the index" do
    visit my_blogs_url
    assert_selector "h1", text: "My Blogs"
  end

  test "creating a My blog" do
    visit my_blogs_url
    click_on "New My Blog"

    fill_in "Body", with: @my_blog.body
    fill_in "Title", with: @my_blog.title
    click_on "Create My blog"

    assert_text "My blog was successfully created"
    click_on "Back"
  end

  test "updating a My blog" do
    visit my_blogs_url
    click_on "Edit", match: :first

    fill_in "Body", with: @my_blog.body
    fill_in "Title", with: @my_blog.title
    click_on "Update My blog"

    assert_text "My blog was successfully updated"
    click_on "Back"
  end

  test "destroying a My blog" do
    visit my_blogs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "My blog was successfully destroyed"
  end
end
