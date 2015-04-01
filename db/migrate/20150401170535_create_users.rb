class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username, :limit => 20
      t.string :password_digest
      t.string :name, :limit => 100
      t.integer :type, default: 1

      t.timestamps
    end
  end
end
