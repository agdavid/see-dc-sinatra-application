class CreateUsersSites < ActiveRecord::Migration
  def change
    create_table :users_sites do |t|
      t.integer :user_id
      t.integer :site_id
    end
  end
end
