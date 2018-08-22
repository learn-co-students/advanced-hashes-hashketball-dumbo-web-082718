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

# def all_teams# using MAP

#   game_hash.map do |team, names| names[:team_name]
#   # names.each do |name, info| name == [:team_name].concat([:players]) 
#    end
#   # end 
# end 
# # puts all_teams
# #______________BOTH TEAMS ___________________#



#CALLING EACH TEAM BY ACCESSING HASH
def home
	  game_hash[:home][:team_name]
	end
  # puts home
# #_________________________________#
# def away
# 	  game_hash[:away][:team_name]
# 	end
# #  puts away
# #_________________________________#


		def players
	  team_players_array = game_hash.values.map do |players_info|
	    players_info[:players]
	  end
	  team_players_array.flatten
	end
  puts "________________________________________"
 puts "PLAYERS" 
puts players


	def playerZ_stats(player_name, stats)
    players.reduce(0) do |all_stats, player_details|
	    if(player_details[:player_name] == player_name)
	      all_stats = player_details[stats]
	    end
	    all_stats
	  end
	end
  puts "________________________________________"
   puts "STATS " 
  
	def num_points_scored(player_name)
	  playerZ_stats(player_name, :points)
	end

 puts "______________SCORE__________________________"
 puts num_points_scored("Jeff Adrien")


	def shoe_size(player_name)
	  playerZ_stats(player_name, :shoe)
	end
   puts "______________SHOE__________________________"

  puts shoe_size("Jeff Adrien")

	def call_team(team_name)
	  game_hash.values.find do |players_info|
	    players_info[:team_name] == team_name
	  end
	end

  puts "__________CALL TEAM __________________________"
  puts call_team("Brooklyn Nets")

	def team_colors(team_name)
	  team = call_team(team_name)
	  team[:colors]
	end
 
  puts "_____________COLORS_________________________"
  puts team_colors("Brooklyn Nets")


	def team_names #*** .  ***
	  game_hash.map do |team, players_info|
	    players_info[:team_name] #should be all info
	  end
    # return team_names 
	end
 puts "_____________TEAM NAMES______________________"
 puts  team_names
 
	# def player_numbers(team_name)
	#   team = call_team(team_name)
	#   team[:players].map do |players_details|
  #   	 players_details[:team_name]
  #      end
 	# end
   def player_numbers(player_name) #Understand & retry 
       playerZ_stats(player_name, :number)
       end
     puts "__________PLAYERS NUMBERS______________"
  # puts player_numbers("Reggie Evans")
puts player_numbers("Jeff Adrien")


	def player_stats(player_name) #***Not working***
	  players.find do |player_details|
	    player_details[:player_name] == player_name
	  end
	end
  puts "__________PLAYERS STATS______________"
  puts player_stats("Jeff Adrien")


