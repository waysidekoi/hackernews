class CreatePostVotes < ActiveRecord::Migration
  def change
    create_table :post_votes, :id => false do |t|
      t.integer :user_id, :post_id
    end

    add_index(:post_votes, [:user_id, :post_id], :unique => true)
  end
end
