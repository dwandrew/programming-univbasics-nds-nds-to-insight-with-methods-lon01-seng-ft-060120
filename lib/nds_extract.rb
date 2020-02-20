$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pp'
# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  row_index = 0
  gross = 0;
  while row_index< directors_database.length
    inner_index=0
    while inner_index<directors_database[row_index][:movies].length;
    gross += directors_database[row_index][:movies][inner_index][:worldwide_grosses] if directors_database[row_index][:name] == director_data
    inner_index +=1
    end
    row_index+=1
end
return gross
end
# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
  result = {}
  nil
end
