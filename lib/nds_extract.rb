require 'pp'

$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def pretty_print_nds(nds)
  # Change the code below to pretty print the nds with pp
  pp nds
end

# printing directors_database
# pretty_print_nds(directors_database)

def directors_totals(nds)
  # Remember, it's always OK to pretty print what you get *in* to make sure
  # that you know what you're starting with!
  #
  #
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
  result = {
  }
  #
  # Use loops, variables and the accessing method, [], to loop through the NDS
  # and total up all the
  # ...
  # ...
  # ...
  #
  #
  # Be sure to return the result at the end!
  
  result = {}
  i_director = 0
  while i_director < nds.length do
    director = nds[i_director][:name]
    
    i_movie = 0
    result[director] = 0
    
    while i_movie < nds[i_director][:movies].length do
      result[director] += nds[i_director][:movies][i_movie][:worldwide_gross]
      i_movie += 1
    end
    
    i_director += 1
  end
  
  result
end

