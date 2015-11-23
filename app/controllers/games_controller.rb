class GamesController < ApplicationController

  def index   
  end

  def play
    
  end

  def result
  end  

  def statitistics
     @games = Game.all
  end  
end
