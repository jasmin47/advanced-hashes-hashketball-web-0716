# Write your code here!
#require 'pry'

def game_hash
  hash = {
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
        },
      }
    },
    :away => {
      :team_name => "Charlotte Hornets",
      :colors => ["Turquoise", "Purple"],
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


def num_points_scored(player)
array = []
game_hash.each {|home_away, team_color_players_block| 
  team_color_players_block.each {|team_color_players, name_string_blocks|
    if team_color_players == :players 
      name_string_blocks.each {|player_name, stats|
        if player_name == player 
          stats.each {|type, number|
            if type == :points
              array << number
            end}
        end
        }
      end
  }  
}
return array[0]
end

def shoe_size(player)
array = []
game_hash.each {|home_away, team_color_players_block| 
  team_color_players_block.each {|team_color_players, name_string_blocks|
    if team_color_players == :players 
      name_string_blocks.each {|player_name, stats|
        if player_name == player 
          stats.each {|type, number|
            if type == :shoe
              array << number
            end}
        end
        }
      end
  }  
}
return array[0]
end
  
def team_colors(team)
array = []
game_hash.each {|home_away, team_color_players_block| 
  team_color_players_block.each {|team_color_players, name_string_blocks|
    if team_color_players == :team_name && name_string_blocks == team
      team_color_players_block.each {|team_color_players, colors|
        if team_color_players == :colors 
          colors.each {|color|
            array << color}
            end 
        }
      end
      }   
  }  
  array
end

def team_names
array = []
game_hash.each {|home_away, team_color_players_block| 
  team_color_players_block.each {|team_color_players, name_string_blocks|
    if team_color_players == :team_name 
            array << name_string_blocks
    end 
        } 
  }  
  array
end

def player_numbers(team)
array = []
game_hash.each {|home_away, team_color_players_block| 
  team_color_players_block.each {|team_color_players, name_string_blocks|
    if team_color_players == :team_name && name_string_blocks == team
      team_color_players_block.each {|team_color_players, name_string_blocks|
        if team_color_players == :players
      name_string_blocks.each {|player_name, stats|
          stats.each {|type, number|
            if type == :number
              array << number
            end}
          }
    end
    } 
  end 
  }
}
array
end

def player_stats(player)
hash = {}
game_hash.each {|home_away, team_color_players_block| 
  team_color_players_block.each {|team_color_players, name_string_blocks|
    if team_color_players == :players 
      name_string_blocks.each {|player_name, stats|
        if player_name == player 
          hash.merge!(stats)
        end
        }
      end
  }  
}
hash
end

def big_shoe_rebounds
array = []
game_hash.each {|home_away, team_color_players_block| 
  team_color_players_block.each {|team_color_players, name_string_blocks|
    if team_color_players == :players 
      name_string_blocks.each {|player_name, stats|
            name = ""
            shoe_size = 0       
          stats.each {|type, number|
            if type == :shoe && number > shoe_size
              name = player_name
              shoe_size = number
            end
          }
          name_string_blocks.each {|player_name, stats|
            if player_name == name
              stats.each {|type, number|
                if type == :rebounds
                  array << number
                end}
              end}
        }
      end
  }  
}
return array[0]
end






