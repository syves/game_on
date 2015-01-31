require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  setup do
    @user = users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user" do
    assert_difference('User.count') do
      post :create, user: { asymmetric: @user.asymmetric, bluffing: @user.bluffing, card_based: @user.card_based, chance: @user.chance, email: @user.email, heavy_reading: @user.heavy_reading, kid_friendly: @user.kid_friendly, player_interaction: @user.player_interaction, quick_set_up: @user.quick_set_up, random_starting_state: @user.random_starting_state, requires_acting: @user.requires_acting, secret_info: @user.secret_info, theme: @user.theme, two_player: @user.two_player, user_name: @user.user_name }
    end

    assert_redirected_to user_path(assigns(:user))
  end

  test "should show user" do
    get :show, id: @user
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user
    assert_response :success
  end

  test "should update user" do
    patch :update, id: @user, user: { asymmetric: @user.asymmetric, bluffing: @user.bluffing, card_based: @user.card_based, chance: @user.chance, email: @user.email, heavy_reading: @user.heavy_reading, kid_friendly: @user.kid_friendly, player_interaction: @user.player_interaction, quick_set_up: @user.quick_set_up, random_starting_state: @user.random_starting_state, requires_acting: @user.requires_acting, secret_info: @user.secret_info, theme: @user.theme, two_player: @user.two_player, user_name: @user.user_name }
    assert_redirected_to user_path(assigns(:user))
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete :destroy, id: @user
    end

    assert_redirected_to users_path
  end
end
