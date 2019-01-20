
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
  contestants = data.collect{|season_key, season| season}.flatten
  contestants.find{|contestant| contestant["occupation"] == occupation}["name"]
end

def count_contestants_by_hometown(data, hometown)
  # code here
  contestants = data.collect{|season_key, season| season}.flatten
  contestants.count{|contestant| contestant["hometown"] == hometown}
end

def get_occupation(data, hometown)
  # code here
  contestants = data.collect{|season_key, season| season}.flatten
  contestants.find{|contestant| contestant["hometown"] == hometown}["occupation"]
end

def get_average_age_for_season(data, season)
  # code here
  contestants = data[season]
  ages = contestants.collect {|contestant|  contestant["age"].to_i}
  average_age = ages.inject(0.0){|sum, age| sum + age} / ages.size
  decimal_part = average_age - average_age.floor
  decimal_part > 0.5 ? average_age.ceil : average_age.floor
end
