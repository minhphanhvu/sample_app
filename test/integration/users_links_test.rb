require 'test_helper'

class UsersLinksTest < ActionDispatch::IntegrationTest

  def setup
    @user = users(:michael)
  end

  test "layouts as non-logged-in users" do
    get root_path
    assert_template 'static_pages/home'
    assert_select "a[href=?]", users_path, count: 0
    assert_select "a[href=?]", login_path, count: 1
  end

  test "layouts as logged-in users" do
    log_in_as(@user)
    get root_path
    assert_template 'static_pages/home'
    assert_select "a[href=?]", users_path, count: 1
    assert_select "a[href=?]", login_path, count: 0
    get users_path
    assert_template 'users/index'
    assert_select "img", count: 15
  end

end
