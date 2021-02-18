require "test_helper"

class WelcomeControllerTest < ActionDispatch::IntegrationTest



  # Index method test
  test "should get index" do
    get welcome_index_url
    assert_response :success
    assert_select "title", "Ruby on Rails Tutorial Sample App"
  end
  
  # Help method test
  test "should get help" do
    get welcome_help_url
    assert_response :success
    assert_select "title", "Help | #{@base_title}"
  end

  # About method test
  test "should get about" do
    get welcome_about_url
    assert_response :success
    assert_select "title", "About | #{@base_title}"
  end

  # About method contact
    test "should get contact" do
      get welcome_contact_url
      assert_response :success
      assert_select "title", "About | #{@base_title}"
    end
end
