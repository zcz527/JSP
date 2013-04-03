# 用jsp+servlet+javabean实现用户注册和登录功能

## 注册模块

该模块由Zhuce.jsp、UserBean.java和UserServlet.java构成。
该模块的模型JavaBean描述用户的注册信息；
该模块视图部分由两个JSP页面构成，一个负责提交用户的注册信息到控制器，另一个负责显示用户是否注册成功的信息；
该模块控制器servlet负责将视图提交的信息写入数据库UserInfo表中，并负责更新视图。
具体流程是用户填写注册信息，通过控制器判断该用户名是否存在，若存在重新跳到注册页面，否则跳到显示用户注册信息页面。
注意的是该模块控制器对象的名称是UserBean(在web.xml里定义的)。

## 登录模块

该模块由Login.jsp、UserBean.java和LoginServlet.java构成。
该模块和注册模块共用一个模型；
该模块视图部分也有两个JSP页面构成，一个负责提交用户的登录信息到控制器，另一个负责显示用户登录是否成功的信息；
该模块控制器servlet负责验证用户名和密码是否正确，并负责更新视图。
具体流程是用户注册信息后登录，若用户名和密码正确，跳到登陆成功页面，否则重新跳到登陆页面。
注意的是该模块控制器对象的名称是Login(在web.xml里定义的)。

## 登录和注册结果显示情况

![Zhuce](/image/Zhuce.png)
![Login](/image/Login.png)
![Success](/image/success.png)
![Fail](/image/Fail.png)

