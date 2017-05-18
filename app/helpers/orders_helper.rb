module OrdersHelper

  def getItemList(orderid)
    itemlist = Itemlist.where(order_id: orderid).pluck(:itemname)
    return itemlist
  end
  

end