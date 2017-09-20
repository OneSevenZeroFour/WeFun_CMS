define(['text!head', 'jquery', 'cookie'], () => {
    return {
        getCityName: (ele) => {
            //初始化
            var point = new BMap.Point(116.331398, 39.897445);

            function myFun(result) {
                var cityName = result.name;
                ele.innerText = (cityName);
            }
            var myCity = new BMap.LocalCity();
            myCity.get(myFun);
        },
        enterList: ($ele) => { 
            $ele[0].flag = true;
            // $ele = $($ele);
            $ele.on("click", function() {
                if (this.flag) {
                    $ele.next().show();
                    this.flag = false;
                    return;
                }
                $ele.next().hide();
                this.flag = true;
            });
        },
        getProvinceFromMysql:()=>{
          $.ajax({
            url:"",
        //省份数据库ul>li写入$(".province")后，data为数组
            success:data=>{
              data = [12,213,4];
              var $ul = $('<ul>');
              var html = data.map(item=>{
                return `<li>${item}</li>`;
              }).join('');
              $ul.html(html);
              $(".province").after($ul);
            }
          })
        },
        //城市数据库ul>li写入$(".city")后
        getCityFromMysql:()=>{

        }
    };
});