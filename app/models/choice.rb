class Choice 
  include ActiveModel::Model
  attr_accessor :rock, :string
  attr_accessor :paper, :string
  attr_accessor :scissors, :string

  validates_presence_of :rock
  validates_presence_of :paper
  validates_presence_of :scissors
  
  def comp_choice
    comp_choice = rand()
    if comp_choice <= 0.33
      comp_choice = "rock"
    elsif comp_choice >= 0.34 && comp_choice <= 0.66
      comp_choice = "paper"
    else
      comp_choice = "scissors"
    end
  end
  
  def compare(choice1,choice2)
    if choice1 == choice2 
       "The result is a tie"
    elsif choice1 == "rock" 
      if choice2 == "scissors" 
        "rock wins"
      else 
        "paper wins"
      end
        
    elsif choice1 == "paper" 
      if choice2 == "rock" 
        "paper wins"
      else 
        "scissors wins"
      end 
    
    elsif choice1 == "scissors"
      if choice2 == "rock"
        "rock wins"
      else 
        "scissors win"
      end   
    end
    
  end
end