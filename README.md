# MindfulTime - 记录优化时间

<div align="center">

![License](https://img.shields.io/badge/license-MIT-blue.svg)
![Platform](https://img.shields.io/badge/platform-iOS%20%7C%20Android-lightgrey.svg)
![React Native](https://img.shields.io/badge/React%20Native-0.73-blue.svg)
![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg)

**首个基于"觉察-引导-改变"理论的开源时间管理工具**

用温暖陪伴+温和监督，帮你看见自己的人生状态

[English](./README_EN.md) | 简体中文

</div>

---

## ✨ 核心理念

### 我们的不同

❌ **不是** Forest的免费替代品  
❌ **不是** 冷酷的时间监控工具  
❌ **不是** 批评你"刷太多"的管家  

✅ **是** 温暖的成长陪伴者  
✅ **是** 帮你看见"为什么刷"的觉察器  
✅ **是** 融入中国传统智慧的文化产品  

### 核心创新

```
🎯 记录动机而非时长
   不只问"刷了多久"，更问"为什么刷"

⚡️ 能量条机制
   可视化你的精力状态（0-100）

🌱 三阶梯渐进式提醒
   温柔陪伴→友善提醒→温和监督

💬 朋友式文案
   "累不累？起来倒杯水吧"而非"你刷太多了！"

📊 动机洞察
   "你今天2次都在逃避，你在逃避什么？"
```

---

## 🎬 功能演示

### 主要功能

<table>
<tr>
<td width="33%">
  
**📝 记录动机**
  
记录时选择：
- 累了放松
- 无聊打发时间
- 逃避工作/学习
- 主动学习

帮你看见真实动机

</td>
<td width="33%">

**⚡️ 能量条**

实时显示能量状态：
- 🌟 精力充沛（90-100）
- 😊 状态不错（70-89）
- 😐 还行吧（50-69）
- 😔 有点累了（30-49）
- 💤 快撑不住了（0-29）

</td>
<td width="33%">

**🔔 温柔提醒**

根据时长渐进提醒：
- 30分钟：温柔询问
- 60分钟：友善建议
- 90分钟：温和监督
- 180分钟：必须休息

</td>
</tr>
</table>

### 晚报洞察

```
🌙 今日能量报告

能量变化曲线：
100 ┤                
    │╲               
 65 │ ╲___           
    │     ╲____      
 40 │          ╲____ 
    └───────────────
     8   12   16  20

今天你：
• 刷短视频 3次（3小时）消耗75能量
• 专注工作 2次（1.5小时）恢复35能量

"我说了算"占比：33% ↓10%

动机分析：
你今天主要在"逃避"（2次）
你在逃避什么？工作压力？学习任务？
```

---

## 🚀 快速开始

### 环境要求

```bash
Node.js >= 16
npm >= 8 或 yarn >= 1.22
React Native环境（iOS/Android）
```

### 安装依赖

```bash
# 克隆仓库
git clone https://github.com/yourusername/mindful-time.git
cd mindful-time

# 安装依赖
npm install
# 或
yarn install

# iOS需要安装Pod
cd ios && pod install && cd ..
```

### 运行项目

```bash
# iOS
npm run ios
# 或
yarn ios

# Android
npm run android
# 或
yarn android
```

---

## 📦 技术栈

```
前端框架：React Native + TypeScript
状态管理：Zustand
本地存储：MMKV + SQLite
图表可视化：Victory Native
动画：Reanimated 3
导航：React Navigation
测试：Jest + React Native Testing Library
```

---

## 🎯 产品定位

### 不是什么

- ❌ 不是Forest（我们不种树）
- ❌ 不是Freedom（我们不强制阻断）
- ❌ 不是One Sec（我们不只是深呼吸）

### 是什么

```
人生状态觉察器

从："帮你少刷短视频"
到："帮你看见自己在逃避什么"

从："时间管理工具"
到："成长陪伴系统"
```

---

## 🌟 设计哲学

### 1. 温柔而明确

```
❌ "你已经刷了2小时了，太多了！"
✅ "刷了2小时了，累不累？起来走走吧？"

❌ "你必须停下来！"
✅ "说实话，你需要休息了 ❤️"
```

### 2. 具体行动代替抽象建议

```
❌ "去做点有意义的事"
✅ "站起来倒杯水，看看窗外"

❌ "休息一下吧"
✅ "走到窗边，看看最远的地方，深呼吸3次"
```

### 3. 觉察代替批评

```
❌ "你太沉迷了"
✅ "你今天刷的时候，记得什么了吗？"

❌ "你不应该刷这么多"
✅ "你今天2次都是'逃避'，你在逃避什么？"
```

### 4. 陪伴+监督动态平衡

```
0-30分钟：100%陪伴（静默记录）
30-90分钟：60-80%陪伴（温柔提醒）
90分钟+：20-40%陪伴（温和监督）

MVP固定：50%陪伴 + 50%监督
Phase 2：用户可自定义（10%-90%）
```

---

## 🗺️ 产品路线图

### Phase 1: MVP（Month 1-3）✅ 进行中

- [x] 记录动机功能
- [x] 能量条机制
- [x] 三阶梯渐进式提醒
- [x] "我说了算"占比
- [x] 即时引导系统
- [x] 晚报（能量曲线+动机分析）

### Phase 2: 增长期（Month 4-9）

- [ ] 种树机制（长期激励）
- [ ] 成就系统
- [ ] 用户自定义陪伴-监督比例
- [ ] 数据可视化增强（7日/30日趋势）
- [ ] 深色模式
- [ ] 数据导出（JSON/CSV）

### Phase 3: 成熟期（Month 10-18）

- [ ] AI智能分析（本地模型）
- [ ] 插件系统
- [ ] 国际化（英/日/韩）
- [ ] Web版
- [ ] 浏览器插件

---

## 🤝 参与贡献

我们欢迎所有形式的贡献！

### 贡献方式

- 🐛 提交Bug报告
- 💡 提出新功能建议
- 📝 改进文档
- 🌍 翻译项目
- 💻 提交代码
- 🎨 设计UI/UX

详见 [贡献指南](./CONTRIBUTING.md)

### 贡献者墙

感谢所有贡献者！

<!-- ALL-CONTRIBUTORS-LIST:START -->
<!-- 贡献者列表由 all-contributors 自动生成 -->
<!-- ALL-CONTRIBUTORS-LIST:END -->

---

## 📄 开源协议

本项目采用 [MIT 协议](./LICENSE)

```
MIT License - 你可以：
✅ 商业使用
✅ 修改
✅ 分发
✅ 私人使用

前提是保留版权声明和许可声明
```

---

## 🌍 社区

### 加入我们

- GitHub Discussions：[讨论区](https://github.com/yourusername/mindful-time/discussions)
- Discord：[加入](https://discord.gg/xxxxx)
- Telegram：[加入](https://t.me/mindfultime)
- 微信群：添加微信xxx，备注"MindfulTime"

### 联系方式

- **创始人：** [你的名字]
- **Email：** your-email@example.com
- **Twitter：** [@yourusername](https://twitter.com/yourusername)

---

## ⭐️ Star History

[![Star History Chart](https://api.star-history.com/svg?repos=yourusername/mindful-time&type=Date)](https://star-history.com/#yourusername/mindful-time&Date)

---

## 📊 项目统计

![Alt](https://repobeats.axiom.co/api/embed/xxxxx.svg "Repobeats analytics image")

---

## 💖 支持项目

如果这个项目对你有帮助，请：

- ⭐️ 给项目点个Star
- 🔀 Fork并提交PR
- 📢 分享给你的朋友
- 💰 [赞助我们](https://github.com/sponsors/yourusername)（可选）

---

## 🙏 致谢

灵感来源：
- Forest（专注森林）
- Headspace（冥想）
- Logseq（开源笔记）
- 中国传统文化（儒道佛）

特别感谢：
- 所有贡献者
- 所有提供反馈的用户
- 开源社区

---

<div align="center">

**让改变，从记录开始 🚀**

Made with ❤️ by [你的名字]

</div>
