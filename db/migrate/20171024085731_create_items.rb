class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.date :due_date
      t.text :note

      t.timestamps null: false
    end
  end
end
