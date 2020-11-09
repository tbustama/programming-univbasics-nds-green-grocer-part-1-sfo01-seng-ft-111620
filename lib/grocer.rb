def find_item_by_name_in_collection(name, collection)
  collection.each do |hash|
    if hash[:item] == name
      return hash
    end
  end
  return nil
end

def consolidate_cart(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
  new_arr = []
  cart.each do |hash|
    hash[:count] = 1
    if !new_arr.include?(hash)
      new_arr << hash
    else
      idx = new_arr.index(hash)
      new_arr[idx][:count] += 1
    end
  end
  return new_arr
end


  