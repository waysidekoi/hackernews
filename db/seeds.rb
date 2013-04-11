


a = User.create(:name => 'ben', :email => 'ben@email.com', :password_hash => 'password')
b = User.create(:name => 'wayne', :email => 'wayne@email.com', :password_hash => 'password')
c = User.create(:name => 'julie', :email => 'julie@email.com', :password_hash => 'password')
d = User.create(:name => 'mike', :email => 'mike@email.com', :password_hash => 'password')

Post.create(:url => 'https://blog.mozilla.org/blog/2013/04/10/gearing-up-for-the-next-chapter/', :title => 'Mozilla\'s Gary Kovacs to step down as CEO', :user => a)
Post.create(:url => 'https://mail.mozilla.org/pipermail/rust-dev/2013-April/003557.html', :title => 'Rust will likely not support tail call optimization ', :user => b)
Post.create(:url => 'http://paidcontent.org/2013/04/09/the-empire-acquires-the-rebel-alliance-mendeley-users-revolt-against-elsevier-takeover/', :title => 'Mendeley users revolt against Elsevier takeover', :user => c)
Post.create(:url => 'http://news.cnet.com/8301-13578_3-57578839-38/irs-claims-it-can-read-your-e-mail-without-a-warrant/', :title => 'IRS claims it can read your e-mail without a warrant ', :user => d)

Comment.create(text: "this post sucks!", user_id: 1, post_id: 1)

