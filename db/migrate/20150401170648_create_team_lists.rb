class CreateTeamLists < ActiveRecord::Migration
  def change
    create_table :team_lists do |t|
      t.string :name, :limit => 100

      t.timestamps
    end
  end
end
