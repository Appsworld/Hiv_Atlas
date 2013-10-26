require 'test_helper'

class CreateClassifiedAdsControllerTest < ActionController::TestCase
  setup do
    @create_classified_ad = create_classified_ads(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:create_classified_ads)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create create_classified_ad" do
    assert_difference('CreateClassifiedAd.count') do
      post :create, create_classified_ad: { Make_this_post_private: @create_classified_ad.Make_this_post_private, add_text: @create_classified_ad.add_text, add_title: @create_classified_ad.add_title, category: @create_classified_ad.category, country: @create_classified_ad.country, state: @create_classified_ad.state, user_id: @create_classified_ad.user_id }
    end

    assert_redirected_to create_classified_ad_path(assigns(:create_classified_ad))
  end

  test "should show create_classified_ad" do
    get :show, id: @create_classified_ad
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @create_classified_ad
    assert_response :success
  end

  test "should update create_classified_ad" do
    put :update, id: @create_classified_ad, create_classified_ad: { Make_this_post_private: @create_classified_ad.Make_this_post_private, add_text: @create_classified_ad.add_text, add_title: @create_classified_ad.add_title, category: @create_classified_ad.category, country: @create_classified_ad.country, state: @create_classified_ad.state, user_id: @create_classified_ad.user_id }
    assert_redirected_to create_classified_ad_path(assigns(:create_classified_ad))
  end

  test "should destroy create_classified_ad" do
    assert_difference('CreateClassifiedAd.count', -1) do
      delete :destroy, id: @create_classified_ad
    end

    assert_redirected_to create_classified_ads_path
  end
end
