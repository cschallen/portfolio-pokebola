class CreateJobs < ActiveRecord::Migration[5.0]
    def change
        create_table :jobs do |t|
            t.string :name
            t.string :function
            t.date :start_time
            t.date :end_time
            t.text :description
        end
    end
end
