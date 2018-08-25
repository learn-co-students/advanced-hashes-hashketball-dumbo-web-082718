require 'pry'


def game_hash
  {
    :home => 
    {:team_name => "Brooklyn Nets" , :colors => "Black, White", :players => 
    {"Alan Anderson" => {:number => 0, :shoe => 16, :points => 22 , :rebounds => 12, :assists => 12, :steals => 3, :blocks => 1, :slam_dunks => 1},
      "Reggie Evans" => {:number => 30, :shoe => 14, :points => 12, :rebounds => 12, :assists => 12, :steals => 12, :blocks => 12, :slam_dunks => 7},
      "Brook Lopez" => {:number => 11, :shoe => 17, :points => 17, :rebounds => 19, :assists => 10, :steals => 3, :blocks => 1, :slam_dunks => 15},
      "Mason Plumlee" => {:number => 1, :shoe => 19, :points => 26, :rebounds => 12, :assists => 6, :steals => 3, :blocks => 8, :slam_dunks => 5},
      "Jason Terry" => {:number => 31, :shoe => 15, :points => 19, :rebounds => 2, :assists => 2, :steals => 4, :blocks => 11, :slam_dunks => 1}
      }
    }, 
    :away =>
    {
      :team_name => "Charlotte Hornets", :colors => 'Turquoise, Purple', :players => 
      {"Jeff Adrien" => {:number => 4, :shoe => 18, :points => 10, :rebounds => 1, :assists => 1, :steals => 2, :blocks => 7, :slam_dunks => 2},
      "Bismak Biyombo" => {:number => 0, :shoe => 16, :points => 12, :rebounds => 4, :assists => 7, :steals => 7, :blocks => 15, :slam_dunks => 10},
      "DeSagna Diop" => {:number => 2, :shoe => 14, :points => 24, :rebounds => 12, :assists => 12, :steals => 4, :blocks => 5, :slam_dunks => 5},
      "Ben Gordon" => {:number => 8, :shoe => 15, :points => 33, :rebounds => 3, :assists => 2, :steals => 1, :blocks => 1, :slam_dunks => 0},
      "Brendan Haywood" => {:number => 33, :shoe => 15, :points => 6, :rebounds => 12, :assists => 12, :steals => 22, :blocks => 5, :slam_dunks => 12}
      }
    }
  }
  end 
  # Write your code here!
  

def num_points_scored(player)
  game_hash.each do |team, details|
    my_var = details[:players][player]
    if my_var
      return my_var[:points]
    end
  end
end

def shoe_size(player)
  game_hash.each do |team, details|
    if my_var = details[:players][player]
      return my_var[:shoe]
    end
  end
end

def team_colors(team_name)
  game_hash.each do |team, details|
    if details[:team_name] == team_name
      colors = details[:colors]
      return colors.split(', ')
    end
  end
end

def team_names
  new_arr = []
  game_hash.each do |home_away, details|
    new_arr << details[:team_name]
  end
  return new_arr
end

def player_numbers(team_name)
  numbers_arr = []
  game_hash.each do |team, details|
    if details[:team_name] == team_name 
      details[:players].map do |teams, players|
        numbers_arr << players[:number]
  end
end
end
numbers_arr
end

def player_stats(player)
  game_hash.each do |team, details|
    my_var = details[:players][player]
    if my_var
      return my_var
    end
  end
end

def big_shoe_rebounds
  numbers_arr = []
  game_hash.each do |team, details|
      details[:players].each do |player, stats|
         my_thing = 0
      if stats[:shoe_size] = my_thing
        stats[:shoe_size] = my_thing
        return stats[:rebounds]
    end
end
end
end
        # numbers_arr << stats[:shoe_size]
        # my_arr = numbers_arr.sort
        # binding.pry
        # details[:players].each do |myPlayer, myStats|
        #   if myStats[:shoe_size] == my_arr[0]
        #     return details[:players][:rebounds]
        #   end
  