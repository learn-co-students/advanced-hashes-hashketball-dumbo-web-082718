require "pry"

def game_hash
  {
    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: [
        {
          player_name: "Alan Anderson",
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1
        }, {
          player_name: "Reggie Evans",
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        }, {
          player_name: "Brook Lopez",
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        }, {
          player_name: "Mason Plumlee",
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 12,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        }, {
          player_name: "Jason Terry",
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1
        }
      ]
    },
    away: {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: [
        {
          player_name: "Jeff Adrien",
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2
        }, {
          player_name: "Bismak Biyombo",
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 7,
          blocks: 15,
          slam_dunks: 10
        }, {
          player_name: "DeSagna Diop",
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        }, {
          player_name: "Ben Gordon",
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        }, {
          player_name: "Brendan Haywood",
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 22,
          blocks: 5,
          slam_dunks: 12
        }
      ]
    }
  }
end

def num_points_scored(player_name)
  game_hash.each do |team, team_data|
    team_data[:players].each do |player|
      # binding.pry
      if player[:player_name] == player_name
        # binding.pry
        return player[:points]
      end
    end
  end
end

def shoe_size(player_name)
  game_hash.each do |team, team_data|
    # binding.pry
    team_data[:players].each do |player|
      if player[:player_name] == player_name
        # binding.pry
        return player[:shoe]
      end
    end
  end
end

def team_colors(team_name)
  game_hash.each do |team, team_data|
    # binding.pry
      if team_data[:team_name] == team_name
        # binding.pry
        return team_data[:colors]
      end
    end
  end

  def team_names
    arr = []
    game_hash.each do |team, team_names|
      # binding.pry
      arr.push(team_names[:team_name])
end
arr
# binding.pry

end


def player_numbers(team_name)
	array = []
	game_hash.each do |team, team_data|
		if team_data[:team_name] == team_name
			# binding.pry
			team_data.each do |player, data|
				if player == :players
					data.each do |player_stats|
					array << player_stats[:number]
				# binding.pry
					end
				  end
				end
			end
		end
	array
  # binding.pry
end

def player_stats(player_name)
	game_hash.each do |team, team_data|
    # binding.pry
		team_data.each do |player, data|
      # binding.pry
      if player == :players
        # binding.pry
				data.each do |name|
          # binding.pry
					if name[:player_name] == player_name
						# binding.pry
						name.delete(:player_name)
            # binding.pry
						 return name
					end
				end
			end
		end
	end
end


def big_shoe_rebounds
    big_foot = nil
    shoe_size = 0
    rebound_number = 0


    game_hash.each do |team, team_data|
      # binding.pry
      team_data.each do |player, stats|
        # binding.pry
        if player == :players
          # binding.pry
          stats.each do |x|
            # binding.pry
            if x[:shoe] > shoe_size
              # binding.pry
              big_foot = x[:player_name]
              shoe_size = x[:shoe]
              rebound_number = x[:rebounds]
            end
          end
      end
    end
    end
    # binding.pry
    rebound_number
  end
