require './lib/wizard'
require './lib/wand'
require './lib/dialog_module'
require 'pry'

def ui_welcome
  Wand.generate_wands
  system 'clear'
  Dialog.intro_text
  gets.chomp
  ui_questions
end

def ui_questions
  system 'clear'
  puts "\nWhat is your Wizard name?"
  name = gets.chomp
  @instance = Wizard.new(name)

  puts "\nGreetings #{@instance.name}. I've been expecting you for some time."
  sleep(3)
  system 'clear'
  puts "\nSo, tell me #{@instance.name}, what is it that is most precious to you?"
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
  puts "\nI've considered your responses, but these decisions can take some time. Please be patient as I discuss you with the wands."
  50.times do |i|
    print "."
    sleep(0.05)
  end
  system 'clear'
  puts "\n\n"
  case Wizard.score  
    when     0..499 then 
        puts "Well, isn't this dreadful. It appears you may actually be a muggle. \nPlease stand still for a moment...\n"
        sleep(1)
        puts "Yes, that's it...\n\n"
        sleep(1)
        puts "STUPEFY!."
        sleep(3)
        puts "After what seems like only a few seconds you awake somewhere on the streets of London. You can't remember the pub, but you surely had quite a bender last night."
        exit
    when   500..801 then your_wand = Wand.deliver_wand(1)
        puts "Well to be honest, this #{your_wand.length} inch #{your_wand.wood} wand with a core of #{your_wand.core} isn't a very impressive specimen but really, it is quite well suited to you."
    when  800..1100 then your_wand = Wand.deliver_wand(2)
        puts "Well to be honest, this #{your_wand.length} inch #{your_wand.wood} wand with a core of #{your_wand.core} isn't a very impressive specimen but really, it is quite well suited to you."
    when 1101..1400 then your_wand = Wand.deliver_wand(3)
        puts "Well to be honest, this #{your_wand.length} inch #{your_wand.wood} wand with a core of #{your_wand.core} isn't a very impressive specimen but really, it is quite well suited to you."
    when 1401..1700 then your_wand = Wand.deliver_wand(4)
        puts "A solid specimen. Good for charms, enchanting, and other non-battle magics. A fine #{your_wand.length} inch #{your_wand.wood} wand with a core of #{your_wand.core}. It is quite well suited to your average talents."
    when 1701..2000 then your_wand = Wand.deliver_wand(5)
        puts "A solid specimen. Good for charms, enchanting, and other non-battle magics. A fine #{your_wand.length} inch #{your_wand.wood} wand with a core of #{your_wand.core}. It is quite well suited to your average talents."
    when 2001..2300 then your_wand = Wand.deliver_wand(6)
        puts "A solid specimen. Good for charms, enchanting, and other non-battle magics. A fine #{your_wand.length} inch #{your_wand.wood} wand with a core of #{your_wand.core}. It is quite well suited to your average talents."
    when 2301..2600 then your_wand = Wand.deliver_wand(7)
        puts "A lovely and capable #{your_wand.length} inch #{your_wand.wood} wand with a core of #{your_wand.core}. It is quite well suited to your impressive talents. Well suited to most any kind of magic and should serve you quite well!"
    when 2601..2900 then your_wand = Wand.deliver_wand(8)
        puts "A lovely and capable #{your_wand.length} inch #{your_wand.wood} wand with a core of #{your_wand.core}. It is quite well suited to your impressive talents. Well suited to most any kind of magic and should serve you quite well!"
    when 2901..3200 then your_wand = Wand.deliver_wand(9)
        puts "A lovely and capable #{your_wand.length} inch #{your_wand.wood} wand with a core of #{your_wand.core}. It is quite well suited to your impressive talents. Well suited to most any kind of magic and should serve you quite well!"
    else your_wand = Wand.deliver_wand(10) 
        puts "\nWell, isn't this stupendous. It would seem that your power rivals the greatest wizards of our time. Perhaps someday you might even challenge the theories of Parlathanx the Bold! This #{your_wand.length} inch #{your_wand.wood} wand with a core of #{your_wand.core} is among the most specatcular I've ever made and it is quite well suited to your most-impressive talents."
    end
    puts "\nThank you for your patronage. Enjoy Hogwarts and visit my shop anytime."
    puts "\n\n ...and with that, Mr. Ollivander scoots you out the door and into the throngs of young wizards shopping in Diagon Alley."
    puts "\n"
  end
ui_welcome
