# switch_network
一键切换WLAN/以太网的powershell脚本
---
### 粗略使用方法
- 双击`SwitchNetwork.ps1`(或 `双击切网.ps1`)文件即可在 `WLAN`/`以太网` 之间切换，但注意确保你的适配器是叫这个名字。

---
### 说明
- 由于windows的安全策略，默认实现制ps脚本双击调用的，可能需要手动开启限制。
- 具体是 `SwitchNetwork.ps1`内部会调用 `SwitchNetworkTool.ps1`,这是为了规避权限问题。
---

### 更详细的使用方法
注意：360害人不浅，如果有拦截请全部通过。
 
1.	配置好后直接双击SwitchNetwork.ps1即可切换网络.
2. （重要;如果是自己安装的powershell7，无视本条；否则用win10自带就需要配置）.
  用管理员权限打开powershell控制台，输入：
  `set-ExecutionPolicy RemoteSigned`
  会被询问是否允许执行脚本，输入Y确认。

3. SwitchNetworkTool.ps1不可改名
4. SwitchNetwork.ps1不建议改名
#### 配置方法:
  1. 打开你的网络连接如图一
  ![image](https://user-images.githubusercontent.com/3946606/219015059-66f30a76-8a0e-486d-986e-0670babcaaa8.png)

 
  2. 找到你要切换的两个网络的名称
  3. 用记事本打开SwitchNetworkTool.ps1，把这俩名字填进去，如图二
 ![image](https://user-images.githubusercontent.com/3946606/219015084-a8171874-18e7-4e89-8946-4d27dfe69aa0.png)

  4. ctrl+s保存关闭。
  5. 完毕。
  6. 每次切换网络会找到当前开着的那个禁用，然后启用没开着的那个。
  7. 如果双击是用记事本打开了，需要关联默认程序：
右键-打开方式
 ![image](https://user-images.githubusercontent.com/3946606/219015123-f8ee02e0-771e-465a-8cb9-bb071595104e.png)

找到这个路径下如图的程序C:\Windows\System32\WindowsPowerShell\v1.0
 ![image](https://user-images.githubusercontent.com/3946606/219015139-c41357cb-75e9-4d20-af7e-43995ece6643.png)

打开即可。





