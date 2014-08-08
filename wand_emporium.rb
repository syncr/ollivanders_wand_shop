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
  system 'clear'
  puts "I've considered your responses, but these decisions can take some time. Please be patient as I discuss you with the wands."
  50.times do |i|
    print "."
    sleep(0.05)
  end
  case Wizard.score
    when 0..299 then puts "Oh. Dreadful. It appears you may actually be a muggle. I'll have to call security."
    when 300..501 then puts "good" #1
    when 500..700 then puts "better" #2
    when 701..900 then puts "best" #3
    when 901..1100 then puts "good" #4
    when 1301..1500 then puts "better" #5
    when 1501..1700 then puts "best" #6
    when 1701..1900 then puts "best" #7
    when 1901..2100 then puts "best" #8
    when 2101..2300 then puts "best" #9
    else puts "Stupendous. Your power rivals the greatest wizards of all time. Perhaps someday you might even challenge the theories of Parlathanx the Bold! What an honor for this shop. Please come back anytime."
    puts
  end

  puts "wis: #{@wisdom_score}, int: #{@intelligence_score}, loy: #{@loyalty_score}"
  puts Wizard.score
end
ui_welcome



#empty line for GIT
