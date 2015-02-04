module GamersHelper

def get_gamer_prefs(current_gamer)
  current_gamer.attributes.drop(14).map {|pair|Hash[*pair]}
end

def get_game_chars(games)
  games = Game.all.map do |game|
    array = []
    array << game.name
     array << game.attributes.drop(4).map {|pair|Hash[*pair]}
  end
  games
end

=begin
[["hanabi", [{"player_interaction"=>true}, {"bluffing"=>false}, {"quick_set_up"=>true}, {"secret_info"=>true}, {"chance"=>true}, {"card_based"=>true}, {"two_player"=>true}, {"theme"=>false}, {"heavy_reading"=>false}, {"kid_friendly"=>false}, {"requires_acting"=>false}, {"random_starting_state"=>true}, {"asymmetric"=>false}]]
=end

#get summded score attributes ratings for each game
def your_prefs()
  #for each game in the system do
  games_ranking = []
  gamesHas.map do |charz, _|
    #for each key in game ...
      game_rating = 0
      get_prefs(current_gamer).each do |_,value|
        if (get_game_prefs[key] == false )
          0
        else
          game_rating += game[key]
        end
      end
      #what about game name? {game.name: game_rating}
      games_ranking <<  game_rating
   end
   games_ranking.sort.reverse

end




end
