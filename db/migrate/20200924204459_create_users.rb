class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password_digest
      t.string :avatar, :default => "https://img.icons8.com/ultraviolet/40/000000/among-us.png"
      t.string :discord

      t.timestamps
    end
  end
end
