class ReportsController < ApplicationController
  def reports
    # This is the number of students seen in the past 6 months
    @six_months = StudentVisit.where(created_at: 6.months.ago..Time.now).count

    # This is the number of students seen in the past year
    @one_year_ago = StudentVisit.where(created_at: 1.year.ago..Time.now).count

 ##################################### Certifying Officials Totals ###########################################

    @all_staff = Certifier.all

    @reason_for_visit = ReasonForVisit.all

  end
end
