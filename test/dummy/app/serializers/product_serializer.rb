class ProductSerializer < ActiveModel::Serializer

  attributes :id, :name, :thumb
  has_one :category, embed: :id

  def thumb
    image_url(object.product_images.first.image.thumb("50x50").url).gsub("/images/", "") unless object.product_images.blank?
  end

end
