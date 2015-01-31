require 'test_helper'

class GamesControllerTest < ActionController::TestCase
  setup do
    @game = games(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:games)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create game" do
    assert_difference('Game.count') do
      post :create, game: { asymmetric: @game.asymmetric, bluffing: @game.bluffing, card_based: @game.card_based, chance: @game.chance, heavy_reading: @game.heavy_reading, kid_friendly: @game.kid_friendly, name: @game.name, player_interaction: @game.player_interaction, quick_set_up: @game.quick_set_up, random_starting_state: @game.random_starting_state, requires_acting: @game.requires_acting, secret_info: @game.secret_info, theme: @game.theme, two_player: @game.two_player }
    end

    assert_redirected_to game_path(assigns(:game))
  end

  test "should show game" do
    get :show, id: @game
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @game
    assert_response :success
  end

  test "should update game" do
    patch :update, id: @game, game: { asymmetric: @game.asymmetric, bluffing: @game.bluffing, card_based: @game.card_based, chance: @game.chance, heavy_reading: @game.heavy_reading, kid_friendly: @game.kid_friendly, name: @game.name, player_interaction: @game.player_interaction, quick_set_up: @game.quick_set_up, random_starting_state: @game.random_starting_state, requires_acting: @game.requires_acting, secret_info: @game.secret_info, theme: @game.theme, two_player: @game.two_player }
    assert_redirected_to game_path(assigns(:game))
  end

  test "should destroy game" do
    assert_difference('Game.count', -1) do
      delete :destroy, id: @game
    end

    assert_redirected_to games_path
  end
end
