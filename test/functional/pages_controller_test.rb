require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get about" do
    get :about
    assert_response :success
  end

  test "should get music" do
    get :music
    assert_response :success
  end

  test "should get video" do
    get :video
    assert_response :success
  end

  test "should get photos" do
    get :photos
    assert_response :success
  end

  test "should get gigs" do
    get :gigs
    assert_response :success
  end

  test "should get contact" do
    get :contact
    assert_response :success
  end

  test "should get mailing_list" do
    get :mailing_list
    assert_response :success
  end

  test "should get shop" do
    get :shop
    assert_response :success
  end

end
