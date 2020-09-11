class CopyProductPriceIntoLineItem < ActiveRecord::Migration[5.2]
  def up
    add_column :line_items, :item_price, :decimal, precision: 8, scale: 2
    LineItem.all.each do |item|
      product_price = item.product.price
      item.item_price = product_price
      item.save!
    end
  end

  def down
    remove_column :line_items, :item_price
  end
end
