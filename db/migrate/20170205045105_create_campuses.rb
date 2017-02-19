class CreateCampuses < ActiveRecord::Migration[5.0]
  def up
    create_table :campuses, :id => false do |t|
      t.integer :campus_id
      t.string :campus_name

      t.timestamps
    end
    add_index("campuses", "campus_id")
  end

  def down
    drop_table :campuses
  end
end
