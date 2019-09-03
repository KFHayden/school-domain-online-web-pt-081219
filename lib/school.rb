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
    
    
  
  school = School.new("Bayside High School")
  
end