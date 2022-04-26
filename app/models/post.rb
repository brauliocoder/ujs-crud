class Post < ApplicationRecord
  validates_presence_of :title, :content

  def self.search(search)
    if search
      self.where("title LIKE ? OR content LIKE ?", "%#{search}%", "%#{search}%")
    else
      @posts = Post.all
    end
  end
end
