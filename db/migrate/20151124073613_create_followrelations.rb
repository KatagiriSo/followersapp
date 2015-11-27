class CreateFollowrelations < ActiveRecord::Migration
  def change
    create_table :followrelations do |t|
        t.integer :user_id
        t.integer :follow_id
      t.timestamps null: false
    end
  end
end
