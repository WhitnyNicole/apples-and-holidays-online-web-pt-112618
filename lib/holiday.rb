require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
holiday_hash[:summer][:fourth_of_july][1]
end


def add_supply_to_winter_holidays(holiday_hash, supply)
holiday_hash[:winter].each do |holiday, supplies|
    supplies << supply
  end
end	


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day].push(supply)
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
holiday_hash[:winter].values.flatten
end 

def all_supplies_in_holidays(holiday_hash)
holiday_hash.collect do |season, v|
    puts "#{season.capitalize}:"
    v.collect do |holiday, items|
      puts "  #{holiday.to_s.gsub("_", " ").split.map(&:capitalize).join(' ')}: #{items.join(", ")}"
    end
  end
end

# def all_holidays_with_bbq(holiday_hash)
# bbq_holiday = []
#   holiday_hash.each do |season, v|
#     v.each do |holiday, items|
#       if items.include?("BBQ")
#         bbq_holiday << holiday
#       end
#     end 
#   end
#   bbq_holiday
# end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  holiday_hash.map do |season, holiday|
    holiday.map do |holiday, item|
      holiday if item.include?("BBQ")
    end 
  end.flatten.compact
end













