#def get_first_name_of_season_winner(data, season)
  # code here
#  season_data = data[season]
#  winner_data = season_data.find{|contestant| contestant["status"] == "Winner"}
#  winner_first_name = winner_data["name"].split(" ").first
#end
def get_first_name_of_season_winner(data, season)
  winner = ""
  data[season].each do |participant_hash| # participant hash is an array
    participant_hash.select do |key, value|
      if value == "Winner"
        winner = participant_hash["name"].split(" ").first
      end
    end
  end
  winner
end
def get_contestant_name(data, occupation)
  # code here
end

def count_contestants_by_hometown(data, hometown)
  # code here
end

def get_occupation(data, hometown)
  # code here
end

def get_average_age_for_season(data, season)
  # code here
end
