class CreateTests < ActiveRecord::Migration
  def change
    create_table :tests do |t|
      t.string :name
      t.string :task
      t.boolean :status
      t.timestamps
    end
  end
end
