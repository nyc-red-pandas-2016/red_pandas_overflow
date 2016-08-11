class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.integer :voteable_id, null:false
      t.string  :voteable_type, null:false
      t.integer :vote_count, default: 0

      t.timestamps
    end
  end
end
