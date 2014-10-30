class Store < ActiveRecord::Base
  attr_accessor :store_name

  $store_list = []

  def new_store(store_name)
    Store.new(store_name)
    
    $store_list.push({store_name: store_name})
  end
end
