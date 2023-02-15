# switch_network
一键切换WLAN/以太网的powershell脚本
---
### 使用方法
- 双击`SwitchNetwork.ps1`(或 `双击切网.ps1`)文件即可在 `WLAN`/`以太网` 之间切换，但注意确保你的适配器是叫这个名字。
- 具体可以查看doc文件，有截图。
---
### 说明
- 由于windows的安全策略，默认实现制ps脚本双击调用的，可能需要手动开启限制。
- 具体是 `SwitchNetwork.ps1`内部会调用 `SwitchNetworkTool.ps1`,这是为了规避权限问题。
