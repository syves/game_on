json.array!(@games) do |game|
  json.extract! game, :id, :name, :player_interaction, :bluffing, :quick_set_up, :secret_info, :chance, :card_based, :two_player, :theme, :heavy_reading, :kid_friendly, :requires_acting, :random_starting_state, :asymmetric
  json.url game_url(game, format: :json)
end
