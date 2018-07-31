class Kardashian
  
  #create and initalize your objects here
  attr_accessor :name, :babies, :year
  def initialize(name, babies, year)
    @name = name 
    @babies = babies 
    @year = year
  end #def int
end  #class Kardashian


class Quiz
  
  @@kardashian_questions = []
  @@total_questions = 0
  #this is where we add each object to the array
  
  def self.add_kardashian(kardashian)
    @@kardashian_questions << kardashian
    # @@total_questions += 1
  end 
  
  # questions for baby names
  def self.quiz_question_babies(kardashian)
    puts "How many kids does #{kardashian.name} have?"
    answer = gets.chomp.to_i 
     @@total_questions += 1 
      if answer == kardashian.babies
        @@correct_answers += 1
        puts "Good Job!"
      else 
        puts "Oops! #{kardashian.name} has #{kardashian.babies}.You answered #{answer}."
  end #quiz babies loop
  end #quiz questions
  
  #questions for birth years
  def self.quiz_question_birth_years(kardashian)
    
    puts "What year was #{kardashian.name} born?"
    answer = gets.chomp.to_i
    @@total_questions += 1
      if answer == kardashian.year
        @@correct_answers += 1
        puts "Great job!"
      else 
        puts "Oops! #{kardashian.name} was born in #{kardashian.year}.You answered #{answer}."
      end #if statement
  end #birth year 
  
  #start the quiz
  def self.start_quiz
    @@correct_answers = 0
    
    puts "welkome to the Kardashian arKade!"
    
    @@kardashian_questions.each do |kardashian|
      self.quiz_question_babies(kardashian)
    end #loop
    
    @@kardashian_questions.each do |kardashian|
      self.quiz_question_birth_years(kardashian)
    end #loop
    
    puts "Quiz is over." 
    puts "Your score is #{@@correct_answers}/#{@@total_questions}"
  end #start quiz
  
end 

#create a quiz that either quizzes the number of children and/or birth year (choose one first and then add the other one
#if you really don't want to do the Kardashians you can also do other celebrities
#once your quiz is running it should keep track of the score, asks the user if they want to end, option which quiz

Quiz.add_kardashian(Kardashian.new("Kourtney", 3, 1979))
Quiz.add_kardashian(Kardashian.new("Kim", 3, 1980))
Quiz.add_kardashian(Kardashian.new("Khloe", 1, 1984))
Quiz.add_kardashian(Kardashian.new("Rob", 1, 1987))
Quiz.add_kardashian(Kardashian.new("Kendall", 0, 1995))
Quiz.add_kardashian(Kardashian.new("Kylie", 1, 1997))

Quiz.start_quiz