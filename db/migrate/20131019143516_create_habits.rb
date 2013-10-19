class CreateHabits < ActiveRecord::Migration
  def change
    create_table :habits do |t|
      t.string :title
      t.text :details
      t.boolean :monday
      t.boolean :tuesday
      t.boolean :wednesday
      t.boolean :thursday
      t.boolean :friday
      t.boolean :saturday
      t.boolean :sunday

      t.timestamps
    end
  end
end
