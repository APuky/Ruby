#There is no exception handling in this version, so you better not mistyep your input.


#creates the table
def board(array)
  puts " #{array[0][0]} | #{array[0][1]} | #{array[0][2]}"
  puts "-----------"
  puts " #{array[1][0]} | #{array[1][1]} | #{array[1][2]}"
  puts "-----------"
  puts " #{array[2][0]} | #{array[2][1]} | #{array[2][2]}\n\n"
end

#returns an array with 2 index values
def choice_to_array (num,array)
  array.each_with_index do |element,i|
    element.each_with_index do |value,j|
      if value == num
        return i,j
      end
    end
  end
end

#is called after every turn, returns true if game over
def check_if_over(game_array)
  if game_array[0][0] == game_array[1][0] && game_array[0][0] == game_array[2][0]
    return true
  elsif game_array[0][1] == game_array[1][1] && game_array[0][1] == game_array[2][1]
    return true
  elsif game_array[0][2] == game_array[1][2] && game_array[0][2] == game_array[2][2]
    return true
  elsif game_array[0][0] == game_array[0][1] && game_array[0][0] == game_array[0][2]
    return true
  elsif game_array[1][0] == game_array[1][1] && game_array[1][0] == game_array[1][2]
    return true
  elsif game_array[2][0] == game_array[2][1] && game_array[2][0] == game_array[2][2]
    return true
  elsif game_array[0][0] == game_array[1][1] && game_array[0][0] == game_array[2][2]
    return true
  elsif game_array[1][2] == game_array[1][1] && game_array[1][2] == game_array[2][0]
    return true
  else
    return false
  end
end
#main function
def game(array)
  board(array)

  puts "Player one please choose a cell to put an X in:"
  player_one_choice = gets.chomp
  value_one = choice_to_array(player_one_choice,array)
  array[value_one[0]][value_one[1]] = "X"

  board(array)

  #check if game over
  if check_if_over(array)
    puts "Player One Wins!"
    return
  end

  puts "Player two please choose a cell to put O in:"
  player_two_choice = gets.chomp
  value_two = choice_to_array(player_two_choice,array)
  array[value_two[0]][value_two[1]] = "O"

  board(array)

  #check if game over
  if check_if_over(array)
    puts "Player Two Wins!"
    return
  end

  game(array)

end

game_array=[["1","2","3"],["4","5","6"],["7","8","9"]]
#This is where you start the game.
game(game_array)
