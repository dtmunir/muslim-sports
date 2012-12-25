class AddLeaguesAndUsersAssociation < ActiveRecord::Migration
  def change
    create_table :leagues_users do |t|
      t.integer :user_id
      t.integer :league_id
    end
  end
end
