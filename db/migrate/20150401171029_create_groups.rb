class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.references :user
      t.references :TeamList
      t.references :ActiveClass

      t.timestamps
    end
  end
end
