class CreateProblems < ActiveRecord::Migration
  def change
    create_table :problems do |t|
      t.string :name, :limit => 255
      t.string :description, :limit => 1024
      t.datetime :start
      t.datetime :end

      t.timestamps
    end
  end
end
