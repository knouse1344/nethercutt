# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



User.create([
	{username: "admin", password: "admin", password_confirmation: "admin"}
])

Question.create([
	{question: "Where is NATO headquarters located?", answer_a: "The United States", answer_b: "Latvia", answer_c: "Belgium", answer_d: "France", answer_correct: "answer_c", factoid: "This centrally located headquarters puts it in close proximity to the former battle against communism.", activity: "What does NATO stand for? Read the NATO Treaty dated 1949."},
	{question: "Who was President at the end of World War II?", answer_a: "Franklin Roosevelt", answer_b: "Theodore Roosevel", answer_c: "Harry Truman", answer_d: "Dwight Eisenhower", answer_correct: "answer_c", factoid: "The US entered WWII after the attacks at Pearl Harbor, Hawaii. This Vice-President assumed the position of President after the death of FDR.", activity: "Under the Constitution, who succeeds the President if he/she should die or become incapacitated?"},
	{question: "What military branches are mentioned in the US Constitution?", answer_a: "Navy and Army", answer_b: "Coast Guard and Air Force", answer_c: "Marines and Air Force", answer_d: "None of the above", answer_correct: "answer_a", factoid: "These two major branches, which are the oldest and largest, are specifically listed in the Constitution.", activity: "What section of the US Constitution mentions these two military branches?"},
	{question: "What was the Missouri Compromise?", answer_a: "An Agreement determining how many votes Missouri should get in Congress", answer_b: "An Agreement between pro-slavery and anti-slavery factions in Congress regulating slavery in western territories", answer_c: "An Agreement between John Adams and Thomas Jefferson over who would govern Missouri", answer_d: "An Agreement between the President and Congress over Missouri statehood", answer_correct: "answer_b", factoid: "This Agreement resulted in the addition of several states under different rules", activity: "Read the Missouri Compromise."},
	{question: "The landmark federal case of Marbury V. Madison established what legal principle?", answer_a: "States can assess income taxes", answer_b: "No state can tax another", answer_c: "The Supreme Court has the right of judicial review", answer_d: "The Supreme Court majority decides the law", answer_correct: "answer_c", factoid: "The right of the Supreme Court is a defining factor in its ability to make legal rulings.", activity: "Learn about the case and understand the Supreme Court’s role under the US Constitution."}
])

