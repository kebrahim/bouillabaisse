class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :password_hash
      t.string :password_salt
      t.string :auth_token
      t.string :role
      t.string :password_reset_token
      t.datetime :password_reset_sent_at
      t.string :confirmation_token
      t.boolean :is_confirmed
      t.boolean :send_emails

      t.timestamps
    end
  end
end
