require 'test_helper'

class PostingsControllerTest < ActionController::TestCase
  setup do
    @posting = postings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:postings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create posting" do
    assert_difference('Posting.count') do
      post :create, posting: { date: @posting.date, description: @posting.description, expires: @posting.expires, lattitude: @posting.lattitude, length_of_job: @posting.length_of_job, location: @posting.location, longitude: @posting.longitude, rate_of_pay: @posting.rate_of_pay, time: @posting.time, title: @posting.title }
    end

    assert_redirected_to posting_path(assigns(:posting))
  end

  test "should show posting" do
    get :show, id: @posting
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @posting
    assert_response :success
  end

  test "should update posting" do
    patch :update, id: @posting, posting: { date: @posting.date, description: @posting.description, expires: @posting.expires, lattitude: @posting.lattitude, length_of_job: @posting.length_of_job, location: @posting.location, longitude: @posting.longitude, rate_of_pay: @posting.rate_of_pay, time: @posting.time, title: @posting.title }
    assert_redirected_to posting_path(assigns(:posting))
  end

  test "should destroy posting" do
    assert_difference('Posting.count', -1) do
      delete :destroy, id: @posting
    end

    assert_redirected_to postings_path
  end
end
