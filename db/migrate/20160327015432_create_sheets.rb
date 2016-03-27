class CreateSheets < ActiveRecord::Migration
  def change
    create_table :sheets do |t|
      t.string :name
      t.string :attachment

      t.timestamps null: false
    end
  end
end
