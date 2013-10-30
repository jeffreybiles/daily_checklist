class RepetitionMigrationBlahBlah < ActiveRecord::Migration
  def change
    create_table :repetitions do |t|
      t.belongs_to :habit
      t.date :date
      t.boolean :completed

      t.timestamps
    end
  end
end
