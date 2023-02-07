# love_say🍟
写给女朋友的情话小项目，每天给女朋友通过邮件发送情话

# 快速开始📕

修改`application.yaml`配置：

```yaml
mail:
  ...
  username: 你的QQ企业邮箱账户
  password: 你的企业密码
```

```yaml
# 数据源配置
datasource:
  username: 数据库用户名
  password: 数据库密码
```

```yaml
# 邮件发送内容的信息
recipient:
  sendToEmail: 你对象的邮箱号
  sendFromName: 发件人姓名
```
时间戳配置：

您需要修改`TimeInfo.java`文件中的常量`beginDaydiff`为你运行或部署项目时的数字（1970年1月1日到现在的天数）：

```java
// 1970年1月1日到写下此程序时间隔的时间天数
// 利用这个值在数据库中动态的更新每天情话的id
private int beginDaydiff = 19350;
```

另外，如果你也想每天收到一封测试邮件，可以在`TimingController`添加上你的邮箱信息

之后，导入项目下面的`lovesay.sql`文件，运行`EmailSendingApplication.java`启动SpringBoot项目即可！

如果您正确配置时间戳，程序的算法会根据时间的递增依次选取数据表中的内容，所以请保证数据库充足！

# 部署🛹

部署方法请参考此博客

https://blog.csdn.net/Gherbirthday0916/article/details/128431356