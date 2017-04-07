module StudentVisitsHelper
  def certifier_status(boolean, options={})
    options[:true_text] ||= ''
    options[:false_text] ||= ''
    if boolean
      content_tag(:span, options[:true_text], :class => 'available')
    else
      content_tag(:span, options[:false_text], :class => 'unavailable')
    end
  end















   def student_visit_counts(certifier_id, options={})

     if certifier_id

      StudentVisit.where(created_at: Time.parse("8:00am CST")..Time.parse("11:30pm CST")).where(:isSignedin => true).where(:certifier_id => certifier_id ).count
     end


   end



  def one_year_totals
    StudentVisit.where(created_at: 1.year.ago..Time.now).count
  end

  def six_month_totals
    StudentVisit.where(created_at: 6.months.ago..Time.now).count
  end



  def one_year_reason_report_visit_counts(reason_for_visit_id, options={})

    if reason_for_visit_id

      StudentVisit.where(created_at: 6.months.ago..Time.now).where(:isSignedin => false).where(:reason_for_visit_id => reason_for_visit_id).count
    end


  end





  def six_months_reason_report_visit_counts(reason_for_visit_id, options={})

    if reason_for_visit_id

      StudentVisit.where(created_at: 6.months.ago..Time.now).where(:isSignedin => false).where(:reason_for_visit_id => reason_for_visit_id).count
    end


  end

  def thirty_days_report_visit_counts(certifier_id, options={})

    if certifier_id

      StudentVisit.where(created_at: 30.days.ago..Time.now).where(:isSignedin => false).where(:certifier_id => certifier_id ).count
    end


  end







  def six_months_report_visit_counts(certifier_id, options={})

    if certifier_id

      StudentVisit.where(created_at: 6.months.ago..Time.now).where(:isSignedin => false).where(:certifier_id => certifier_id ).count
    end


  end







  def one_year_report_visit_counts(certifier_id, options={})

    if certifier_id

      StudentVisit.where(created_at: 1.year.ago..Time.now).where(:isSignedin => false).where(:certifier_id => certifier_id ).count
    end


  end

end
