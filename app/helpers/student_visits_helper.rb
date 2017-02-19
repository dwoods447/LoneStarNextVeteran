module StudentVisitsHelper
  def certifier_status(boolean, options={})
    options[:true_text] ||= ''
    options[:false_text] ||= ''
    if boolean
      content_tag(:span, options[:true_text], :class => 'true')
    else
      content_tag(:span, options[:false_text], :class => 'false')
    end
  end



   def student_visit_counts(certifier_id, options={})

     if certifier_id

      StudentVisit.where(created_at: Time.parse("8:00am")..Time.parse("11:30pm")).where(:isSignedin => true).where(:certifier_id => certifier_id ).count
     end


   end
end
