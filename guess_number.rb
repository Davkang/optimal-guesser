def guess_number(min, max)
  # You can call the `check` method with a number to see if it
  # is the hidden value.
  #
  # If the guess is correct, it will return 0.
  # If the guess is too high, it will return 1.
  # If the guess is too low, it will return -1.
  #
  # If you call `check` too many times, the program will crash.
  #
  # e.g. if the hidden number is 43592, then
  #
  # check(50000) # => 1
  # check(40000) # => -1
  # check(43592) # => 0
  #
  # When you've figured out what the hidden number is, return it
  # from this method.

  #######################
  # YOUR CODE GOES HERE #
  #######################

  # while min <= max
    puts middle = (min + max)/2
    guess = check(middle)

    if guess == 0
      return middle
    elsif guess == 1
      guess_number(min, middle)
      # max = middle - 1
    elsif guess == -1
      guess_number(middle, max)
      # min = middle + 1
    end
  # end
end
