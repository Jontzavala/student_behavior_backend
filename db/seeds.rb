# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
homeroom = Course.create(name:"Homeroom 7:30am-8:00am");
period_1 = Course.create(name:"Spanish 1 8:00am-9:30am");

johnny_smith = Student.create(name:"Johnny Smith", seat_number:"1", course: homeroom);
leo_james = Student.create(name:"Leo James", seat_number:"1", course: period_1);
thomas_shelby = Student.create(name:"Thomas Shelby", seat_number:"2", course: period_1);

Behavior.create(behavior_notes:"He was good today", date: DateTime.strptime('12/03/2021', '%m/%d/%Y'), student: johnny_smith);
Behavior.create(behavior_notes:"He was bad today", date: DateTime.strptime('12/03/2021', '%m/%d/%Y'), student: leo_james);
Behavior.create(behavior_notes:"N/A", date: DateTime.strptime('12/03/2021', '%m/%d/%Y'), student: thomas_shelby);