# Product Schema
    # t.string   "name"
    # t.integer  "price"
    # t.datetime "created_at",  null: false
    # t.datetime "updated_at",  null: false
    # t.integer  "inventory"
    # t.string   "description"

class Product < ActiveRecord::Base
  has_many :ordered_products
  has_many :orders, :through => :ordered_products
end
