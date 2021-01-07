class GeneratorsController < ApplicationController

  def calc

    @code = params[:code]

    @code_input = "BKT-212"
    @flute = @code_input.first
    @outerliner = @code_input.slice(1)
    @innerliner = @code_input.slice(2)
    @outerpaper = @code_input.slice(4)
    @flutepaper = @code_input.slice(5)
    @innerpaper = @code_input.slice(6)

    if @code_input.slice(5) == "1" || @code_input.slice(5) == "4"
      @fluteliner ="F"
    elsif @code_input.slice(5) == "2" || @code_input.slice(5) == "6" || @code_input.slice(5) == "8"
      @fluteliner ="HPF"
    end
  end


end
