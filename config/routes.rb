Rails.application.routes.draw do



  resources :frequently_asked_questions
  get 'frequently_asked_questions/index'

  get 'frequently_asked_questions/new'

  get 'frequently_asked_questions/create'

  get 'frequently_asked_questions/destroy'


  get 'reports/reports'

  get 'admin_access/login'

  resources :admin_users, :except => [:show] do
    member do
      get :delete
    end
  end

  resources :reports, :only => [:reports] do

  end




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


  post 'frequently_asked_questions/new', to: 'frequently_asked_questions#create'

  get'frequently_asked_questions/new'
  get'frequently_asked_questions/destroy'


  ################## Admin User Login Logout Functionality #############################

  post 'admin_access/attempt_login'
  get  'admin_access/logout'

  get 'admin_access',  :to  =>  'admin_access#index'



  ############################# Student Confirm ########################################

  get 'confirm_student/index'

  get 'select_certifier/index'


  ############################ User Login Logout Functionality ##########################

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
