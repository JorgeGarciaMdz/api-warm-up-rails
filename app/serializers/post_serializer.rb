class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :image, :category, :created_at
end
