Student.delete_all
Assignment.delete_all
Group.delete_all
Teacher.delete_all
Grade.delete_all

t1 = Teacher.create(name: 'Mr Bob', email: 'mrbob@gmail.com', password: 'a', password_confirmation:'a')

g1 = Group.create(name: 'Algebra')
g2 = Group.create(name: 'Calculus')

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

Assignment.create(name: 'Chinese history')
Assignment.create(name: 'Algebra 1')
Assignment.create(name: 'Book review 1')
Assignment.create(name: 'English essay')
Assignment.create(name: 'Italian')
Assignment.create(name: 'Geometry')
Assignment.create(name: 'Biography project')
Assignment.create(name: 'Essay assignment')

t1.groups = [g1, g2]

g1.students = [s1, s2, s3, s4, s5, s6, s7, s8, s9, s10]
g2.students = [s10, s11, s12, s13, s14, s15, s16, s17, s18, s19]