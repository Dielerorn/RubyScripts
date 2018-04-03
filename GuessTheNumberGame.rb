#!/usr/bin/ruby
n = rand(1..10)
puts 'Guess the number between 1-10: '
puts 'Wrong! Guess again: ' until gets.to_i == n
puts 'Well guessed!'
