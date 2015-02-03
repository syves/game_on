class ChangeCollumn < ActiveRecord::Migration
  def change
    change_table :games do |t|
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
      t.boolean :player_interaction
      t.boolean :bluffing
      t.boolean :quick_set_up
      t.boolean :secret_info
      t.boolean :chance
      t.boolean :card_based
      t.boolean :two_player
      t.boolean :theme
      t.boolean :heavy_reading
      t.boolean :kid_friendly
      t.boolean :requires_acting
      t.boolean :random_starting_state
      t.boolean :asymmetric
    end
  end
end
