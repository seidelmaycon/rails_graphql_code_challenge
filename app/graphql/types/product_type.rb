module Types
  class ProductType < Types::BaseObject
    field :id, ID, null: false
    field :category, String, null: false
    field :price, Float, null: false
    field :description, String, null: true
    field :images, [Types::ImageType], null: true
  end
end
