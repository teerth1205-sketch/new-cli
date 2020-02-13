class CLI

  def call
    puts "select 1 for a list of the top 250 movies 2 to select a genre"
    input


  end 
  def input
    input = gets.to_i
    if input == 1
      list
    else 
      genre
    end 
  end 

  def list
    puts "here is a list of the IMDB top 250 Movies"
    List.new.all
  end 
  def genre
    puts "Select a genre for a list of top movies by genre"
    puts "Action---Drama---Adventure---Comedy"
    if input = "Action"
      hash
    end 
  end 
end 
