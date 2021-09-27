class BookSerializer < ActiveModel::Serializer
    attributes :id, :title, :author, :review
end