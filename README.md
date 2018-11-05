# flutter-common-widgets-app

### 使用背景
* 鉴于目前flutter官方庞大的小部件（widget）系统以及api文档，只有文字描述，而没有可视化实例。
* 我们开发这套app,可以系统的看到常用小部件（widget）的用法。
* 辅助初学者更快上手,flutter官方小部件（widget）



### 参考资料

* [flutter-widgets的官方库地址]( https://docs.flutter.kim/widgets/widgets-library.html )
* [flutter-widgets的官方目录集]( http://doc.flutter-dev.cn/widgets/ )
* [sqlitestudio 本地可视化工具] (https://sqlitestudio.pl/index.rvt)

### commit 提交规范
* $git cz

* 用于说明 commit 的类别，只允许使用下面7个标识。

  - feat：新功能（feature）

  - fix：修补bug

  - docs：文档（documentation）

  - style： 格式（不影响代码运行的变动）

  - refactor：重构（即不是新增功能，也不是修改bug的代码变动）

  - test：增加测试

  - chore：构建过程或辅助工具的变动


### 代码规范
* 文件命名规范
	- 文件命名使用下划线命名法，如：hello_world
	- 请使用英文进行命名，不允许使用拼音。命名要求具有可读性，尽量避免使用缩写与数字
	- 未完待续

* 代码编码规范
	- 文件编码统一使用 UTF-8 编码；
	- 前端编码采用首字母小写驼峰法. Widget Class 必须采用首字母大写驼峰法.

### 文件目录结构(以LIb文件说明)

- lib
	- main.dart 入口文件
	- common 公共的method
	- components widget
	- generated
	- model 存放模型, 不应该加入逻辑层
	- router 路由
	- views 展示界面
	- widget (与components概念重合,废弃)

components 用来存放封装的逻辑组件, 文件目录应为, 类比rax

- components
	- hello-world
		- mods	  (可选, 子模块)
		- mocks (可选)
		- utils (可选, 存放暂时的私有method)
		- schema
		- index.dart

