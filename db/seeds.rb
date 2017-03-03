# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



Campus.delete_all
FederalBenefit.delete_all
StateBenefit.delete_all
Certifier.delete_all
Student.delete_all
StudentVisit.delete_all
User.delete_all
ReasonForVisit.delete_allcls




reason_for_visit = [

    [1, "I changed my degree plan"],
    [2, "I added a class or classes"],
    [3, "I dropped a class or classes"],
    [4, "I didn't recieve full monthly stipend"],
    [5, "I am a new student and need clarification on how to get started using benefits"],
    [6, "I need to turn in required documents"],
    [7, "Other not listed"]

]

user_info = [

    ["User", "One", "user.one@email.com", "user1", "password"],
    ["User", "Two", "user.two@email.com", "user2", "password"],
]

campus_info = [
    [1115, "LSC-CyFair"],
    [1114, "LSC-Kingwood"],
    [1113, "LSC-Montgomery"],
    [1112, "LSC-North Harris"],
    [1111, "LSC-Tomball"],
    [1116, "LSC-University Park"]

]



federal_benefit_info = [
    [999933, "(Chapter 33) - Veteran - POST/911 GI Bill "],
    [999133, "(Chapter 33) - Dependent - POST/911 GI Bill"],
    [999930, "CH 30 - Montgomery GI Bill"],
    [991606, "CH 1606 - Montgomery GI Selected Reserve (MGIB-SR)"],
    [991607, "CH 1607 - Reserve Educational Assistance(REAP)"],
    [999931, "CH 31 - Vocational Rehabilitation and Employement "] ,
    [999935, "CH 35 - Dependents Educational Assistance"],
    [999201, "Military Tuition Assistance"],
    [990001, "I dont have any"]


]

state_benefit_info = [

    [999981, "Hazlewood-Veteran"],
    [999982, "Hazlewood-Legacy"],
    [999983, "Hazlewood-Spouse"],
    [999984, "Hazlewood-Dependent"],
    [990002, "I dont have any"]
]


students_info = [

    [7101357, 1114, "Jamie", "Beck", "850-377-4501" , "JamieSBeck@lonestar.edu", 990001, 999984],
    [7102984, 1113,  "Dawn", "Parsons", "902-201-1551", "DawnJParsons@lonestar.edu", 999201, 990002],
    [7105247, 1111, "Betty", " Plyler", "832-915-1486", "BettyTPlyler@lonestar.edu", 999930, 999981 ],
    [7106965, 1114, "Margeret", " Rodriguez", "832-415-8554", "MargeretRRodriguez@lonestar.edu", 999935, 999983],
    [7108745, 1115,  "Danica ", "Salcido", "713-548-1159", "DanicaJSalcido@lonestar.edu", 999931, 990002 ],
    [7104172, 1116, "Britt", " Goss", "832-415-4225", "BrittTGoss@lonestar.edu", 991606, 999981],
    [7106514, 1112, "Katherine ", " Leonard", "713-511-1515", "KatherineALeonard@lonestar.edu",990001, 999982 ],
    [7107784, 1114, "Michael ", " Marx",  "818-215-4552", "MichaelKMarx@lonestar.edu", 990001, 990002],
    [7195584, 1114, "Kyle ", " Defro",  "713-215-4533", "KyleDefro2@lonestar.edu", 999933, 990002]

]

certifiers_info =[

    [7101357, "Natasha", "Cornu", "Natasha.Cornbu@lonestar.edu", "Ch 33, Ch31, Ch 30, Ch 35, Ch 1606, Ch 1607", true, "./assets/images/sample.png" ],
    [7001121, "Sequoria", "Brown", "Sequoria.Brown@lonestar.edu", "Tuition Assistance" , true, "./assets/images/sample.png"],
    [7251151, "Claudia", "Greenhaw", "Claudia.Greenhaw@lonestar.edu" , "Ch 33, Ch31, Ch 30, Ch 35, Ch 1606, Ch 1607", true,  "./assets/images/sample.png"],
    [7001151, "Trish", "Obrien", "Particia.Obrien@lonestar.edu" , "Ch 33, Ch31, Ch 30, Ch 35, Ch 1606, Ch 1607", true, "./assets/images/sample.png"],
    [7229151, "Alexis", "Davis", "Alexis.C.Davis@LoneStar.edu" , "Coordinator II", true, "./assets/images/sample.png"],
    [7146151, "Siara", "McMahon", "Siara.L.McMahon2@LoneStar.edu" , "Program Manager", true, "./assets/images/sample.png"],
    [7111651, "Steven", "Hall", "Steven.L.Hall @LoneStar.edu" , "System Director of Veteran Affairs", false, "./assets/images/sample.png" ],
    [7311651, "Lynda", "Nguyen", "Lynda.Nguyen@LoneStar.edu" , "Hazelwood Exemption", true, "./assets/images/sample.png"],

]


student_visits_info =[

 [7101357, 7101357, true, "I need to change my degree plan", 1],
 [7195584, 7101357, true, "I added GEOL 1303 ", 2],
 [7108745, 7001151, true, "I dropped Math 1310", 3],
 [7106965, 7146151, true, "I my BAH stiped was not the full amount", 4],
 [7108745, 7001121, true, "I'm a new transfer student and i dont know what to do first.", 5],

]

user = []
campus = []
students = []
state_benefit = []
federal_benefit = []
certifier = []
student_visit = []
reason = []


reason_for_visit.each do |reason_for_visit_id, visit_reason_name|
  reason << ReasonForVisit.create(reason_for_visit_id: reason_for_visit_id, visit_reason_name: visit_reason_name)
end
user_info.each do |first_name, last_name, email_addr, username, password |
 user << User.create(first_name: first_name, last_name: last_name, email: email_addr, username: username, password: password)
end

campus_info.each do |campus_id, campus_name|
  campus << Campus.create(campus_id: campus_id, campus_name: campus_name)
end


state_benefit_info.each do |state_benefit_id, benefit_name|
    state_benefit << StateBenefit.create(state_benefit_id: state_benefit_id, benefit_name: benefit_name)
end


federal_benefit_info.each do |federal_benefit_id, benefit_name|
  federal_benefit << FederalBenefit.create(federal_benefit_id: federal_benefit_id, benefit_name: benefit_name)
end




students_info.each do |student_id, campus_id, first_name,  last_name, phone,  email, federal_benefit_id, state_benefit_id|
  students << Student.create(student_id: student_id, campus_id: campus_id, first_name: first_name, last_name: last_name,  phone: phone, email: email, federal_benefit_id: federal_benefit_id, state_benefit_id: state_benefit_id)
end


certifiers_info.each do |certifier_id, first_name,  last_name, email, benefit_assigned, isavailable, avatar|
  certifier  << Certifier.create(certifier_id: certifier_id,  first_name: first_name, last_name: last_name,  email: email, benefit_assigned: benefit_assigned, IsAvailable: isavailable, avatar:  avatar)
end





student_visits_info.each do |student_id, certifier_id, issignedin, service_requested, reason_for_visit_id|
  student_visit  << StudentVisit.create(student_id: student_id, certifier_id: certifier_id,  isSignedin:  issignedin, service_requested: service_requested, reason_for_visit_id: reason_for_visit_id)
end

