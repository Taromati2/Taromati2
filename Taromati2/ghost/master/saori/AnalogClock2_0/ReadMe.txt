AnalogClock.dll Readme
    by Pygmalion

-------------------------------------------------------------------------------
功能:
 AnalogClock.dll为指针时钟SAORI。


参数:
第一参数:
 show:
 显示时钟.

   第二参数:
    入口名

      第三参数:
        显示的横坐标(省略时为0)

      第四参数:
        显示的纵坐标(省略时为0)

      第五参数:
        显示的基准目标(省略时为screen)
        可选值有以下几种:
            以屏幕右上方为基准:  screen
            以主菜右上方为基准:  sakura
            以副菜右上方为基准:  kero
范例: 
   _result=FUNCTIONEX("AnalogClock.dll","show","clock",100,200)  在屏幕(100,200)的位置显示.
   _result=FUNCTIONEX("saori\clock\AnalogClock.dll","show","clock",0,0,"kero")  在副菜的位置显示.

第一参数:
 move:
 移动时钟。

   第二参数:
    移动目标的横坐标(省略时为0)

   第三参数:
    移动目标的纵坐标(省略时为0)

      第四参数:
        显示的基准目标(省略时为screen)
        可选值有以下几种:
            以屏幕右上方为基准:  screen
            以主菜右上方为基准:  sakura
            以副菜右上方为基准:  kero
            以时钟右上方为基准:  me
范例: 
   _result=FUNCTIONEX("AnalogClock.dll","move",100,10,"me")  向右移动时钟100像素,向下移动时钟10像素.

第一参数:
 set:
 设置时钟属性。

   第二参数:
    时钟显示状态: windowstate

        第三参数:
         保持最上层显示: stayontop
         取消保持最上层显示: !stayontop

   第二参数:
    时钟的不透明度: alpha

        第三参数:
         不透明度可选值有以下几种:
            不透明度设为20%:  20%
            不透明度设为40%:  40%
            不透明度设为60%:  60%
            不透明度设为80%:  80%
            不透明度设为100%:  100%
范例: 
   _result=FUNCTIONEX("AnalogClock.dll","set","windowstate","!stayontop") 设置时钟取消最上层显示.
   _result=FUNCTIONEX("AnalogClock.dll","set","alpha","60%") 设置时钟不透明度为60%.

第一参数:
 hide:
 隐藏时钟.
范例: 
   _result=FUNCTIONEX("AnalogClock.dll","hide") 隐藏时钟.


事件:
OnClockTime 双击时钟
  reference0 小时
  reference1 分钟
  reference2 秒

OnClockClose  在时钟菜单中选关闭


使用方法:
 以橘花为例,先将AnalogClock.dll,clock.txt和背景图放入saori下。
 美坂:
 在ai_0.txt中加入

  {$loadsaori("saori\AnalogClock.dll")}

 在ai_2.txt适当的地方加入

  {$saori("AnalogClock.dll","show","clock",100,200)}\n

美坂事件使用方法不明.


 AYA:
 在aya_mouse.dic的适当的地方加入

  _result=FUNCTIONEX("saori\AnalogClock.dll","show","clock",100,200)

  OnClockTime
 {
	"\0\s[0]现在是%(reference0):%(reference1):%(reference2)\e"
 }

  OnClockClose
 {
	"\0\s[0]关闭时钟\e"
 }


clock.txt的规格书:

[rclock]//入口名
background.image,rbg.png //背景图
//时钟中心位置
centre.x,57
centre.y,57

dot.r,2	//时钟轴心的半径
dot.color,0x808080//时钟轴心的颜色

hour.width,5//时针宽度
hour.length,30//时针长度
hour.color,0x808080//时针颜色

minute.width,2//分针宽度
minute.length,40//分针长度
minute.color,0xc0c0c0//分针颜色

second.width,1//秒针宽度
second.length,40 //秒针长度
second.color,0xe60000 //秒针颜色

[clock]//入口名
background.image,7c_face1.png //背景图
//时钟中心位置
centre.x,90
centre.y,90

dot.image,7c_ring1.png//时钟轴心的图片
//时钟轴心位于时钟轴心图片中的位置
dot.x,90
dot.y,90

hour.image,7c_hour1.png//时针的图片
//时钟轴心位于时针图片中的位置
hour.x,90
hour.y,90

minute.image,7c_minute1.png//分针的图片
//时钟轴心位于分针图片中的位置
minute.x,90
minute.y,90

second.image,7c_second1.png//秒针的图片
//时钟轴心位于秒针图片中的位置
second.x,90
second.y,90

规格书中不同指针可用贴图和画线不同方法绘制.
如:
[rclock]
background.image,7c_face1.png 
centre.x,90
centre.y,90

dot.image,7c_ring1.png
dot.x,90
dot.y,90

hour.width,5
hour.length,30
hour.color,0x808080

minute.width,2
minute.length,40
minute.color,0xc0c0c0

second.image,7c_second1.png
second.x,90
second.y,90



履历:
2008/10/25 2.0版发布.
	修正内存泄漏问题,添加多国语言菜单.
        添加显示位置,不透明度等函数设置,添加OnClockClose事件.
2008/7/5 1.3版发布.
	修正分辨率32位下显示错误,添加抗锯齿效果,添加显示位置设定.
2008/6/21 1.2版发布.
	修正png图片的Alpha通道支持,改变了规格书的条目,添加用户设定保存.
2008/6/17 1.1Beta版发布.
	修正指针大小设定,去除原有的刻度和数字.
2008/6/14 1.0版发布.
