Student.delete_all
Assignment.delete_all
Group.delete_all
Teacher.delete_all
Grade.delete_all

t1 = Teacher.create(name: 'Mr Bob', email: 'mrbob@gmail.com', password: 'a', password_confirmation:'a')
t2 = Teacher.create(name: 'Mrs Sue', email: 'mrssue@gmail.com', password: 'a', password_confirmation:'a')

g1 = Group.create(name: 'Algebra')
g2 = Group.create(name: 'Calculus')
g3 = Group.create(name: 'English')
g4 = Group.create(name: 'History')

s1 = Student.create(name: 'Sean')
s2 = Student.create(name: 'Nicky')
s3 = Student.create(name: 'Bryan')
s4 = Student.create(name: 'Brian')
s5 = Student.create(name: 'Ryan')
s6 = Student.create(name: 'Eric')
s7 = Student.create(name: 'Alex')
s8 = Student.create(name: 'Adi')
s9 = Student.create(name: 'Simon')
s10 = Student.create(name: 'Chloe')
s11 = Student.create(name: 'Jane')
s12 = Student.create(name: 'Jill')
s13 = Student.create(name: 'Joe')
s14 = Student.create(name: 'Tony')
s15 = Student.create(name: 'Ben')
s16 = Student.create(name: 'Ron')
s17 = Student.create(name: 'Ralph')
s18 = Student.create(name: 'Sandip')
s19 = Student.create(name: 'Shefali')
s20 = Student.create(name: 'Stephen')
s21 = Student.create(name: 'Matt')
s22 = Student.create(name: 'Nick')
s23 = Student.create(name: 'Jeff')

a1 = Assignment.create(name: 'Chinese history')
a2 = Assignment.create(name: 'Algebra 1')
a3 = Assignment.create(name: 'Book review 1')
a4 = Assignment.create(name: 'English essay')
a5 = Assignment.create(name: 'Italian')
a6 = Assignment.create(name: 'Geometry')
a7 = Assignment.create(name: 'Biography project')
a8 = Assignment.create(name: 'Essay assignment')
a9 = Assignment.create(name: 'Algebra 1')
a10 = Assignment.create(name: 'Algebra 1')

gr1 = Grade.create(name: 'A+', value: 10)
gr2 = Grade.create(name: 'A', value: 9)
gr3 = Grade.create(name: 'A-', value: 8)
gr4 = Grade.create(name: 'B+', value: 7)
gr5 = Grade.create(name: 'B', value: 6)
gr6 = Grade.create(name: 'B-', value: 5)
gr7 = Grade.create(name: 'C+', value: 4)
gr8 = Grade.create(name: 'C', value: 3)
gr9 = Grade.create(name: 'C-', value: 2)
gr10 = Grade.create(name: 'D', value: 1)
gr11 = Grade.create(name: 'F', value: 0)

t1.groups = [g1, g2]
t2.groups = [g3, g4]

g1.students = [s1, s2, s3, s4, s5, s6, s7, s8, s9, s10]
g2.students = [s10, s11, s12, s13, s14, s15, s16, s17, s18, s19]
g3.students = [s15, s16, s17, s18, s19, s20, s21, s22, s23]

s1.assignments << a2
s2.assignments << a9
s3.assignments << a10

g1.assignments = [a2, a9, a10]

