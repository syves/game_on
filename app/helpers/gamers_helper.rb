module GamersHelper

def get_gamer_prefs(current_gamer)
  current_gamer.attributes.drop(14).map {|pair|Hash[*pair]}
end
=begin
get_gamer_prefs(current_gamer) =>
  [{"player_interaction"=>2}, {"bluffing"=>5}, {"quick_set_up"=>5}, {"secret_info"=>5}, {"chance"=>3}, {"card_based"=>4}, {"two_player"=>3}, {"theme"=>1}, {"heavy_reading"=>0}, {"kid_friendly"=>1}, {"requires_acting"=>0}, {"random_starting_state"=>2}, {"asymmetric"=>2}]
=end

def get_game_chars()
  games = Game.all.map do |game|
    array = []
    array << game.name
     array << game.attributes.drop(4).map {|pair|Hash[*pair]}
  end
  games
end
=begin
# => get_game_chars()
  [["hanabi", [{"player_interaction"=>true}, {"bluffing"=>false}, {"quick_set_up"=>true}, {"secret_info"=>true}, {"chance"=>true}, {"card_based"=>true}, {"two_player"=>true}, {"theme"=>false}, {"heavy_reading"=>false}, {"kid_friendly"=>false}, {"requires_acting"=>false}, {"random_starting_state"=>true}, {"asymmetric"=>false}]], ["mushrooms", [{"player_interaction"=>false}, {"bluffing"=>false}, {"quick_set_up"=>true}, {"secret_info"=>true}, {"chance"=>true}, {"card_based"=>true}, {"two_player"=>true}, {"theme"=>true}, {"heavy_reading"=>false}, {"kid_friendly"=>false}, {"requires_acting"=>false}, {"random_starting_state"=>true}, {"asymmetric"=>false}]], ["king of tokyo", [{"player_interaction"=>true}, {"bluffing"=>false}, {"quick_set_up"=>true}, {"secret_info"=>true}, {"chance"=>true}, {"card_based"=>true}, {"two_player"=>false}, {"theme"=>true}, {"heavy_reading"=>false}, {"kid_friendly"=>true}, {"requires_acting"=>false}, {"random_starting_state"=>false}, {"asymmetric"=>false}]], ["7 wonders", [{"player_interaction"=>false}, {"bluffing"=>false}, {"quick_set_up"=>true}, {"secret_info"=>false}, {"chance"=>false}, {"card_based"=>true}, {"two_player"=>false}, {"theme"=>true}, {"heavy_reading"=>true}, {"kid_friendly"=>false}, {"requires_acting"=>false}, {"random_starting_state"=>false}, {"asymmetric"=>false}]]]
=end
def get_your_games(current_gamer) #current_gamer
get_game_chars().map do |game| #=> ["",[{x,y}]]
  my_games = []
  game_score = 0

    game.drop(1).flatten.each do |hash| #=>[{x,y},{}],
      game = [game[0]]

      #only if game has char, get user rating
      if (hash.values[0] == true)
        get_gamer_prefs(current_gamer).map do |dict|
          if (hash.keys[0] == dict.keys[0])
            game_score += dict.values[0]
          end
        end #-----------close gamer prefs loop
        #game_score += 5 #my score for prop
      end

    end
    my_games << game
    game << game_score
    my_games.flatten
  end
end


#[["7 wonders", 10],["hanabi", 24], ["mushrooms", 23], ["king of tokyo", 21]].sort

end