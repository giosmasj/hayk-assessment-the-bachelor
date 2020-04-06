require 'pry'
def get_first_name_of_season_winner(data, season)
  # code here
#   season_winner = data[season].find do |contestant_name|
#     contestant_name['status'] == "Winner"
#   end
# season_winner["name"].split.first
# end
# My way
# data[season].reduce(nil) do |winner, contestant|
#   if contestant["status"] == "Winner"
#     contestant["name"].split[0]
#   else
#     winner
#   end
# end
# end
# Kyle's way

  winning_contestant = data[season].find do |contestant|
    contestant["status"] == "Winner"
  end

  winning_contestant["name"].split[0]
end

# Kyle's way

def get_contestant_name(data, occupation)
  # code here
  # binding.pry
  found_contestant = {}
  data.each do |season, contestants|
    contestant_check = contestants.find do |contestant|
      contestant['occupation'] == occupation
    end
    if contestant_check
      found_contestant = contestant_check
    end
  end
  found_contestant["name"]
end


def count_contestants_by_hometown(data, hometown)
  contestants_per_hometown = 0
  data.each do |season, contestants|
    contestants.map do |contestant|
      if contestant["hometown"] == hometown
        contestants_per_hometown +=1
      end
    end
  end
  contestants_per_hometown
  # binding.pry
  # code here

end

def get_occupation(data, hometown)
  found_contestant = {}
  data.each do |season, contestants|
    contestant_check = contestants.find do |contestant|
      contestant['hometown'] == hometown
    end
    if contestant_check
      found_contestant = contestant_check
    end
  end
  found_contestant["occupation"]
end

def get_average_age_for_season(data, season)
  all_ages = 0
  data[season].map do |contestant|
    # contestants.map do |contestant|
    all_ages += contestant["age"].to_f
  end
  number_of_contestants = data[season].length
      average_age = all_ages.to_f/number_of_contestants
      average_age.round
    # end
  end
