class GamesController < ApplicationController
  def score
    @response = params[:score].upcase.chars
    @letters = params[:letters].split
    @response.each do |letter|
      if @response.count(letter) <= @letters.count(letter)
        @score = 'This word is valid according to the grid'
      else
        @score = 'This word is not valid according to the grid'
      end
    end
  end

  def new
    @letters = ("A".."Z").to_a.shuffle[0,10]
  end
end
