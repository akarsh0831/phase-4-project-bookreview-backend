class BookOwnershipSerializer < ActiveModel::Serializer
    belongs_to :book
    attributes :id, :book_id
end