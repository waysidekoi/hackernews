class CreateCommentVotes < ActiveRecord::Migration
  def change
    create_table :comment_votes, :id => false do |t|
      t.integer :user_id, :comment_id
    end

    add_index(:comment_votes, [:user_id, :comment_id], :unique => true)
  end
end
