class Student
  attr_accessor :name, :cohort

  def initialize name, cohort
    @name = name
    @cohort = cohort
  end

  def talk
    return "Hi I'm #{@name} and I'm in cohort #{@cohort}."
  end

  def say_favourite_language language
    "I love #{language}"
  end

end
