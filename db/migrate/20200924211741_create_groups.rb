class CreateGroups < ActiveRecord::Migration[6.0]
  def change
    create_table :groups do |t|
      t.string :map
      t.integer :num_of_impostors
      t.boolean :confirm_ejects
      t.integer :num_of_meetings
      t.integer :em_cd
      t.integer :discussion_time
      t.integer :voting_time
      t.float :player_speed
      t.float :crew_vis
      t.float :impos_vision
      t.integer :kill_cd
      t.string :kill_distance
      t.boolean :visual_tasks
      t.integer :common_tasks
      t.integer :long_tasks
      t.integer :short_tasks
      t.integer :creator_id
      t.integer :user_id
      t.string :skill_level
      t.boolean :mic_required
      t.integer :player_limit

      t.timestamps
    end
  end
end
