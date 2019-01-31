class PostSerializer < ActiveModel::Serializer
  attributes :id, :image, :title, :description, :like_count
  has_many :comments
  class CommentSerializer < ActiveModel::Serializer
    attributes :id, :content
  end
end
