require 'pry'

def find_item_by_name_in_collection(name, collection)
  #QUESTION: why does solution in part 2 include index increments?
  collection.detect do |value|
    value[:item]==name
  end
end

def consolidate_cart(cart)
  #QESTION: why does solution in part 2 include index increments?
  receipt=[]
  cart.each do |cart_items|
    current_item=find_item_by_name_in_collection(cart_items[:item], receipt)
    if current_item
      receipt.each do |receipt_items|
        if receipt_items[:item]==cart_items[:item]
          receipt_items[:count]+=1
        end
      end
    else
      cart_items[:count]=1
      receipt.push(cart_items)
    end
  end
  #binding.pry
  return receipt
end

  