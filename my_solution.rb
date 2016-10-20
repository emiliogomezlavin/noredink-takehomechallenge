require 'csv'

questions_array = []
new_question = {}
students_array = []
new_student = {}

#  get the questions from the CSV file and save them in an array of objects
CSV.foreach('questions.csv') do |row|
	new_question["strand_id"] = row[0].to_i
	new_question["strand_name"] = row[1]
	new_question["standard_id"] = row[2].to_i
	new_question["standard_name"] = row[3]
	new_question["question_id"] = row[4].to_i
	new_question["difficulty"] = row[5].to_f
	questions_array.push(new_question)
	new_question = {}
end

#  get the students details from the CSV file and save them in an array of objects
CSV.foreach('questions.csv') do |row|
	new_student["student_id"] = row[0].to_i
	new_student["question_id"] = row[1].to_i
	new_student["assigned_hours_ago"] = row[2].to_i
	new_student["answered_hours_ago"] = row[3]
	students_array.push(new_student)
	new_student = {}
end

questions_array.shift

#  ask student how many questions he/she wants to answer
puts "Hi there! Welcome to your practice quiz! How many questions would you like to answer for this quiz?"
number_of_questions = gets.chomp.to_i
if (number_of_questions > 0 )
	puts "Awesome! Your quiz will have #{number_of_questions} questions"
else
	puts "Sorry you need to choose at least one question to answer. There's no limit!!"
end

p number_of_questions


# to get the questions we'll keep getting one from each strand until we have enough questions for the quiz
while count < number_of_questions do
	
end


























