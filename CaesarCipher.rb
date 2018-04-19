#!/usr/bin/ruby
require 'colorize'

class String
  ALPHABET = ("a".."z").to_a

  def caesar_cipher(num)
    self.tr(ALPHABET.join, ALPHABET.rotate(num).join)
  end

end

puts "============================".blue
puts "Welcome to the Caesar Cipher".green
puts "============================".blue
puts "What is the word?"

word = gets.chomp.to_s

encypted  = "#{word}".caesar_cipher(8)
decrypted = "#{word}".caesar_cipher(-8)

puts "Encrypt or Decrypt?"

choice = gets.chomp.to_s.downcase

if choice == "encrypt"
  puts encypted.green
elsif choice == "decrypt"
  puts decrypted.green
else
  puts "Invalid option".red
end
