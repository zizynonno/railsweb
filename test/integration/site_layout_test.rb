require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest
  test "layout links" do
    get root_path
    assert_template '/'
    assert_select "a[href=?]", root_path, count: 3
    assert_select "a[href=?]", portfolio_path
    assert_select "a[href=?]", about_path
    assert_select "a[href=?]", contact_path
  end
end
