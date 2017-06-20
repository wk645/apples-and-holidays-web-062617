require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  supply = ""
  holiday_hash.each do |season, holiday|
      holiday.each do |what_holiday, supplies|
          if what_holiday == :fourth_of_july
              supply = supplies[1]
              end
          end
      end
  supply
  
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  
  holiday_hash.each do |season, holiday|
      if season == :winter
          holiday.each do |what_holiday, supplies|
              supplies << supply
              end
          end
      end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  
  holiday_hash.each do |season, holiday|
      if season == :spring
          holiday.each do |what_holiday, supplies|
              supplies << supply
              end
          end
      end
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  
  holiday_hash[season] = {holiday_name => supply_array}
  
holiday_hash

end

def all_winter_holiday_supplies(holiday_hash)
    holiday_hash[:winter].values.flatten
end

def all_supplies_in_holidays(holiday_hash)
    holiday_hash.each do |hash_key, hash_values|
        puts "#{hash_key.capitalize}:"
        hash_values.each do |hash2_key, hash2_values|
            puts "  #{hash2_key.to_s.tr("_"," ").split.map(&:capitalize).join(" ")}: #{hash2_values.join(", ")}"
            end
        end
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  
  new_array = []
  holiday_hash.each do |key1, value1|
      value1.each do |key2, value2|
          if value2.include?("BBQ")
              new_array << key2
              end
          end
      end
  new_array
  

end







