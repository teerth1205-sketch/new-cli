require 'nokogiri'
require 'open-uri'
require 'pry'

require_relative './list.rb'
require_relative './scraper.rb'



class CLI
 @@selected_movies =[]
  def call
    
    Scrape.new.assign_content
    
    get_input
  
  end 
  
  def display_movies 
    puts "here is a list of the IMDB top 100 Movies:"
    puts ""
    puts "" 
    puts List.all.map{|l| l.title}
    puts ""
    puts ""
    puts ""
    puts ""
  end 
  
  def display_selected_movie
     @movie = List.all[@input.to_i - 1]
    puts ''
    puts ''
    puts @movie.title
    puts 
    puts " #{@movie.rating} -------- #{@movie.runtime} ---- #{@movie.genre}"
    puts ''
    puts ''
    puts "Movie info:"
    puts ''
    puts @movie.paragraph
    puts ''
    puts ''
    puts ''
  end 
  
  def get_input
   puts "                                                            "
   puts ""
   puts "select 1 for a list of the top 100 movies "
   puts "Or if you have already selected your watchlist movies and would like to see the list enter 2"
   puts "3 to exit"
    
    input = gets.to_i
   while input < 1 || input > 3
    puts "wrong input try again"
    get_input
   end 
    if input == 1
      list
    elsif input == 2 
      puts ''
      puts @@selected_movies
      get_input
    elsif input == 3
    exit!
    else 
      exit!
    end

  end 

  def list
    input = nil
    
    while input != "exit" 
    display_movies
    puts "now select a movie by inputing a number associated to the movie"
    puts ""
    
    @input = gets.to_i
   
    @@selected_movies
    while @input < 1 || @input > 100
      puts "Sorry that input was incorrect please type in a number from 1 - 100"
      @input = gets.to_i
    end
    display_selected_movie
    watchlist
  end 
  end
  
  
  def watchlist
    puts "1 to go back"
    puts "2 to go to the main menu"
    puts "3 to add movie to watchlist"
    puts "4 to view watchlist"
    puts ""
    input = gets.to_i
    while input < 1 || input > 4
      puts "sorry that was the wrong input try again"
      input = gets.to_i
    end 
    if input == 1 
      list
    elsif input == 2 
      get_input
    elsif input == 3
      @@selected_movies << @movie.title 
      
    elsif input == 4 
    inside_watchlist
  

    end
    
  end 
   
   
 def inside_watchlist
    puts @@selected_movies
    puts""
    puts"1. go back"
    puts"2. go home"
    puts"3. clear watchlist"
    puts"" 
    puts""

    
    input = gets.to_i 
    
  while input > 3 || input < 1  
  puts "wrong input try again"
   inside_watchlist 
  end 
    if input == 1
      list
    elsif input == 2 
      get_input
    elsif input == 3
      @@selected_movies.clear
    end 
  
    
end 
   

 
    
    

  
  
end

