json.array!(@users) do |user|
  json.extract! user, :id, :user_name, :email, :player_interaction, :bluffing, :quick_set_up, :secret_info, :chance, :card_based, :two_player, :theme, :heavy_reading, :kid_friendly, :requires_acting, :random_starting_state, :asymmetric
  json.url user_url(user, format: :json)
end
