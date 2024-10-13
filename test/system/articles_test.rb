# test/system/articles_test.rb
require "application_system_test_case"

class ArticlesTest < ApplicationSystemTestCase
  setup do
    @admin = users(:admin)
    @article = articles(:one)
  end

  test "visiting the index" do
    visit articles_url
    assert_selector "h1", text: "Articles"
  end

  test "creating an article" do
    sign_in @admin
    visit articles_url
    click_on "New Article"

    fill_in "Title", with: @article.title
    fill_in "Content", with: @article.content
    click_on "Create Article"

    assert_text "Article was successfully created"
  end

  test "updating an article" do
    sign_in @admin
    visit article_url(@article)
    click_on "Edit", match: :first

    fill_in "Title", with: @article.title
    fill_in "Content", with: @article.content
    click_on "Update Article"

    assert_text "Article was successfully updated"
  end

  test "destroying an article" do
    sign_in @admin
    visit article_url(@article)
    click_on "Destroy", match: :first

    assert_text "Article was successfully destroyed"
  end
end