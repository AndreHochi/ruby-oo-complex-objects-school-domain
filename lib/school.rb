class School

    attr_accessor :name, :roster

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(student_name, grade)
        if @roster[grade]
            @roster[grade].push(student_name)
        else 
            @roster[grade] = [student_name]
        end
    end

    def grade(grade_num)
        @roster[grade_num]
    end

    def sort
        @roster.each do |grade, student_names|
            @roster[grade] = student_names.sort
        end
        @roster
    end
end

test = School.new('whatever')
test.add_student("AC Slater", 10)
test.add_student("AC Slater", 10)
p test.roster