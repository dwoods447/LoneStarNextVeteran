class CreateReasonForVisits < ActiveRecord::Migration[5.0]
  def up
    create_table :reason_for_visits, :id => false do |t|
      t.integer :visit_reason_id
      t.string :visit_reason_name

      t.timestamps
    end
    add_index("reason_for_visits", "visit_reason_id")
  end

   def down
     drop_table :reason_for_visits
   end
end
