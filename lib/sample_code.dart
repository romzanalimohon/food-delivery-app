void main() {
  List<Map<String, dynamic>> getCartHistoryList = [
    {"id":3,"name":"Chinese Side1", "time":"2023-04-05 11:02:36.616275"},
    {"id":3,"name":"Chinese Side2", "time":"2023-04-05 11:02:36.616275"},

    {"id":3,"name":"Chinese Side1", "time":"2023-04-05 11:02:36.616275"},

    {"id":3,"name":"Chinese Side2", "time":"2023-04-06 11:02:36.616275"},
    {"id":3,"name":"Chinese Side2", "time":"2023-04-07 11:02:36.616275"},
    {"id":3,"name":"Chinese Side4", "time":"2023-04-07 11:02:36.616275"},
  ];

  Map<String, int> cartItemsPerOrder = Map();

  for(int i=0; i<getCartHistoryList.length; i++){
    if(cartItemsPerOrder.containsKey(getCartHistoryList[i]['time'])){
      cartItemsPerOrder.update(getCartHistoryList[i]['time'], (value)=>++value);
    }else{
      cartItemsPerOrder.putIfAbsent(getCartHistoryList[i]['time'], ()=>1);
    }
  }


  List<int> cartOrderTimeToList(){
    return cartItemsPerOrder.entries.map((e)=>e.value).toList();
  }

  List<int> orderTimes = cartOrderTimeToList();

  var saveCounter = 0;
  for(int x = 0; x<cartItemsPerOrder.length; x++){
    for(int y = 0; y<orderTimes[x]; y++){
      print('inner loop y index'+ y.toString());
      print('my order is '+ getCartHistoryList[saveCounter++].toString());
    }
  }

}
