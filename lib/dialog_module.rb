module Dialog
  def Dialog.intro_text
    intro_strings = ["\n\nWelcome to Ollivander's Wonderful Wizarding Wand Emporium!", "\n...It is often said that the wand chooses the wizard...", "...provide answers to these questions...", "...and a wand may reveal itself to you...", "\nPlease press RETURN to introduce yourself."]
    intro_strings.each do |string|
      puts string
      sleep(1)
    end
  end

  def Dialog.random_text_long
    long_strings = ["Oh, I don't think this is good", "Wonderful, yes...", "Odd...I've never heard that one before", "Hmmm. Well you're an odd one aren't you...", "I see, well, I really shouldn't judge, but...well nevermind...", "I see. Well I suppose for some people that would be acceptable.", "Problematic perhaps..."]
    long_strings.sample
  end

  def Dialog.random_text_short
    short_strings = ["...hmm...", "Yes.", "Yes. I see...", "Of course...", "...very interesting...", "Hmm...well, alright", "...peculiar...", "Oh....", "Ahh...", "Interesting...", "Hmmmmmmm..."]
    short_strings.sample
  end

  def Dialog.dialog_snippet(number)
    puts ""
    number.times do
      puts random_text_short
      sleep(1)
    end
    puts random_text_long
    sleep(3)
    system 'clear'
  end
end
