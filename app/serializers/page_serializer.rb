class PageSerializer < ActiveModel::Serializer
  attributes :id, :title, :description

  def id
    object.slug
  end
end
