require 'test_helper'

class TopsControllerTest < ActionDispatch::IntegrationTest
  
  test "should get home" do
    get root_path
    assert_response :success
    assert_select "title", "ZizyNonno Official Site"
  end
  
  test "should get about" do
    get about_path
    assert_response :success
    assert_select "title", "About | ZizyNonno Official Site"
  end
  
  test "should get portfolio" do
    get portfolio_path
    assert_response :success
    assert_select "title", "Portfolio | ZizyNonno Official Site"
  end
  
  test "should get contact" do
    get contact_path
    assert_response :success
    assert_select "title", "Contact | ZizyNonno Official Site"
  end
end
