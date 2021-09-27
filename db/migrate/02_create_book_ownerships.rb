class CreateBookOwnerships < ActiveRecord::Migration[5.2]
    def change
        create_table :book_ownerships do |t|
            t.integer :book_id
            t.string :title
            t.string :author
            t.string :review

            t.timestamps
        end
    end
end