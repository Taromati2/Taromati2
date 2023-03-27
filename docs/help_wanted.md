### 请注意  
当你开始一项计划时，请通过[提交issues]( https://github.com/Taromati2/Taromati2/issues/new?assignees=steve02081504&labels=help+wanted+solve&template=help_wanted_slove.yaml&title=help+wanted+solve )并附上`help wanted solve`标签、你接手的项目名与编号、你的预计完成时间以让所有人明白这件事已经有人在做  
超时的`help wanted solve`issue会被我关闭，机会将留给他人  
当然，你也可以在issue下发commit并表示加时  
最多加时三次，单次请勿超过十五天  
同样的，在你开始一件事前，可以移步至[issues板块]( https://github.com/Taromati2/Taromati2/issues )来查看此事是否有人接手  


在其他人完成这个文档的所有项目前，机会总是你的  

#### #1.辞书汉化  
用翻译软件机翻这些辞书中的字符串，并进行人工润色  
质量当然越高越好  
ps：这些辞书是H模块的，在翻译完成后只要有空我便会实装  
如果觉得量大，或许你可以拉别人一起完成  
[文件点此下载]( https://github.com/Taromati2/Taromati2/releases/download/bin_for_hw/H.7z )  

#### #2.代码整理（长期有效）  
我毕竟只是一个极其忙碌的普通人，所以即使各个辞书及其函数极度混乱，我也没时间对此进行调整  
有时间我会进行优化，但也欢迎想做贡献的人改善代码  
改善哪怕一点都好  
 - 修改函数名：改为`模块名称.功能名称`的格式  
 - 修改变量名：改为`模块名称.内容名称`的格式（考虑向前兼容在`dic\system\VersionUpgrade.dic`）  
 - 调整函数或变量名称：拼音、不明意义+数字、中式英语、汉字 -> 英语命名（考虑向前兼容在`dic\system\VersionUpgrade.dic`）  
 - 删除重复内容的函数  
 - 优化函数内容与逻辑（考虑向前兼容在`dic\system\VersionUpgrade.dic`）  

[提交PR]( https://github.com/Taromati2/Taromati2/compare )即可，谢谢  

#### #3.数据库整理（长期有效）  
有时间我会进行优化，但也欢迎想做贡献的人改善数据库  
 - 调整数据库或栏位名称：不明意义+数字、中式英语、简写 -> 英语命名或汉字（考虑向前兼容在`dic\system\VersionUpgrade.dic`）  
 - 删除无用的数据库或栏位  
 - 给所有数据库加入ID项以方便遍历  
 - 笑话辞书的内容移至数据库  

[提交PR]( https://github.com/Taromati2/Taromati2/compare )即可，谢谢  

#### #4.文件整理（长期有效）  
`ghost/data` 与 `ghost/pseudoAI` 等文件夹中的内容极度混乱，尽管自我接手后有所修改，但也好不到哪里去。  
[提交PR]( https://github.com/Taromati2/Taromati2/compare )即可，谢谢  
以下是各文件夹内容所需的修改  
 - `ghost/data`  
   * 将文件按功能分类进子文件夹  
   * 调整文件名称：拼音、不明意义+数字、中式英语 -> 英语命名  
   * 删除不必要的内容  
   * 将提供相同功能的文件进行整合  
   * 调整辞书内容以使用修改后的文件路径&名称  
 - `ghost/pseudoAI`  
   * 删除不必要的内容  
   * 合并文件内容，除去按拼音首字母分类的AI文件  
   * 使AI文件按内容分类  
 - `ghost/sound`  
   * 删除不必要的内容（如果有）  
   * 提供相同功能的文件整合进子文件夹  
   * 调整文件名称：拼音、不明意义+数字、中式英语 -> 英语命名  
   * 调整辞书内容以使用修改后的文件路径&名称  
