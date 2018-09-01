class CreateJobs < ActiveRecord::Migration[5.2]
  def change
    create_table :jobs do |t|
      t.string :title
      t.string :description
      t.string :schedule
      t.string :tag
      t.integer :rent
      t.references :postulacion

      t.timestamps
    end
  end
end
