class CreatePostulations < ActiveRecord::Migration[5.2]
  def change
    create_table :postulations do |t|
      t.references :job
      t.references :user
      t.boolean :check, default: false
      t.timestamps
    end
  end
end
