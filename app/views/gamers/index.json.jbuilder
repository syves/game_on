json.array!(@gamers) do |gamer|
  json.extract! gamer, :id, :user_name, :player_interaction, :bluffing, :quick_set_up, :secret_info, :chance, :card_based, :two_player, :theme, :heavy_reading, :kid_friendly, :requires_acting, :random_starting_state, :asymmetric
  json.url gamer_url(gamer, format: :json)
end
