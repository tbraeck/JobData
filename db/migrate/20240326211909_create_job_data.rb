class CreateJobData < ActiveRecord::Migration[7.1]
  def change
    create_table :job_data do |t|
      t.string :category
      t.string :occupation
      t.integer :average_wage
      t.integer :year
      t.decimal :monetary_value_added

      t.timestamps
    end
  end
end
