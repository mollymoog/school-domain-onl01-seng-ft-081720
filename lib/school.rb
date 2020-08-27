require 'pry'
class School
  attr_accessor :name, :grade
  attr_reader :school_name, :roster
  
  
  
  def initialize (school_name)
    @school_name = school_name
    @roster = {}
  end

  def add_student (student_name, grade)
    if @roster.include?(grade)
      @roster[grade] << student_name
    else
      @roster[grade] = []
      @roster[grade] << student_name
    end
  end
  
  def grade (student_grade)
    @roster[student_grade]
  end
  
  def sort 
    @roster = @roster.sort.to_h
    @roster.collect.to_h {|grade, name| [grade, name.sort]}
  end
end