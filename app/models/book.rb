class Book < ApplicationRecord
   validates :title, presence: true
  validates :body, presence: true
  def change
    create_table :books do |t|
      t.string :title
      t.string :body
      
      t.timestamps
    end
  end  
  
end
