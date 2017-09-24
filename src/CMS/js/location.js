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
                    $ele.siblings('ul').hide().end().next().show();
                    this.flag = false;
                    return;
                }
                $ele.next().hide();
                this.flag = true;
            });
        },
        getProvinceFromMysql: () => {
            $.ajax({
                //省份数据库ul>li写入$(".province")后，data为数组
                url: "http://localhost:8888/province",
                type: "POST",
                success: data => {
                    data = JSON.parse(data);
                    var $ul = $('<ul>');
                    var html = data.map(item => {
                        return `<li>${item.name}</li>`;
                    }).join('');
                    $ul.width("104").html(html).on("click", "li", function() {
                      // $(".location").css({'display':"block",backgroundColor:"white"});
                        $ul.hide();
                        $ul.prev()[0].flag = true;
                        $(".city").next().remove();
                        $(".province").text(this.innerText)
                        $.ajax({
                            url: "http://localhost:8888/city",
                            type: "POST",
                            data: {
                                'province': this.innerText
                            },
                            success: cityData => {
                                cityData = JSON.parse(cityData)
                                var $ul = $('<ul>');
                                var html = cityData.map(item => {
                                    return `<li>${item.name}</li>`;
                                }).join('');
                                $ul.width("104").html(html).css({'display':"block"}).on("click", "li", function() {
                                    $(".city").text(this.innerText)
                                    $("#location").text(this.innerText);
                                    $.cookie('location', this.innerText, {
                                        path: '/',
                                        expires:0.1
                                    })
                                    $ul.hide();
                                    $ul.prev()[0].flag = true;
                                });
                                $(".city").after($ul);
                            }
                        })
                    });
                    $(".province").after($ul);
                }
            })
        },
        //城市数据库ul>li写入$(".city")后
        getCityFromMysql: () => {

        }
    };
});