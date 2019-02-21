# code here!


class School

  attr_reader :name, :roster

def initialize(name)
  @name = name
  @roster = {}
end

def name
  @name
end

def add_student(name, grade)
  if roster.has_key?(grade)
    roster[grade] << name
  else
    roster[grade] = []
    roster[grade] << name
  end
end

def grade(grade)
  roster[grade]
end

def sort
  @roster.each do |student, grade|
    grade.sort!
  end
end


end
