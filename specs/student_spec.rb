require 'minitest/autorun'
require 'minitest/rg'
require_relative '../student.rb'

class StudentTest < MiniTest::Test
  def setup
   @student = Student.new "Ian", 21
 end

 def test_student_name
   assert_equal "Ian", @student.name
 end

 def test_cohort
   assert_equal 21, @student.cohort
 end

 def test_set_name
   @student.name = "Daniel"
   assert_equal "Daniel", @student.name
 end

 def test_set_cohort
   @student.cohort = 22
   assert_equal 22, @student.cohort
 end

 def test_talk
   expected = "Hi I'm Ian and I'm in cohort 21."
   assert_equal expected, @student.talk
 end

 def test_say_favourite_language
   assert_equal "I love Ruby", @student.say_favourite_language("Ruby")
 end
end
