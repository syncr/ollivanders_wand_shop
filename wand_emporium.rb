require './lib/wizard'
require './lib/wand'
require 'pry'

def intro_text
  intro_strings = ["\n\nWelcome to Ollivander's Wonderful Wizarding Wand Emporium!", "\n...It is often said that the wand chooses the wizard...", "...provide answers to these questions...", "...and a wand may reveal itself to you...", "\nPlease press RETURN to introduce yourself."]   
  intro_strings.each do |string|
    puts string
    sleep(1)
  end
end

def random_text_long
  long_strings = ["Oh, I don't think this is good", "Wonderful, yes...", "Odd...I've never heard that one before", "Hmmm. Well you're an odd one aren't you...", "I see, well, I really shouldn't judge, but...well nevermind...", "I see. Well I suppose for some people that would be acceptable.", "Problematic perhaps..."]
  long_strings.sample
end

def random_text_short
  short_strings = ["...hmm...", "Yes.", "Yes. I see...", "Of course...", "...very interesting...", "Hmm...well, alright", "...peculiar...", "Oh....", "Ahh...", "Interesting...", "Hmmmmmmm..."]
  short_strings.sample
end

def dialog_snippet(number)
  puts ""  
  number.times do
    puts random_text_short
    sleep(1)
  end
  puts random_text_long
  sleep(4)
  system 'clear'
end

def ui_welcome
  system 'clear'
  intro_text
  gets.chomp
  
  ui_questions
end

def ui_questions
  system 'clear'
  puts "What is your Wizard name?"
  name = gets.chomp
  instance = Wizard.new(name)

  puts "\nGreetings #{instance.name}. I've been expecting you for some time."

  puts "So, tell me #{instance.name}, what is it that is most precious to you?"
  wisdom_input = gets.chomp
  @wisdom_score = Wizard.calculate_wisdom(wisdom_input)
  dialog_snippet(2)

  puts "\n...and would you rather have wealth or power?"
  intelligence_input = gets.chomp
  @intelligence_score = Wizard.calculate_intelligence(intelligence_input)
  dialog_snippet(3)

  puts "\n...who is your greatest inspiration?"
  loyalty_input = gets.chomp
  @loyalty_score = Wizard.calculate_loyalty(loyalty_input)
  dialog_snippet(4)
  ui_wand_selector
end

def ui_wand_selector

  puts "wis: #{@wisdom_score}, int: #{@intelligence_score}, loy: #{@loyalty_score}"
end

ui_welcome



#empty line for GIT