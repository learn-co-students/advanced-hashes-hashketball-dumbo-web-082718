# Write your code here!
require 'pry'
def game_hash
  {
    :home => {
      :team_name => "Brooklyn Nets",
      :colors => ["Black","White"],
      :players => {
        "Alan Anderson" => {
          :number => 0,
          :shoe => 16,
          :points => 22,
          :rebounds => 12,
          :assists => 12,
          :steals => 3,
          :blocks => 1,
          :slam_dunks => 1
        },
        "Reggie Evans" => {
          :number => 30,
          :shoe => 14,
          :points => 12,
          :rebounds => 12,
          :assists => 12,
          :steals => 12,
          :blocks => 12,
          :slam_dunks => 7
        },
        "Brook Lopez" => {
          :number => 11,
          :shoe => 17,
          :points => 17,
          :rebounds => 19,
          :assists => 10,
          :steals => 3,
          :blocks => 1,
          :slam_dunks => 15
        },
        "Mason Plumlee" => {
          :number => 1,
          :shoe => 19,
          :points => 26,
          :rebounds => 12,
          :assists => 6,
          :steals => 3,
          :blocks => 8,
          :slam_dunks => 5
        },
        "Jason Terry" => {
          :number => 31,
          :shoe => 15,
          :points => 19,
          :rebounds => 2,
          :assists => 2,
          :steals => 4,
          :blocks => 11,
          :slam_dunks => 1
        }

      }
    },

    :away => {
      :team_name => "Charlotte Hornets",
      :colors => ["Turquoise","Purple"],
      :players => {
        "Jeff Adrien" => {
          :number => 4,
          :shoe => 18,
          :points => 10,
          :rebounds => 1,
          :assists => 1,
          :steals => 2,
          :blocks => 7,
          :slam_dunks => 2
        },
        "Bismak Biyombo" => {
          :number => 0,
          :shoe => 16,
          :points => 12,
          :rebounds => 4,
          :assists => 7,
          :steals => 7,
          :blocks => 15,
          :slam_dunks => 10
        },
        "DeSagna Diop" => {
          :number => 2,
          :shoe => 14,
          :points => 24,
          :rebounds => 12,
          :assists => 12,
          :steals => 4,
          :blocks => 5,
          :slam_dunks => 5
        },
        "Ben Gordon" => {
          :number => 8,
          :shoe => 15,
          :points => 33,
          :rebounds => 3,
          :assists => 2,
          :steals => 1,
          :blocks => 1,
          :slam_dunks => 0
        },
        "Brendan Haywood" => {
          :number => 33,
          :shoe => 15,
          :points => 6,
          :rebounds => 12,
          :assists => 12,
          :steals => 22,
          :blocks => 5,
          :slam_dunks => 12
        }
      }
    }
  }
end



def big_shoe_rebounds
  def biggest_shoe_size
    big_shoe = 0
    local_maxes = []
    teams_arr = game_hash.values
    teams_arr.each do |team|
      team[:players].each do |player, stats|
        stats.each do |atribute, value|
          if atribute == :shoe && value > big_shoe
            local_maxes.push(player)
          end
        end
      end
    end
    local_maxes.pop
  end
  teams_arr = game_hash.values
  teams_arr.each do |team|
    team[:players].each do |name, stats|
      if name == biggest_shoe_size
        return stats[:rebounds]
      end
    end
  end
end



#Build a method, num_points_scored that takes in an argument of a player's name and returns the number of points scored for that player.

# Think about where in the hash you will find a player's :points. How can you iterate down into that level? Think about the return value of your method. Remember that .each returns the original collection that you are iterating over. How can you return the number of points for a particular player?

def num_points_scored(player_name)
  teams_arr = game_hash.values
  if teams_arr[0][:players].keys.include?(player_name)
    return teams_arr[0][:players][player_name][:points]
  elsif teams_arr[1][:players].keys.include?(player_name)
    return teams_arr[1][:players][player_name][:points]
  end
end

def shoe_size(player_name)
  teams_arr = game_hash.values
  teams_arr.each do |team|
    team[:players].each do |name, stats|
      if name == player_name
        return stats[:shoe]
      end
    end
  end
end

def team_colors(team_name)
  teams_arr = game_hash.values
  teams_arr.each do |team|
    if team.values.include?(team_name)
      return team[:colors]
    end
  end
end

def team_names
  arr=[]
  teams_arr = game_hash.values
  teams_arr.each do |team|
    arr.push(team[:team_name])
  end
  arr
end

def player_numbers(team_name)
  arr=[]
  teams_arr = game_hash.values
  teams_arr.each do |team|
    if team.values.include?(team_name)
      team[:players].values.each do |player|
        arr.push(player[:number])
      end
    end
  end
  arr
end

def player_stats(player_name)
  game_hash.each do |location, data_obj|
    data_obj.each do |data, data_value|
      if data == :players
        data_value.each do |player, stats|
          if player_name == player
            return stats
          end
        end
      end
    end
  end
end
