 # Write your code here!
 
 require "pry"
 
 def game_hash
   
# hash = Hash.new()

   {
 :home => {
   :team_name => "Brooklyn Nets",
   :colors => ["Black", "White"],
   :players => [
     {
      :player_name => "Alan Anderson",
      :number => "0",
      :shoe => "16",
      :points => "22",
      :rebounds => "12",
      :assists => "12",
      :steals => "3",
      :blocks => "1",
      :slam_dunks => "1"
   }, {
      :player_name => "Reggie Evans",
      :number => "30",
      :shoe => "14",
      :points => "12",
      :rebounds => "12",
      :assists => "12",
      :steals => "12",
      :blocks => "12",
      :slam_dunks => "7"
   }, {
      :player_name => "Brook Lopez",
      :number => "11",
      :shoe => "17",
      :points => "17",
      :rebounds => "19",
      :assists => "10",
      :steals => "3",
      :blocks => "1",
      :slam_dunks => "15"
   }, {
     :player_name => "Mason Plumlee",
      :number => "1",
      :shoe => "19",
      :points => "26",
      :rebounds => "12",
      :assists => "6",
      :steals => "3",
      :blocks => "8",
      :slam_dunks => "5"
   }, {
     :player_name => "Jason Terry",
      :number => "31",
      :shoe => "15",
      :points => "19",
      :rebounds => "2",
      :assists => "2",
      :steals => "4",
      :blocks => "11",
      :slam_dunks => "1"
    }
   ]
 },

 :away => {
   :team_name => "Charlotte Hornets",
   :colors => ["Turquoise", "Purple"],
   :players => [
     {
       :player_name => "Jeff Adrien",
      :number => "4",
      :shoe => "18",
      :points => "10",
      :rebounds => "1",
      :assists => "1",
      :steals => "2",
      :blocks => "7",
      :slam_dunks => "2"
     }, {
       :player_name => "Bismak Biyombo",
      :number => "0",
      :shoe => "16",
      :points => "12",
      :rebounds => "4",
      :assists => "7",
      :steals => "7",
      :blocks => "15",
      :slam_dunks => "10"
     }, {
       :player_name => "DeSagna Diop",
      :number => "2",
      :shoe => "14",
      :points => "24",
      :rebounds => "12",
      :assists => "12",
      :steals => "4",
      :blocks => "5",
      :slam_dunks => "5"
     }, {
       :player_name => "Ben Gordon",
      :number => "8",
      :shoe => "15",
      :points => "33",
      :rebounds => "3",
      :assists => "2",
      :steals => "1",
      :blocks => "1",
      :slam_dunks => "0"
     }, {
       :player_name => "Brendan Haywood",
      :number => "33",
      :shoe => "15",
      :points => "6",
      :rebounds => "12",
      :assists => "12",
      :steals => "22",
      :blocks => "5",
      :slam_dunks => "12"
     }
    ]
  }
}
end

# Function to call all players
def players_dot_all
    game_hash[:home][:players].flatten.(game_hash[:away][:players])
  # all_players = home_players + away_players
  # total_players
end

# Fuction to call 1 player
def call_player(name)
    player = players.fetch(name)
end 

# fetch the points of a player
def num_points_scored(name)
	  player = call_player(name)
	  player.fetch(:points)
	end

puts num_points_scored("Brendan Haywood")

def shoe_size(name)
  players = players_dol_all do |player, stats| 
    stats.fetch(:name)
    end

def player_biggest_shoe_size
	  players.max_by do |player, stats| 
	    stats.fetch(:shoe)
	  end [1]
end
  player_biggest_shoe_size
# def game_hash
  
#   # hash = Hash.new()
  
#   hash = {  :home => {
#   :team_name => "Brooklyn Nets",
#   :colors => ["Black", "White"],
#   :players => [
#     {
#       :player_name => "Alan Anderson",
#       :number => "0",
#       :shoe => "16",
#       :points => "22",
#       :rebounds => "12",
#       :assists => "12",
#       :steals => "3",
#       :blocks => "1",
#       :slam_dunks => "1"
#   }, {
#       :player_name => "Reggie Evans",
#       :number => "30",
#       :shoe => "14",
#       :points => "12",
#       :rebounds => "12",
#       :assists => "12",
#       :steals => "12",
#       :blocks => "12",
#       :slam_dunks => "7"
#   }, {
#       :player_name => "Brook Lopez",
#       :number => "11",
#       :shoe => "17",
#       :points => "17",
#       :rebounds => "19",
#       :assists => "10",
#       :steals => "3",
#       :blocks => "1",
#       :slam_dunks => "15"
#   }, {
#     :player_name => "Mason Plumlee",
#       :number => "1",
#       :shoe => "19",
#       :points => "26",
#       :rebounds => "12",
#       :assists => "6",
#       :steals => "3",
#       :blocks => "8",
#       :slam_dunks => "5"
#   }, {
#     :player_name => "Jason Terry",
#       :number => "31",
#       :shoe => "15",
#       :points => "19",
#       :rebounds => "2",
#       :assists => "2",
#       :steals => "4",
#       :blocks => "11",
#       :slam_dunks => "1"
#     }
#   ]
# },

# :away => {
#   :team_name => "Charlotte Hornets",
#   :colors => ["Turquoise", "Purple"],
#   :players => [
#     {
#       :player_name => "Jeff Adrien",
#       :number => "4",
#       :shoe => "18",
#       :points => "10",
#       :rebounds => "1",
#       :assists => "1",
#       :steals => "2",
#       :blocks => "7",
#       :slam_dunks => "2"
#     }, {
#       :player_name => "Bismak Biyombo",
#       :number => "0",
#       :shoe => "16",
#       :points => "12",
#       :rebounds => "4",
#       :assists => "7",
#       :steals => "7",
#       :blocks => "15",
#       :slam_dunks => "10"
#     }, {
#       :player_name => "DeSagna Diop",
#       :number => "2",
#       :shoe => "14",
#       :points => "24",
#       :rebounds => "12",
#       :assists => "12",
#       :steals => "4",
#       :blocks => "5",
#       :slam_dunks => "5"
#     }, {
#       :player_name => "Ben Gordon",
#       :number => "8",
#       :shoe => "15",
#       :points => "33",
#       :rebounds => "3",
#       :assists => "2",
#       :steals => "1",
#       :blocks => "1",
#       :slam_dunks => "0"
#     }, {
#       :player_name => "Brendan Haywood",
#       :number => "33",
#       :shoe => "15",
#       :points => "6",
#       :rebounds => "12",
#       :assists => "12",
#       :steals => "22",
#       :blocks => "5",
#       :slam_dunks => "12"
#     }
#     ]
#   }
# }
# end 

# # def num_points_scored(game_hash)
# #   # game_hash[ :player_name [:points ]]
# # call_player = players.find do |player| player.fetch(:player_name)
# # call_player.fetch(:point)
# # end 

# # * Build a method, `num_points_scored` that takes in an argument of a player's name and returns the number of points scored for that player.
# #   * Think about where in the hash you will find a player's `:points`. How can you iterate down into that level? Think about the return value of your method. Remember that `.each` returns the original collection that you are iterating over. How can you return the number of points for a particular player?












