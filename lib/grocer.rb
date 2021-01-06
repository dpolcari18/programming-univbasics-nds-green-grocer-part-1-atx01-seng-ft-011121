require 'pry'

def find_item_by_name_in_collection(name, collection)
  collection.detect do |index_value|
    index_value[:item]==name
  end
end

def consolidate_cart(cart)
  receipt=[]
  cart.each do |index|
    if !find_item_by_name_in_collection(index[:item], receipt)
      index[:count]=1
      receipt.push(index)
    else
      index[:count]+=1
    end
  end
end

  