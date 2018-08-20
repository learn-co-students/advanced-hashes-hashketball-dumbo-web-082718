# Write your code here!

def game_hash
  
  hash = Hash.new()
  hash = [ :home => { 
              :team_name => "Brooklyn Nets",
              :colors => ["Black", "White"] 
              :players => [ 
                { :players_name => "Alan Anderson"}
                { :players_name =>"Reggie Evans"  },
                { :players_name =>"Brook Lopez"   },
                { :players_name =>'Mason Plumlee' },
                { :players_name =>'Jason Terry'   }
                }
  ]
  
  [  :away => { 
            :team_name => "Charlotte Hornets"
            :colors => ["Turquoise", "Purple"],
            :players => [
               {  :players_name => "Alan Anderson"  }
               {  :players_name => 'Reggie Evans'   },
               {  :players_name => 'Brook Lopez'    },
               {  :players_name => 'DeSagna Diop'   }, 
               {  :players_name => 'Ben Gordon'     },
               {  :players_name => 'Brendan Haywood'}
               } 
  ]
  
end 








