class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :location
      t.string :position
      t.string :company
      t.string :category

      t.timestamps
    end
  end
end
