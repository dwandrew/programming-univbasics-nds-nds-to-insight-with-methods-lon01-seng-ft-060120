$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pp'
# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
index=0;
gross = 0
while index< director_data[index][:movies].length do
  gross += director_data[index][:movies][index][:worldwide_gross]
  index +=1
end
return gross
end
# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
  index = 0
  result = {}
  while index<nds.length
    sausage = {nds[index][:name] => gross_for_director(nds)}
    result.merge!(sausage)
    index+=1
  end
  return result    
end
