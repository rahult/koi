class NavItemSerializer < ActiveModel::Serializer

  attributes :id, :title, :url, :key
  has_many :children, embed: :ids, serializer: NavItemSerializer

end
