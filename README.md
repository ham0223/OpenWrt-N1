
# 云编译 OpenWrt-N1 固件

**更新日志**
- 20230226 第一版
- 20230303 取消旁路由模式下的桥接，添加防火墙参数的自定义。
- 20230306 以后的更新日志不发布在由此，见Releases下的固件更新说明。

说明：
- 本项目使用 Github Actions 下载 [Lean](https://github.com/coolsnowwolf/lede) 的 `Openwrt` 源码仓库，进行云编译。
- 本项目看心情更新。想要自己编译，直接Fork后，修改XX.config 跟 xx.yml 文件即可。
- 本项目编译固件适配斐讯 N1 盒子，如需刷机，可直接下载 [releases](https://github.com/woni928/N1-OpenWRT) 其固件。
- 本项目所含插件请看图：

<img width="1274" alt="1-4" src="https://user-images.githubusercontent.com/28220733/220530124-64c21d29-d8ec-458b-aa6a-98ee94277c34.png">


<img width="1092" alt="5-8" src="https://user-images.githubusercontent.com/28220733/220530159-ddb4f785-642e-4d94-85ea-a74039f0220f.png">


## 感谢 ❤️ 以下及其其他众多大佬！
- 源码来源： Lean 的 Openwrt 源码仓库 https://github.com/coolsnowwolf/lede
- 脚本来源： P3TERX 的 GitHub Actions 云编译  https://github.com/P3TERX/Actions-OpenWrt
- 打包脚本： Flippy 的 OpenWrt 打包脚本  https://github.com/ophub/flippy-openwrt-actions
