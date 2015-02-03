class ChangeCollumnInGamer < ActiveRecord::Migration
  def change
    change_table :gamers do |t|
      t.remove :player_interaction
      t.remove :bluffing
      t.remove :quick_set_up
      t.remove :secret_info
      t.remove :chance
      t.remove :card_based
      t.remove :two_player
      t.remove :theme
      t.remove :heavy_reading
      t.remove :kid_friendly
      t.remove :requires_acting
      t.remove :random_starting_state
      t.remove :asymmetric
      t.integer :player_interaction
      t.integer :bluffing
      t.integer :quick_set_up
      t.integer :secret_info
      t.integer :chance
      t.integer :card_based
      t.integer :two_player
      t.integer :theme
      t.integer :heavy_reading
      t.integer :kid_friendly
      t.integer :requires_acting
      t.integer :random_starting_state
      t.integer :asymmetric
    end
  end
end
