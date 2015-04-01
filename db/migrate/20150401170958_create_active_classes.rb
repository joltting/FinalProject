class CreateActiveClasses < ActiveRecord::Migration
  def change
    create_table :active_classes do |t|
      t.string :name, :limit => 70
      t.string :number, :limit => 10
      t.references :user

      t.timestamps
    end
  end
end
