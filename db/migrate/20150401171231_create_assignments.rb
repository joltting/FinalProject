class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      t.references :Problem
      t.references :ActiveClass

      t.timestamps
    end
  end
end
