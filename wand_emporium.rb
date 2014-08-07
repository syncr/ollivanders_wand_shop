require './lib/wizard'
require './lib/wand'
require './lib/RandomDialog'
require 'pry'

def intro_text
  intro_strings = ["\n\nWelcome to Ollivander's Wonderful Wizarding Wand Emporium!", "...it is often said that the wand chooses the wizard...", "...provide answers to these questions...", "...and a wand may reveal itself to you...", "Please press any key to introduce yourself."]   
  intro_strings.each do |string|
    puts string
    sleep(1)
    puts "\n"
  end
end

def random_text_long
  long_strings = ["Oh, I don't think this is good", "Wonderful, yes..."," Oh, well I've never heard that one before", "Hmmm. Well you're an odd one aren't you...", "I see, well, I really shouldn't judge, but...well nevermind...", "I see. Well I suppose for some people that would be acceptable.", "Problematic perhaps..."]
  long_strings.sample
end

def random_text_short
  short_strings = ["...hmm...", "Yes.", "Yes. I see...", "Of course...", "...very interesting...", "Hmm...well, alright", "...peculiar...", "Oh....", "Ahh...", "Interesting...", "Hmmmmmmm..."]
  short_strings.sample
end

def dialog_snippet(number)  
  number.times do
    puts random_text_short
    sleep(1)
  end
  puts random_text_long
end

def pause
  
end

# def diagon_alley_security
#   puts "Hmm. Are you a muggle? Yes or No"
#   muggle = gets.chomp
#   if muggle == "Yes"
#     puts "Nothing to see here, carry on!"
#     exit
#   elsif muggle == "No"
# end

def welcome
  system 'clear'
  intro_text
  null = gets.chomp
  system 'clear'
  questions
end

def questions

  puts "What is your Wizard name?"
  name = gets.chomp
  instance = Wizard.new(name)

  puts "\nHello #{instance.name}. I've been expecting you for some time."
#
  puts "So, tell me #{instance.name}, what is it that is most precious to you?"
  wisdom_input = gets.chomp
  instance.calculate_wisdom(wisdom_input)
#
  dialog_snippet(2)

  puts "\n...and would you rather have wealth or power?"
  intelligence_input = gets.chomp
  instance.calculate_intelligence(intelligence_input)
  

  dialog_snippet(3)

  puts "What "

end

welcome


#empty line for GIT