require './lib/wizard'
require './lib/wand'
require './lib/dialog_module'
require 'pry'

def ui_welcome
  system 'clear'
  Dialog.intro_text
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
  Dialog.dialog_snippet(2)

  puts "\n...and would you rather have wealth or power?"
  intelligence_input = gets.chomp
  @intelligence_score = Wizard.calculate_intelligence(intelligence_input)
  Dialog.dialog_snippet(3)

  puts "\n...who is your greatest inspiration?"
  loyalty_input = gets.chomp
  @loyalty_score = Wizard.calculate_loyalty(loyalty_input)
  Dialog.dialog_snippet(3)
  ui_wand_selector
end

def ui_wand_selector

  case Wizard.score
    when 300..501 then puts "good"
    when 500..700 then puts "better"
    when 701..900 then puts "best"
    else
    puts "either great or poor"
end
  puts "wis: #{@wisdom_score}, int: #{@intelligence_score}, loy: #{@loyalty_score}"
  puts Wizard.score
end

ui_welcome



#empty line for GIT
