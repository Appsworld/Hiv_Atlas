require 'test_helper'

class CreateEventsControllerTest < ActionController::TestCase
  setup do
    @create_event = create_events(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:create_events)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create create_event" do
    assert_difference('CreateEvent.count') do
      post :create, create_event: { Make_event_private: @create_event.Make_event_private, body: @create_event.body, country: @create_event.country, from_date: @create_event.from_date, location: @create_event.location, title: @create_event.title, to_date: @create_event.to_date, user_id: @create_event.user_id }
    end

    assert_redirected_to create_event_path(assigns(:create_event))
  end

  test "should show create_event" do
    get :show, id: @create_event
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @create_event
    assert_response :success
  end

  test "should update create_event" do
    put :update, id: @create_event, create_event: { Make_event_private: @create_event.Make_event_private, body: @create_event.body, country: @create_event.country, from_date: @create_event.from_date, location: @create_event.location, title: @create_event.title, to_date: @create_event.to_date, user_id: @create_event.user_id }
    assert_redirected_to create_event_path(assigns(:create_event))
  end

  test "should destroy create_event" do
    assert_difference('CreateEvent.count', -1) do
      delete :destroy, id: @create_event
    end

    assert_redirected_to create_events_path
  end
end
