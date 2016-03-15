class PagesController < ApplicationController
  def home
  end

  def play
  end

  def newCarta
  end

  def start_event
    @playerMount = Array.new
    @cpuMount = Array.new

    Card.all.each do |card|
      if @playerMount.length < 15 && @cpuMount.length < 15
        if (rand(1...10) % 2) == 0
          @playerMount.push(card)
        else
          @cpuMount.push(card)
        end
      else
        if @playerMount.length == 15
          @cpuMount.push(card)
        else
          @playerMount.push(card)
        end
      end
    end

    @playerMount = @playerMount.shuffle
    @cpuMount = @cpuMount.shuffle

    @playerMount
  end
helper_method :start_event


end
