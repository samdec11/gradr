Student.delete_all
Assignment.delete_all
Group.delete_all
Teacher.delete_all
Grade.delete_all

t1 = Teacher.create(name: 'Mr Bob', email: 'mrbob@gmail.com', password: 'a', password_confirmation:'a')

g1 = Group.create(name: 'Class 1')
g2 = Group.create(name: 'Class 2')

Student.create(name: 'Sean')
Student.create(name: 'Nicky')
Student.create(name: 'Bryan')
Student.create(name: 'Brian')
Student.create(name: 'Ryan')
Student.create(name: 'Eric')
Student.create(name: 'Alex')
Student.create(name: 'Adi')
Student.create(name: 'Simon')
Student.create(name: 'Chloe')
Student.create(name: 'Jane')
Student.create(name: 'Jill')
Student.create(name: 'Joe')
Student.create(name: 'Tony')
Student.create(name: 'Ben')
Student.create(name: 'Ron')
Student.create(name: 'Ralph')
Student.create(name: 'Sandip')
Student.create(name: 'Shefali')
Student.create(name: 'Stephen')
Student.create(name: 'Matt')
Student.create(name: 'Nick')
Student.create(name: 'Jeff')

Assignment.create(name: 'Chinese history')
Assignment.create(name: 'Algebra 1')
Assignment.create(name: 'Book review 1')
Assignment.create(name: 'English essay')
Assignment.create(name: 'Italian')
Assignment.create(name: 'Geometry')
Assignment.create(name: 'Biography project')
Assignment.create(name: 'Essay assignment')

t1.groups = [g1, g2]