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

# What is the name of the woman whose occupation is cruise ship singer?
def get_contestant_name(data, occupation)
  participant = ""
  data.each do |season,participants_data|
    participants_data.each do |participant_hash|
      participant_hash.each do |key, value|
        if value == occupation
          participant = participant_hash["name"]
        end
      end
    end
  end
  participant
end

# return number of contestants hailing from a specific hometown
def count_contestants_by_hometown(data, hometown)
  # return number of contestants given town
  # push into array. array.length
  hometown_array = []
  data.each do |season, participants_data|
    participants_data.collect do |participant_hash|
      participant_hash.each do |key, value|
        if value == hometown
          hometown_array << participant_hash["hometown"]
        end
      end   
    end
  end
  hometown_array.length
end

# return occupation by hometown
def get_occupation(data, hometown)
  participant = ""
  data.each do |season,participants_data|
    participants_data.each do |participant_hash|
      participant_hash.each do |key, value|
        if value == hometown
          participant = participant_hash["occupation"]
        end
      end
    end
  end
  participant
end

# return average age when passed season
# use inject? 
# average age should be an integer
def get_average_age_for_season(data, season)
  age_array =[]
  data[season].each do |participant_hash| # participant hash is an array
    age_array << participant_hash["age"].to_i
  end
  # age_array.inject { |sum, i| avg = ((sum + i) / data[season].size)  }
  (age_array.reduce(:+).to_f / data[season].size).round
  # the error was literally a rounding error
end