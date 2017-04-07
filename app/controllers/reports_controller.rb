class ReportsController < ApplicationController
  def reports
    @username = session[:username]
    # This is the number of students seen in the past 6 months
    @six_months = nil

    # This is the number of students seen in the past year
    @one_year_ago = nil

 ##################################### Certifying Officials Totals ###########################################

    @all_staff = Certifier.all

    @reason_for_visit = ReasonForVisit.all

  end
end
