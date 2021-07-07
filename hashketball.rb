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



puts "___CALL BOTH TMZ PLAYERS & STATS___________"
#___HASH_VALUE_=_TEAMS & PLAYERS & STATS____
def teams_and_players
  teams = game_hash.values
end
puts teams_and_players


# # def get_teams
# #  team = []
# #     game_hash.map do |team| team.fetch[:team_name]
# #     end 
# #   # team.push(team_names.flatten) 
# # end
# # puts get_teams
puts "_____________TEAMS NAMES _______________'\n'"

def teams_names
  teams_and_players.map{|team| team.fetch(:team_name)}
end
 puts  teams_names



puts "______CALL TEAM BY NAME  ________________"
#CALL EACH TEAM (by name)
def call_team(team_name)
	  game_hash.values.find do |players_info|
	    players_info[:team_name] == team_name
	  end
end

puts call_team("Brooklyn Nets")


puts "__________PLAYERS W STATS________________'\n' "
#this method return All Players with their stats 
def all_players_with_stats
    players = game_hash.values.map do |players| all_players = players[:players]
   end
   players.flatten 
end 
puts all_players_with_stats


puts "__________TEAM COLOR___________________'\n'"
#Get team color by accessing specific team(call_team then team name store in a variable to then use and fetch)
def team_color(team_name)
get_color = call_team(team_name) {|team_name|team_name.fetch(:team_name) == team_name}
 get_color.fetch(:colors)

 end 
 puts team_color("Brooklyn Nets")

#WITHOUT  Iteratting Just accessing 
# def players
#   home_players = game_hash[:home][:players]
#   away_players = game_hash[:away][:players]
#   total_players = home_players + away_players
#   total_players
# end
#____________________________________________
 #ITTERATING WITH FIND (can also use detect)
def num_points_scored(name)
  get_player = all_players_with_stats.find {|player| player.fetch(:player_name) == name }
   get_player.fetch(:points)
  # puts "#{name} points: #{points}"
end 
puts "__________FIND PLAYER SCORE ______________'\n'"
puts num_points_scored("Brendan Haywood")

puts "__________SHOE SIZE  ______________'\n'"
def shoe_size(player_name)
    get_shoe = all_players_with_stats.find do|player|player.fetch(:player_name) == player_name
     end 
     get_shoe.fetch(:shoe)
    # puts "#{player_name} shoe size is: #{shoe}"
    # return get_shoe.fetch(:shoe)
end 
puts shoe_size("DeSagna Diop")

# # def all_teams# using MAP

# #   game_hash.map do |team, names| names[:team_name]
# #   # names.each do |name, info| name == [:team_name].concat([:players]) 
# #    end
# #   # end 
# # end 
# # # puts all_teams
# # #______________BOTH TEAMS ___________________#



# #CALLING EACH TEAM BY ACCESSING HASH
# def home
# 	  game_hash[:home][:team_name]
# 	end
#   # puts home
# # #_________________________________#
# # def away
# # 	  game_hash[:away][:team_name]
# # 	end
# # #  puts away
# # #_________________________________#



