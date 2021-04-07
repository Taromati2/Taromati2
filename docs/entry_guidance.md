### wiki  
[伪春菜后援会]( http://cuc.moe.hm/wiki/ )

### 论坛  
[伪春菜后援会]( http://cuc.moe.hm/ )  
[伪春菜贴吧]( https://tieba.baidu.com/f?kw=%E4%BC%AA%E6%98%A5%E8%8F%9C&ie=utf-8 )

### 视频  
[伪春菜入门教程]( https://www.bilibili.com/video/av57384912 ) by [阿鬼]( https://space.bilibili.com/157388 )

### 入门指引  
[术语与伪春菜架构]( http://cuc.moe.hm/wiki/index.php?%E4%B8%80%E8%88%AC%E4%BD%BF%E7%94%A8%2F%E5%90%8D%E8%A9%9E%E8%A7%A3%E9%87%8B )  
[人格架构]( http://cuc.moe.hm/wiki/index.php?%E4%BA%BA%E5%B7%A5%E7%94%9F%E5%91%BD%2F%E4%BA%BA%E6%A0%BC%E8%A3%BD%E4%BD%9C%E6%A6%82%E8%A6%81 )  
[浅谈SHIORI]( http://cuc.moe.hm/wiki/index.php?%E4%BA%BA%E5%B7%A5%E7%94%9F%E5%91%BD%2FGHOST%2F%E5%81%BDAI%E5%B0%8E%E8%AB%96 )  

### 关于Taromati2  
所用SHIORI：[yaya]( https://github.com/ponapalt/yaya-shiori )  
dic格式规范：经过[dicforma]( https://github.com/Taromati2/Taromati2/blob/master/docs/entry_guidance.md#%E5%BC%80%E5%8F%91%E7%94%A8%E6%9C%BA%E8%83%BD )格式化即可  
所用图片规范：经过[pnggauntlet]( https://pnggauntlet.com/ )压缩即可  
md文档规范：能读即可  
bat、c工具格式规范：能跑即可  

#### 开发用机能  
Taromati2有很多开发用机能来辅助人格开发  
 - 开发者模式  
   通过ssp设置启用开发者功能，随后通过`ctrl+shift+D`勾选SHIORI调试模式来激活或关闭Taromati2中面向开发者的功能  
   [点此直接打开开发者模式]( https://bit.ly/TaroXDbugModOpen )  
 - 打开master目录  
   通过`F8`或双击菜单->设置页->帮助->打开master目录来快速浏览ghost的shiori内容  
 - 开发用快捷键  
   将窗口关注点聚焦在人格上来使用这些快捷键！  
   Taromati2中开发用的快捷键见下：
   * `F4`	shell重新载入  
   * `F5`	shiori重新载入  
   * `F6`	Ontest函式执行  
     无检查的执行在`dic/system/base.dic`中定义的Ontest函式并将结果作樱语执行  
   * `F7`	表达式执行  
     执行任何可能的aya表达式并将结果回显出来并询问处理方式  
     如果你的kikka不是快启版而是完整版，那么开启的不是表达式输入框而是[ghost_terminal]( https://github.com/Taromati2/ghost_terminal )  
   * `F8`	打开master目录  

   详情见双击菜单->设置页->帮助->关于快捷键  
 - dicforma  
   将任何dic文件拖拽给Taromati2：你可以很容易的对辞书内容进行自动缩进，并将不必要的双引号自动换为单引号  
   这个功能有出错的可能，无论如何我仍然建议做好数据备份或通过git等版本控制系统进行全人格的文件管理  
 - 辞书加/解密  
   将任何dic/ayc文件拖拽给Taromati2：如同使用[umeici]( http://umeici.onjn.jp/ )的[辞書の暗号化プログラム]( http://umeici.onjn.jp/files/aycencode1.zip )一般对任意的辞书进行加密  
   ayc_coder对非aya的SHIORI辞书也是支持的！里々、華和梨、甚至美坂辞书均可加/解密  
   解密需要额外的条件以解锁这一功能，敬请摸索触发条件吧。
 - 文本拖拽  
   将任何文本选中并拖拽给Taromati2！  
   对于开发者，可以对这段内容进行更多的操作：  
   * aya形式的换行剔除  
     全部去除`/`后跟随换行的部分  
   * 表达式执行  
     执行任何可能的aya表达式并将结果回显出来并询问处理方式  
   * 樱语执行  
     快速执行言灵！  
   * 快速查询  
     名称是变量还是函数？拖入便可得知  
     在名称是变量时，kikka会告知此变量的值与类型，在变量疑似事件名时，则可以一键打开对应文档  
     感谢无良佬的[DS-47]( http://altitude8d9.ucoz.com/index/ghost_dummy_47/0-48 )，kikka也支持大部分aya内置函数的说明  
