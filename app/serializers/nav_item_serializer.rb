class NavItemSerializer < ActiveModel::Serializer

  attributes :id, :title, :url
  has_many :children, embed: :ids, serializer: NavItemSerializer

end
