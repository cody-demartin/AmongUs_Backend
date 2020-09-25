class CreateMembership < ActiveRecord::Migration[6.0]
  def change
    create_table :memberships do |t|
      t.references :user 
      t.references :group
    end
  end
end
