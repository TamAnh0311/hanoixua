require 'test_helper'

class HomepageControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get homepage_home_url
    assert_response :success
  end

  test "should get menu" do
    get homepage_menu_url
    assert_response :success
  end

  test "should get gallery" do
    get homepage_gallery_url
    assert_response :success
  end

  test "should get blog" do
    get homepage_blog_url
    assert_response :success
  end

  test "should get about" do
    get homepage_about_url
    assert_response :success
  end

end
