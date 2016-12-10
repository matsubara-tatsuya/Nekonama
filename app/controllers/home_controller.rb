class HomeController < ApplicationController
 
  def top
    @message = "ねこねこたち"
      
    @movie = Movie.all
  
  end
 
  def about 
  end
  
  def contact
  end

end
