
class School
    attr_accessor :roster
    attr_reader :school

    def initialize(school)
        @school = school
        @roster = {}
    end

    def add_student(name, grade)
        @roster[grade] ||= []
        @roster[grade] << name
    end

    def grade(grade)
        roster[grade]
    end

    def sort 
        @roster.each{|key, value| value.sort!}
    end
end
