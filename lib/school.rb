class School
  
  def initialize(name)
    @name = name
    @roster = {}
  end
  
  def roster
    @roster
  end
  
  def add_student(name, grade)
    if @roster[grade]
      if !(@roster[grade].include?(name))
        @roster[grade] << name
      end
    else
      @roster[grade] = []
      @roster[grade] << name
    end
  end
  
  def grade(year)
    @roster.detect do |name, grade|
      if name == year
        grade
      end
    end
  end
  
  school = School.new("Bayside High School")
  
end