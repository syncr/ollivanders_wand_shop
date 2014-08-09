module Dialog
  def Dialog.intro_text
    intro_strings = ["\n\nWelcome to Ollivander's Wonderful Wizarding Wand Emporium!", "\n\n...It is often said that the wand chooses the wizard...", "...provide answers to these questions...", "...and a wand may reveal itself to you...", "\nPlease press RETURN to introduce yourself."]
    intro_strings.each do |string|
      puts string
      sleep(1)
    end
  end

  def Dialog.random_text_long
    long_strings = ["Mmm, I find that a bit troubling...", "Wonderful, yes...", "Odd...I've never heard that one before...", "Hmmm. Well you're are a bit peculiar aren't you...", "I see, well, I really shouldn't judge, but...Yes, well nevermind...", "I see. Well I suppose for some people that would be acceptable.", "I see. Well your response may be problematic..."]
    long_strings.sample
  end

  def Dialog.random_text_short
    short_strings = ["...hmm...", "Yes...", "Yes. I see...", "Of course...", "...very interesting...", "Hmm...well, alright", "...peculiar...", "Oh....", "Ahh...", "...interesting...", "Hmmmmmmm..."]
    short_strings.sample
  end

  def Dialog.dialog_snippet(number)
    puts ""
    number.times do
      print "\t"
      puts random_text_short
      sleep(1)
    end
    print "\t"
    puts random_text_long
    sleep(3)
    system 'clear'
  end
end
