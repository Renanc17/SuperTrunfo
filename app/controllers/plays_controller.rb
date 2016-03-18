class PlaysController < ApplicationController
  def your_turn
  end

  def cpu_turn
  end

  def result
  end

  def start_game
  end

  #start the game
  def start_event
    #create global arrays
    $playerMount = Array.new
    $cpuMount = Array.new

    #divide the deck in two mounts
    Card.all.each do |card|
      if $playerMount.length < 15 && $cpuMount.length < 15
        if (rand(1...10) % 2) == 0
          $playerMount.push(card)
        else
          $cpuMount.push(card)
        end
      else
        if $playerMount.length == 15
          $cpuMount.push(card)
        else
          $playerMount.push(card)
        end
      end
    end

    #shuffle both mounts
    $playerMount = $playerMount.shuffle
    $cpuMount = $cpuMount.shuffle

  end
  helper_method :start_event

  #compare your card with the cpu card
  def your_request
    $your_card = $playerMount.first
    $cpu_card = $cpuMount.first
    if $playerMount.first.forca < $cpuMount.first.forca
      $cpuMount.delete($cpuMount.first)
      $playerMount.delete($playerMount.first)
      $cpuMount.push($your_card)
      $cpuMount.push($cpu_card)
    else
      $playerMount.delete($playerMount.first)
      $cpuMount.delete($cpuMount.first)
      $playerMount.push($cpu_card)
      $playerMount.push($your_card)
    end
  end
  helper_method :your_request

  #compare cpu card with your card
  def cpu_request
    $your_card = $playerMount.first
    $cpu_card = $cpuMount.first
    if $playerMount.first.velocidade < $cpuMount.first.velocidade
      $cpuMount.delete($cpuMount.first)
      $playerMount.delete($playerMount.first)
      $cpuMount.push($your_card)
      $cpuMount.push($cpu_card)
    else
      $playerMount.delete($playerMount.first)
      $cpuMount.delete($cpuMount.first)
      $playerMount.push($cpu_card)
      $playerMount.push($your_card)
    end
  end
  helper_method :cpu_request

  #register your turn
  def you_play
    $myTurn = true
    $myTurn
  end
  helper_method :you_play

  #register cpu's turn
  def cpu_plays
    $myTurn = false
    $myTurn
  end
  helper_method :cpu_plays


end
