define(['text!head'], () => {
  return {
    getCityName:(ele)=>{
      //初始化
      var point = new BMap.Point(116.331398,39.897445);

    	function myFun(result){
    		var cityName = result.name;
    		ele.innerText = (cityName);
    	}
    	var myCity = new BMap.LocalCity();
    	myCity.get(myFun);
    }
  }
})
