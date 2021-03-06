class TodoItem < ActiveRecord::Base
  attr_accessible :title, :card_id, :done
  
  validates :title, :card, presence: true
  
  belongs_to :card, inverse_of: :todo_items
end
