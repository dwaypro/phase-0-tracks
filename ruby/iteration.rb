
grades = [100, 101, 49, 89, 92]
new_grades = []
newer_grades = []
puts "original grades:"
p grades


grades.each do |grades| + 10

	extra_credit = grades + 10
	new_grades << extra_credit

end

puts "Extra credit:"
p new_grades

puts "Cause why not:"

grades.map! do |grades|
	grades_plus = grades + 10000 

	newer_grades << grades_plus

	
end
p newer_grades


login_info = {"Sarah" => 'hairyleprachaun426', 'John' => 'awesome55', "Megan" => 'I<3IPA'}

login_info.each do |login, password|

 puts "Broadcasting... #{login} personal info: #{password}"

end

more_grades = [50,70,60,65,69,82,89,93,72,100]
more_grades.delete_if {|s| s < 70}
p more_grades

more_grades.keep_if {|s| s > 70}
p more_grades

more_grades.select! {|num| num.even? }
p more_grades

extra_grades = [] 

mod_more_grades = more_grades.take_while {|i| i > 80}
extra_grades << mod_more_grades
	
p extra_grades
