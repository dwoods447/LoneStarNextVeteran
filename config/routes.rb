Rails.application.routes.draw do

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

  get 'access/menu'
  get 'access/login'
  get  'access/logout'
  get 'admin', :to =>  'access#menu'
  post 'access/attempt_login'







############# Student Search Functionality  ########################
  post 'search_students/findStudent'
  get 'search_students/index'



########################## Student Kiosk #########################################

  get 'student_certifier_lobby/index'
  get 'student_kiosk/index'












  get 'students/student_sign_in'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
