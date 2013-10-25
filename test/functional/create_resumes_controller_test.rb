require 'test_helper'

class CreateResumesControllerTest < ActionController::TestCase
  setup do
    @create_resume = create_resumes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:create_resumes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create create_resume" do
    assert_difference('CreateResume.count') do
      post :create, create_resume: { body: @create_resume.body, country: @create_resume.country, job_status: @create_resume.job_status, language: @create_resume.language, location: @create_resume.location, make_post_private: @create_resume.make_post_private, profession: @create_resume.profession, title: @create_resume.title, user_id: @create_resume.user_id }
    end

    assert_redirected_to create_resume_path(assigns(:create_resume))
  end

  test "should show create_resume" do
    get :show, id: @create_resume
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @create_resume
    assert_response :success
  end

  test "should update create_resume" do
    put :update, id: @create_resume, create_resume: { body: @create_resume.body, country: @create_resume.country, job_status: @create_resume.job_status, language: @create_resume.language, location: @create_resume.location, make_post_private: @create_resume.make_post_private, profession: @create_resume.profession, title: @create_resume.title, user_id: @create_resume.user_id }
    assert_redirected_to create_resume_path(assigns(:create_resume))
  end

  test "should destroy create_resume" do
    assert_difference('CreateResume.count', -1) do
      delete :destroy, id: @create_resume
    end

    assert_redirected_to create_resumes_path
  end
end
