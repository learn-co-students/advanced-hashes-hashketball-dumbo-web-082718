# Write your code here!
def game_hash
  game_hash = {
    :home => {
      :team_name => "Brooklyn Nets",
      :colors => ["Black", "White"],
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
        "Reggie Evans"  => {
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        },
        "Brook Lopez" => {
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        },
        "Mason Plumlee" => {
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 12,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        },
        "Jason Terry" => {
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1
        }
    }
  },

:away => {
  :team_name => "Charlotte Hornets",
    :colors => ["Turquoise", "Purple"],
    :players => {
      "Jeff Adrien" => {
        number: 4,
        shoe: 18,
        points: 10,
        rebounds: 1,
        assists: 1,
        steals: 2,
        blocks: 7,
        slam_dunks: 2
      },
      "Bismak Biyombo" => {
        number: 0,
        shoe: 16,
        points: 12,
        rebounds: 4,
        assists: 7,
        steals: 7,
        blocks: 15,
        slam_dunks: 10
      },
      "DeSagna Diop" => {
        number: 2,
        shoe: 14,
        points: 24,
        rebounds: 12,
        assists: 12,
        steals: 4,
        blocks: 5,
        slam_dunks: 5
      },
      "Ben Gordon" => {
        number: 8,
        shoe: 15,
        points: 33,
        rebounds: 3,
        assists: 2,
        steals: 1,
        blocks: 1,
        slam_dunks: 0
      },
      "Brendan Haywood" => {
        number: 33,
        shoe: 15,
        points: 6,
        rebounds: 12,
        assists: 12,
        steals: 22,
        blocks: 5,
        slam_dunks: 12
      }
    }
  }
}
end

def num_points_scored(playername)
  points = nil
  game_hash.each do |team,upper|
    upper.each do |player,name|
      if player == :players
        name.each do |names,stats|
          if names == playername
            stats.each do |stat,value|
              if stat == :points
                points = value
              end
            end
          end
        end
      end
    end
  end
  points
end

def shoe_size(playername)
  size = nil
  game_hash.each do |team,upper|
    upper.each do |player,name|
      if player == :players
        name.each do |names,stats|
          if names == playername
            stats.each do |stat,value|
              if stat == :shoe
                size = value
              end
            end
          end
        end
      end
    end
  end
  size
end

def team_colors(teamname)
  color_array=[]
  if game_hash[:home][:team_name]==teamname
    color_array = game_hash[:home][:colors]
  elsif game_hash[:away][:team_name]==teamname
    color_array = game_hash[:away][:colors]
  end
  color_array
end

def team_names
  array = []
  game_hash.each do |loc,upper|
    upper.each do |x,y|
      if x == :team_name
        array << y
      end
    end
  end
  array
end

def player_numbers(teamname)
  jerseys=[]
  if game_hash[:home][:team_name]==teamname
      game_hash[:home].each do |k,pnames|
        if k == :players
          pnames.each do |names,stats|
            stats.each do |stat,value|
                if stat == :number
                  jerseys << value
                end
              end
            end
          end
        end
  elsif game_hash[:away][:team_name]==teamname
    game_hash[:away].each do |k,pnames|
      if k == :players
        pnames.each do |names,stats|
          stats.each do |stat,value|
            if stat == :number
              jerseys << value
            end
          end
        end
      end
    end
  end
    jerseys
end

def player_stats(playername)
  stats = {}
  if game_hash[:home][:players].include?(playername)
    stats = game_hash[:home][:players][playername]
  elsif game_hash[:away][:players].include?(playername)
    stats = game_hash[:away][:players][playername]
  end
  stats
end

def big_shoe_rebounds
  biggest_shoe = 0
  rebounds = 0
  game_hash.each do |location, data|
    data[:players].each do |name, playerData|
      if playerData[:shoe] > biggest_shoe
        biggest_shoe = playerData[:shoe]
        rebounds = playerData[:rebounds]
      end
    end
  end
  rebounds
end
