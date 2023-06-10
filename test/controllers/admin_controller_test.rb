require "test_helper"

class AdminControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  test "assert fail for unauthenticated user" do
    get '/admin'
    assert :fail
  end
end



#admin_controller_test