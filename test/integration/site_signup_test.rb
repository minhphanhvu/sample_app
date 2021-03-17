require 'test_helper'

class SiteSignupTest < ActionDispatch::IntegrationTest

  test "sign up page" do
    get signup_path
    assert_template 'users/new'
    assert_select "a[href=?]", root_path, count: 2
    assert_select "a[href=?]", help_path
    assert_select "a[href=?]", about_path
    assert_select "a[href=?]", contact_path
  end

end
