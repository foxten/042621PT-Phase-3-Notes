require 'pry'
# what will ruby return for the following methods?
date = "#{Time.now.day}-#{Time.now.month}-#{Time.now.year}"
puts date

def operator_check
    'this' != 'this'
end

def array_display
 ['this', 'is', 'not', 'an', 'array']
end

# let's write a conditional statement to change our outerwear based on the weather conditions
# if it's sunny, we'll wear shorts and sandals
# if it's raining, we'll wear a poncho and rain boots
# if it's snowing, we'll throw on a robe
# it it's anything else, we'll just grab jeans and a jacket

weather_conditions =  'sunny' 

# if statement
    outerwear = if weather_conditions == 'sunny'
                    'shorts and sandals'
                elsif weather_conditions == 'snowing'
                    'robe'
                elsif weather_conditions == 'raining'
                    'poncho and rain boots'
                else
                    'jeans and a jacket'
                end

# case 
     outerwear = case weather_conditions
                when 'sunny' then 'shorts and sandals'
                when 'snowing' then 'robe'
                when 'raining' then 'poncho and rain boots'
                else 'jeans and a jacket'
                end
    

# let's use a statement modifier to put a statement in the console

# unless our outerwear is set to 'robe', we should say we can throw something on today
puts "I'll wear a #{outerwear} today." unless outerwear == 'robe'

# if our outerwear is set to 'robe', we should say we can stay in since the weather's too rough
puts "The weather's too rough today. Going to stay inside." if outerwear == 'robe'


# THE MAJOR CHALLENGE -> Let's combine all of the things we just did in a single method that'll output our outerwear for each weather condition
# weather_conditions_array =  ['raining', 'snowing', 'sunny', 'cloudy']
weather_conditions_hash = {
    raining: 'a poncho and rain boots',
    snowing: 'robe',
    sunny: 'shorts and sandals',
    cloudy: 'jeans and a jacket'
}

def weather_update weather_conditions
    weather_conditions.each do |w,o|
            if w == :snowing
                puts "The weather's too rough today. Going to stay inside."
            else
                puts "I'll wear #{o} today."
            end
        end
end 

binding.pry