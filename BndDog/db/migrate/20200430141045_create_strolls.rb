class CreateStrolls < ActiveRecord::Migration[5.2]
  def change
    create_table :strolls do |t|
      t.belongs_to :dogsitter, index: true
      t.integer :duration
      t.datetime :date
      t.belongs_to :dog, index: true

      t.timestamps
    end
  end
end
