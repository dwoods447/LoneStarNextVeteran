Rails.application.routes.draw do



  get 'frequently_asked_questions/index'

  get 'frequently_asked_questions/new'

  get 'frequently_asked_questions/show'

  get 'users/index'

  get 'users/show'

  get 'users/new'

  get 'users/edit'

  get 'users/update'

  get 'state_benefits/index'

  get 'federal_benefits/index'

  root 'student_kiosk#index'



  resources :student_visits
  get 'student_visits/index'
  get 'student_visits/show'
  get 'student_visits/new'
  get 'student_visits/update'
  get 'student_visits/destroy'


  resources  :certifiers
  resources :users
  resources :students

  get 'students/index'

  get 'students/show'

  get 'students/new'

  get 'students/edit'

  get 'students/update'


  get 'certifiers/new'
  get 'certifiers/index'
  get 'certifiers/update'
  get 'certifiers/destroy'


  ############################# Student Confirm ########################################

  get 'confirm_student/index'

  get 'select_certifier/index'


  ############################ Login Logout Functionality ##########################3

  get 'access/login'
  get  'access/logout'
  get 'admin', :to =>  'student_visits#index'
  post 'access/attempt_login'







############# Student Search Functionality  ########################
  post 'search_students/findStudent'
  get 'search_students/index'

########################### Certifer Student Search Functionality ##################################################
  get 'admin_search_students/index'
  post 'admin_search_students/search_student'
  #get 'admin_search_students/show'

  #get 'admin_search_students/edit'

 # get 'admin_search_students/update'

########################## Student Kiosk #########################################

  get 'student_certifier_lobby/index'
  get 'student_kiosk/index'












  get 'students/student_sign_in'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
