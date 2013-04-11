class PostVote < ActiveRecord::Base
  validates :post_id, :uniqueness => { :scope => :user_id}

  belongs_to :post
  belongs_to :user
end
