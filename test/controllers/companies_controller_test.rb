require 'test_helper'

class CompaniesControllerTest < ActionController::TestCase
  setup do
    @company = companies(:one)
  end

  test "should get index" do
   # get '/companies'
   # assert_response :success
   # assert_not_nil assigns(:companies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create company" do
    # assert_difference('Company.count') do
    #   post :create, params: {company: { manager: @company.manager, name: @company.name, status: @company.status, terms: @company.terms }}
    # end

    # assert_redirected_to company_path(assigns(:company))
  end

  test "should show company" do
    get :show, params: { id: @company }
    assert_response :success
  end

  test "should get edit" do
    get :edit, params: { id: @company }
    assert_response :success
  end

  test "should update company" do
    patch :update, params: { id: @company , company: { manager: @company.manager, name: @company.name, status: @company.status, terms: @company.terms }}
    assert_redirected_to company_path(assigns(:company))
  end

  test "should destroy company" do
    assert_difference('Company.count', -1) do
      delete :destroy, params: { id: @company }
    end

    assert_redirected_to companies_path
  end
end
