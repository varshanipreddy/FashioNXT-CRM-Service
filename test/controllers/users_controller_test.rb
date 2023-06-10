require "test_helper"

class UsersControllerTest < ActionDispatch::IntegrationTest

  test "should get new" do
    get '/'
    assert_response :success
  end

  test "assert fail for unauthenticated user" do
    get '/dashboard'
    assert :fail
  end

  # test "assert fail for unauthenticated user with creds" do
  #   post '/users' #login_params: {email: "test@test.com", password: "test123" }

  #   assert :success
  end
