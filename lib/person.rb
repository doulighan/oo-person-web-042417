class Person
  attr_reader :name, :happiness, :hygiene
  attr_accessor :bank_account

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def happiness=(n)
    @happiness = n
    @happiness = 10 if n > 10
    @happiness = 0 if n < 0
  end

  def hygiene=(n)
    @hygiene = n
    @hygiene = 10 if n > 10
    @hygiene = 0 if n < 0
  end

  def happy?
    @happiness > 7
  end

  def clean?
    @hygiene > 7
  end

  def get_paid(salary)
    @bank_account += salary
    "all about the benjamins"
  end

  def take_bath
    self.hygiene += 4
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.hygiene -= 3
    self.happiness += 2
    "♪ another one bites the dust ♫"
  end

  def call_friend(person)
    self.happiness += 3
    person.happiness += 3
  "Hi #{person.name}! It's #{self.name}. How are you?"  
  end

  def start_conversation(person, topic)
    if topic == 'politics'
      person.happiness -= 2
      self.happiness -= 2
      'blah blah partisan blah lobbyist'
    elsif topic == 'weather'
      person.happiness += 1
      self.happiness += 1
      'blah blah sun blah rain'
    else
      'blah blah blah blah blah'
    end
  end












end