require 'test_helper'

class CreateJobPostsControllerTest < ActionController::TestCase
  setup do
    @create_job_post = create_job_posts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:create_job_posts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create create_job_post" do
    assert_difference('CreateJobPost.count') do
      post :create, create_job_post: { Make_post_private: @create_job_post.Make_post_private, city: @create_job_post.city, contact_person: @create_job_post.contact_person, country: @create_job_post.country, country: @create_job_post.country, deadline_date: @create_job_post.deadline_date, deadline_time: @create_job_post.deadline_time, description: @create_job_post.description, email: @create_job_post.email, enabled: @create_job_post.enabled, job_title: @create_job_post.job_title, location: @create_job_post.location, name: @create_job_post.name, state: @create_job_post.state, true: @create_job_post.true, user_id: @create_job_post.user_id, website_url: @create_job_post.website_url }
    end

    assert_redirected_to create_job_post_path(assigns(:create_job_post))
  end

  test "should show create_job_post" do
    get :show, id: @create_job_post
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @create_job_post
    assert_response :success
  end

  test "should update create_job_post" do
    put :update, id: @create_job_post, create_job_post: { Make_post_private: @create_job_post.Make_post_private, city: @create_job_post.city, contact_person: @create_job_post.contact_person, country: @create_job_post.country, country: @create_job_post.country, deadline_date: @create_job_post.deadline_date, deadline_time: @create_job_post.deadline_time, description: @create_job_post.description, email: @create_job_post.email, enabled: @create_job_post.enabled, job_title: @create_job_post.job_title, location: @create_job_post.location, name: @create_job_post.name, state: @create_job_post.state, true: @create_job_post.true, user_id: @create_job_post.user_id, website_url: @create_job_post.website_url }
    assert_redirected_to create_job_post_path(assigns(:create_job_post))
  end

  test "should destroy create_job_post" do
    assert_difference('CreateJobPost.count', -1) do
      delete :destroy, id: @create_job_post
    end

    assert_redirected_to create_job_posts_path
  end
end
