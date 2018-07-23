# Part A
# For this part we want you to make a class that represents a CodeClan student.

# Create a class called Student that takes in a name (String) and a cohort (string - e.g "E18", "G6", etc) when an new instance is created.

class Student

  def initialize (name, cohort)
    @name = name
    @cohort = cohort
  end

# Create a couple of Getter methods, one that returns the name property and one that returns the cohort property of the student.

  def name
    return @name
  end

  def cohort
    return @cohort
  end

# Add in Setter methods to update the students name and what cohort they are in.

  def set_name (name)
    @name = name
  end

  def set_cohort (cohort)
    @cohort = cohort
  end
#
#
#
#
#
#
#
#
#
#
#
#
# # Create a method that gets the student to talk (eg. Returns "I can talk!).
#
#   def talk
#     return "I can talk"
#   end
#
# # Create a method that takes in a students favourite programming language and returns it as part of a string (eg. student1.say_favourite_language("Ruby") -> "I love Ruby").
#
# def say_fav_lang(lang)
#   return "I love #{lang}"
# end
#
end
