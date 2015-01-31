require 'test_helper'

class GamersControllerTest < ActionController::TestCase
  setup do
    @gamer = gamers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:gamers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create gamer" do
    assert_difference('Gamer.count') do
      post :create, gamer: { asymmetric: @gamer.asymmetric, bluffing: @gamer.bluffing, card_based: @gamer.card_based, chance: @gamer.chance, heavy_reading: @gamer.heavy_reading, kid_friendly: @gamer.kid_friendly, player_interaction: @gamer.player_interaction, quick_set_up: @gamer.quick_set_up, random_starting_state: @gamer.random_starting_state, requires_acting: @gamer.requires_acting, secret_info: @gamer.secret_info, theme: @gamer.theme, two_player: @gamer.two_player, user_name: @gamer.user_name }
    end

    assert_redirected_to gamer_path(assigns(:gamer))
  end

  test "should show gamer" do
    get :show, id: @gamer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @gamer
    assert_response :success
  end

  test "should update gamer" do
    patch :update, id: @gamer, gamer: { asymmetric: @gamer.asymmetric, bluffing: @gamer.bluffing, card_based: @gamer.card_based, chance: @gamer.chance, heavy_reading: @gamer.heavy_reading, kid_friendly: @gamer.kid_friendly, player_interaction: @gamer.player_interaction, quick_set_up: @gamer.quick_set_up, random_starting_state: @gamer.random_starting_state, requires_acting: @gamer.requires_acting, secret_info: @gamer.secret_info, theme: @gamer.theme, two_player: @gamer.two_player, user_name: @gamer.user_name }
    assert_redirected_to gamer_path(assigns(:gamer))
  end

  test "should destroy gamer" do
    assert_difference('Gamer.count', -1) do
      delete :destroy, id: @gamer
    end

    assert_redirected_to gamers_path
  end
end
