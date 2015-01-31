class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :name
      t.string :player_interaction
      t.string :bluffing
      t.string :quick_set_up
      t.string :secret_info
      t.string :chance
      t.string :card_based
      t.string :two_player
      t.string :theme
      t.string :heavy_reading
      t.string :kid_friendly
      t.string :requires_acting
      t.string :random_starting_state
      t.string :asymmetric

      t.timestamps null: false
    end
  end
end
