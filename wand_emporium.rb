require './lib/wizard'
require './lib/wand'
# require 'pry'

def welcome
  puts "Welcome to Ollivander's Wonderful Wizarding Wand Emporium!"
  puts "...it is often said that the wand chooses the wizard..."
  puts "...provide answers to these questions and a wand will appear..."
  questions
end

def questions
  puts "What is your favorite color?"
  color = gets.chomp
  Wizard.calculate_wisdom(color)
  puts '#{Wizard.wisdom}'

  puts "What is your favorite city?"
  city = gets.chomp

  puts "What "
end

welcome


#empty line for GIT