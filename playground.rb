def get_contestant_name(data, occupation)
    # code here
    #binding.pry
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