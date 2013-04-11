class CommentVote < ActiveRecord::Base
  validates :comment_id, :uniqueness => { :scope => :user_id }

  belongs_to :comment
  belongs_to :user
end
 
