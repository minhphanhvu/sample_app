require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest

  def setup
    @base_title = "Ruby on Rails Tutorial Sample App"
  end

  test "should get root" do
    get root_path
    assert_response :success
    assert_select "title", "#{@base_title}"
  end

  test "should get home" do
    get static_pages_home_url
    assert_response :success
    assert_select "title", "#{@base_title}"
  end

  test "should get help" do
    get help_url
    assert_response :success
    assert_select "title", "Help"
  end

  test "should get about" do
    get about_url
    assert_response :success
    assert_select "title", "About"
  end

  test "shoulg get contact" do
    get contact_url
    assert_response :success
    assert_select "title", "Contact"
  end
end
