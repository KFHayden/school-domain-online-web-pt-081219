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
    @roster.detect do |a, b|
      if a == year
        return b
      end
    end
  end
  
  def sort
    sorted_roster = {}
    @roster.each do |a, b|
      sorted_roster[a] = b.sort
    end
    sorted_roster
  end
  
  school = School.new("Bayside High School")
  
end