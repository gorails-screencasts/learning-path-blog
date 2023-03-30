class MoveBodyToActionText < ActiveRecord::Migration[7.0]
  def change
    BlogPost.all.find_each do |blog_post|
      blog_post.update(content: blog_post.body)
    end

    remove_column :blog_posts, :body
  end
end
