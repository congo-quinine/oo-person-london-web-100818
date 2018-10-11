# your code goes here

class Person 
  
  attr_reader :name, :happiness
  attr_accessor :bank_account
  
  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end


  def happiness=(happiness)
    @happiness = happiness
      if happiness > 10
         @happiness = 10 
      elsif happiness < 0 
        @happiness = 0
      end
  end  
  
  def hygiene=(hygiene)
    @hygiene = hygiene
      if @hygiene > 10
           @hygiene = 10 
      elsif @hygiene < 0 
          @hygiene = 0
        else
          @hygiene = hygiene
      end
  end
  
  def hygiene
    @hygiene
  end  

  def happy?
    if @happiness > 7
      true 
    else
      false
    end  
  end
  
   def clean?
    if @hygiene > 7
      true 
    else
      false
    end  
  end
  
  def get_paid(salary)
    self.bank_account += salary
    'all about the benjamins'
  end  
  
  def take_bath
   @hygiene += 4
   self.hygiene=(@hygiene)
   "♪ Rub-a-dub just relaxing in the tub ♫"
  end
  
  def work_out 
    @hygiene -= 3
    self.hygiene=(@hygiene)
    @happiness += 2
    self.happiness=(@happiness)
    "♪ another one bites the dust ♫"
  end  
  
  def call_friend(name)
    self.happiness += 3
    name.happiness += 3
    "Hi #{name.name}! It's #{self.name}. How are you?"
  end
 
 def start_conversation(name, topic) 
  if topic == 'politics'
    name.happiness -= 2 
    self.happiness -= 2 
    'blah blah partisan blah lobbyist'
  elsif topic == 'weather'
    name.happiness += 1
    self.happiness += 1  
    'blah blah sun blah rain'
  else
    'blah blah blah blah blah'
  end
   
 end

  
end

