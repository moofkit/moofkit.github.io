(function(){jQuery(function(){return window.Application={shuffle:function(t){var n,e,o;for(e=void 0,o=void 0,n=t.length;n;)e=Math.floor(Math.random()*n),o=t[--n],t[n]=t[e],t[e]=o;return t},chart:{ctx:document.getElementById("myChart").getContext("2d"),data:[{value:25,color:"#f7ca00"},{value:25,color:"#ea6f00"},{value:25,color:"#8b3933"},{value:25,color:"#ad1023"}],options:{segmentShowStroke:!0,segmentStrokeColor:"#FFF",segmentStrokeWidth:5,percentageInnerCutout:55,animation:!0,animationSteps:100,animationEasing:"easeOutBounce",animateRotate:!0,animateScale:!1,onAnimationComplete:function(){var t;return t=0,Application.shuffle($("#myBranches").find("li")).each(function(){var n;return n=this,setTimeout(function(){return $(n).fadeIn("slow")},t),t+=400})}},init:function(){var t;return t=new Chart(this.ctx).Doughnut(this.data,this.options)}}},Application.chart.init()})}).call(this);