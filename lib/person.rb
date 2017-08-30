class Person

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def call_friend(friend)
    self.happiness = self.happiness + 3
    friend.happiness = friend.happiness + 3
    return "Hi #{friend.name}! It's #{name}. How are you?"
  end

  def start_conversation(person, topic)
    if topic == "politics"
      self.happiness = self.happiness - 2
      person.happiness = person.happiness - 2
      return "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      self.happiness = self.happiness + 1
      person.happiness = person.happiness + 1
      return "blah blah sun blah rain"
    else
      return "blah blah blah blah blah"
    end   
  end

  def name
    @name
  end

  def bank_account
    @bank_account
  end

  def bank_account=(new_bank_account)
    @bank_account = new_bank_account
  end

  def get_paid(salary_increase)
    @bank_account = @bank_account + salary_increase
    return "all about the benjamins"
  end

  def happiness
    @happiness
  end

  def hygiene
    @hygiene
  end

  def happiness=(new_happiness)
    if new_happiness < 0
      @happiness = 0
    elsif new_happiness > 10
      @happiness = 10
    else
      @happiness = new_happiness
    end
  end

  def happy?
    if @happiness > 7
      true
    else
      false
    end
  end

  def hygiene=(new_hygiene)
    if new_hygiene < 0
      @hygiene = 0
    elsif new_hygiene > 10
      @hygiene = 10
    else
      @hygiene = new_hygiene
    end
  end

  def clean?
    if @hygiene > 7
      true
    else
      false
    end
  end

  def take_bath
    self.hygiene = self.hygiene + 4
    return "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.hygiene = self.hygiene - 3
    self.happiness = self.happiness + 2
    return "♪ another one bites the dust ♫"
  end

end
