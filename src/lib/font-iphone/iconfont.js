(function(window){var svgSprite='<svg><symbol id="icon-shouji" viewBox="0 0 1024 1024"><path d="M754.398928 0h-484.797856C231.344669 0 200.349397 31.103648 200.349397 69.504551v884.990898c0 38.400903 30.995273 69.504551 69.251675 69.504551h484.797856c38.256403 0 69.251676-31.103648 69.251675-69.504551V69.504551C823.650603 31.103648 792.655331 0 754.398928 0z m-242.398928 992.860227c-38.256403 0-69.251676-31.139773-69.251676-69.540676s30.995273-69.504551 69.251676-69.504551c38.256403 0 69.251676 31.139773 69.251676 69.504551 0 38.400903-30.995273 69.540676-69.251676 69.540676z m268.517322-182.070133H243.482678V42.555281h537.034644v768.234813z" fill="" ></path><path d="M605.202568 197.85677L544.042898 306.087349c-16.328512 29.333521-26.299019 48.841036-29.947646 58.522543h-1.047626c-10.765258-23.517392-41.11028-79.077683-91.107317-166.753122h-57.511042l106.966203 176.506879h-87.711564v38.978904h102.811825V488.410358h-102.811825v39.520779h102.811825V627.49171h51.008538v-99.560573h99.163197V488.410358h-99.163197v-75.067805h99.163197v-38.978904h-85.110562l108.013829-176.506879h-54.368165z" fill="" ></path></symbol></svg>';var script=function(){var scripts=document.getElementsByTagName("script");return scripts[scripts.length-1]}();var shouldInjectCss=script.getAttribute("data-injectcss");var ready=function(fn){if(document.addEventListener){if(~["complete","loaded","interactive"].indexOf(document.readyState)){setTimeout(fn,0)}else{var loadFn=function(){document.removeEventListener("DOMContentLoaded",loadFn,false);fn()};document.addEventListener("DOMContentLoaded",loadFn,false)}}else if(document.attachEvent){IEContentLoaded(window,fn)}function IEContentLoaded(w,fn){var d=w.document,done=false,init=function(){if(!done){done=true;fn()}};var polling=function(){try{d.documentElement.doScroll("left")}catch(e){setTimeout(polling,50);return}init()};polling();d.onreadystatechange=function(){if(d.readyState=="complete"){d.onreadystatechange=null;init()}}}};var before=function(el,target){target.parentNode.insertBefore(el,target)};var prepend=function(el,target){if(target.firstChild){before(el,target.firstChild)}else{target.appendChild(el)}};function appendSvg(){var div,svg;div=document.createElement("div");div.innerHTML=svgSprite;svgSprite=null;svg=div.getElementsByTagName("svg")[0];if(svg){svg.setAttribute("aria-hidden","true");svg.style.position="absolute";svg.style.width=0;svg.style.height=0;svg.style.overflow="hidden";prepend(svg,document.body)}}if(shouldInjectCss&&!window.__iconfont__svg__cssinject__){window.__iconfont__svg__cssinject__=true;try{document.write("<style>.svgfont {display: inline-block;width: 1em;height: 1em;fill: currentColor;vertical-align: -0.1em;font-size:16px;}</style>")}catch(e){console&&console.log(e)}}ready(appendSvg)})(window)