// 配置
// 依赖
require.config({
	urlArgs:'v=' +Date.now(),
	// baseUrl:''
	paths:{
		jquery:'../lib/jquery-3.2.1',
		gdszoom:'../lib/jquery-gdsZoom/jquery.gdsZoom',
		text:'../lib/text',
		head:'../html/header.html',
		jacklunbo:'../lib/new.carousel/new.carousel',
		foot:'../html/footer.html',
		common:'../lib/common',
		headers:'./headers',
		'cookie':'../lib/plugin/js.cookie'
	},
	shim:{
		// gdszoom依赖jquery
		headers:['jquery'],
		gdszoom:['jquery'],
		jacklunbo:['jquery'],
		cookie:{
			exports:'cookie'
		}
	// 	lunbo:['jquery'],
	// 	lunbo02:['jquery']
	}
});