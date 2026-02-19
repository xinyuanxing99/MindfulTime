# 贡献指南

首先，感谢你愿意为 MindfulTime 做出贡献！🎉

本文档将帮助你了解如何参与项目开发。

---

## 📋 目录

- [行为准则](#行为准则)
- [我能做什么](#我能做什么)
- [开发环境搭建](#开发环境搭建)
- [开发流程](#开发流程)
- [代码规范](#代码规范)
- [提交规范](#提交规范)
- [Pull Request流程](#pull-request流程)
- [Good First Issues](#good-first-issues)

---

## 🤝 行为准则

### 我们的承诺

为了营造开放和友好的环境，我们承诺：

- ✅ 尊重不同的观点和经验
- ✅ 优雅地接受建设性批评
- ✅ 关注对社区最有利的事情
- ✅ 对其他社区成员表示同理心

### 不可接受的行为

- ❌ 使用性化的语言或图像
- ❌ 侮辱性/贬损性评论，人身攻击
- ❌ 公开或私下骚扰
- ❌ 未经许可发布他人私人信息

---

## 💡 我能做什么

### 1. 报告Bug

如果你发现Bug，请：

1. 检查[Issue列表](https://github.com/yourusername/mindful-time/issues)是否已有相关问题
2. 如果没有，创建新Issue，包含：
   - 清晰的标题
   - 详细的描述
   - 复现步骤
   - 期望行为
   - 实际行为
   - 截图（如果适用）
   - 环境信息（OS、React Native版本等）

**Bug报告模板：**

```markdown
**Bug描述**
简短描述bug

**复现步骤**
1. 打开应用
2. 点击'记录'按钮
3. 选择'抖音'
4. 看到错误

**期望行为**
应该弹出记录弹窗

**实际行为**
应用崩溃

**截图**
（如果适用）

**环境信息**
- OS: iOS 16.0
- 设备: iPhone 13
- React Native: 0.73.0
- App版本: 0.1.0
```

---

### 2. 提出新功能

如果你有好的想法，请：

1. 创建Feature Request Issue
2. 描述你的需求和使用场景
3. 说明这个功能如何帮助用户
4. 提供可能的实现方案（可选）

**功能建议模板：**

```markdown
**功能描述**
我希望能够XXX

**使用场景**
当我XXX的时候，我需要XXX

**期望实现**
1. 用户可以...
2. 系统会...
3. 最终...

**替代方案**
（如果有其他实现方式）

**额外说明**
（补充信息）
```

---

### 3. 改进文档

文档贡献同样重要！

可以帮助：
- 修复拼写/语法错误
- 改进表述清晰度
- 补充缺失的文档
- 翻译文档（英文/日文/韩文）
- 添加示例和教程

---

### 4. 提交代码

我们欢迎代码贡献！详见下方[开发流程](#开发流程)。

---

## 🛠️ 开发环境搭建

### 前置要求

```bash
Node.js >= 16
npm >= 8 或 yarn >= 1.22
React Native开发环境（iOS/Android）
```

### React Native环境配置

#### macOS（iOS开发）

```bash
# 安装Homebrew（如果还没有）
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# 安装Node.js
brew install node

# 安装Watchman
brew install watchman

# 安装CocoaPods
sudo gem install cocoapods

# 安装Xcode（通过App Store）
# 安装Xcode Command Line Tools
xcode-select --install
```

#### macOS/Linux/Windows（Android开发）

```bash
# 安装Node.js（macOS用brew，Linux用包管理器，Windows下载安装包）

# 下载并安装Android Studio
# https://developer.android.com/studio

# 配置Android SDK
# 在Android Studio中：SDK Manager > SDK Platforms > Android 13.0 (Tiramisu)
# SDK Tools > Android SDK Build-Tools > 33.0.0

# 配置环境变量（~/.bash_profile 或 ~/.zshrc）
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/platform-tools
```

---

### 克隆项目

```bash
# Fork项目到你的GitHub账号
# 然后克隆你的Fork

git clone https://github.com/你的用户名/mindful-time.git
cd mindful-time

# 添加上游仓库
git remote add upstream https://github.com/yourusername/mindful-time.git
```

---

### 安装依赖

```bash
# 安装npm包
npm install
# 或
yarn install

# iOS安装Pod依赖
cd ios
pod install
cd ..
```

---

### 运行项目

```bash
# iOS
npm run ios
# 或在Xcode中打开ios/MindfulTime.xcworkspace

# Android
npm run android
# 或在Android Studio中打开android文件夹
```

---

### 运行测试

```bash
# 运行所有测试
npm test

# 运行测试并生成覆盖率报告
npm run test:coverage

# 监听模式
npm run test:watch
```

---

### 代码检查

```bash
# ESLint检查
npm run lint

# TypeScript类型检查
npm run type-check

# 自动修复
npm run lint:fix
```

---

## 🔄 开发流程

### 1. 创建分支

```bash
# 先同步上游仓库
git fetch upstream
git checkout main
git merge upstream/main

# 创建新分支
git checkout -b feature/your-feature-name
# 或
git checkout -b fix/bug-description
```

**分支命名规范：**

- `feature/xxx` - 新功能
- `fix/xxx` - Bug修复
- `docs/xxx` - 文档更新
- `style/xxx` - 代码格式调整（不影响功能）
- `refactor/xxx` - 代码重构
- `test/xxx` - 测试相关
- `chore/xxx` - 构建/工具相关

---

### 2. 开发

遵循[代码规范](#代码规范)进行开发。

---

### 3. 测试

```bash
# 运行测试
npm test

# 手动测试
npm run ios  # 或 npm run android
```

确保：
- ✅ 所有测试通过
- ✅ 新功能有对应测试
- ✅ 手动测试功能正常
- ✅ 没有引入新的Bug

---

### 4. 提交代码

遵循[提交规范](#提交规范)：

```bash
git add .
git commit -m "feat: 添加记录动机功能"
```

---

### 5. 推送分支

```bash
git push origin feature/your-feature-name
```

---

### 6. 创建Pull Request

1. 访问你Fork的仓库
2. 点击"Compare & pull request"
3. 填写PR描述（详见[PR流程](#pull-request流程)）
4. 提交PR

---

## 📝 代码规范

### TypeScript规范

```typescript
// ✅ 好的写法
interface User {
  id: string;
  name: string;
  energy: number;
}

function calculateEnergy(duration: number, motivation: string): number {
  // 实现
  return 0;
}

// ❌ 不好的写法
function calc(d, m) {  // 没有类型
  return 0;
}
```

---

### React组件规范

```typescript
// ✅ 好的写法
import React from 'react';
import { View, Text } from 'react-native';

interface EnergyBarProps {
  energy: number;
  maxEnergy: number;
}

export const EnergyBar: React.FC<EnergyBarProps> = ({ energy, maxEnergy }) => {
  const percentage = (energy / maxEnergy) * 100;
  
  return (
    <View>
      <Text>能量：{energy}/{maxEnergy}</Text>
    </View>
  );
};

// ❌ 不好的写法
export default function Bar(props) {  // 没有类型定义
  return <View>{props.energy}</View>;
}
```

---

### 命名规范

```typescript
// 组件：PascalCase
EnergyBar, RecordModal, ReminderPopup

// 函数：camelCase
calculateEnergy, shouldTriggerReminder, analyzeMotivations

// 常量：UPPER_SNAKE_CASE
MAX_ENERGY, DEFAULT_MOTIVATION, REMINDER_INTERVALS

// 文件名：
// 组件：PascalCase.tsx (EnergyBar.tsx)
// 工具：camelCase.ts (calculateEnergy.ts)
// 类型：PascalCase.types.ts (Energy.types.ts)
```

---

### 代码组织

```
src/
├── components/       # 可复用组件
│   ├── EnergyBar/
│   │   ├── index.tsx
│   │   ├── styles.ts
│   │   └── types.ts
│   └── RecordModal/
├── screens/          # 页面
│   ├── Home/
│   ├── Report/
│   └── Settings/
├── store/            # 状态管理
│   ├── energyStore.ts
│   └── recordStore.ts
├── utils/            # 工具函数
│   ├── calculateEnergy.ts
│   └── formatDate.ts
├── types/            # 全局类型定义
│   └── index.ts
└── App.tsx
```

---

### 注释规范

```typescript
/**
 * 计算刷短视频消耗的能量
 * @param duration 时长（分钟）
 * @param motivation 动机（累了/无聊/逃避/学习）
 * @returns 能量变化（负数）
 */
function calculateEnergyLoss(
  duration: number,
  motivation: string
): number {
  // 根据时长阶梯计算
  let baseRate = 0;
  if (duration <= 30) {
    baseRate = 0.5;  // 前30分钟：每分钟-0.5
  }
  // ...
}
```

---

## 📋 提交规范

使用[Conventional Commits](https://www.conventionalcommits.org/)规范：

### 格式

```
<type>(<scope>): <subject>

<body>

<footer>
```

### Type类型

- `feat`: 新功能
- `fix`: Bug修复
- `docs`: 文档更新
- `style`: 代码格式（不影响功能）
- `refactor`: 代码重构
- `perf`: 性能优化
- `test`: 测试相关
- `chore`: 构建/工具相关
- `revert`: 回退

### 示例

```bash
# 新功能
git commit -m "feat: 添加能量条组件"
git commit -m "feat(energy): 实现能量计算引擎"

# Bug修复
git commit -m "fix: 修复记录弹窗无法关闭的问题"
git commit -m "fix(reminder): 修复90分钟提醒未触发"

# 文档
git commit -m "docs: 更新README安装步骤"

# 重构
git commit -m "refactor: 重构能量计算逻辑"

# 性能优化
git commit -m "perf: 优化记录列表渲染性能"
```

---

## 🔀 Pull Request流程

### 1. PR标题

遵循Commit规范：

```
feat: 添加能量条组件
fix: 修复记录弹窗关闭问题
docs: 更新贡献指南
```

---

### 2. PR描述模板

```markdown
## 变更类型
- [ ] Bug修复
- [ ] 新功能
- [ ] 文档更新
- [ ] 代码重构
- [ ] 性能优化
- [ ] 其他

## 变更内容
<!-- 描述你的变更 -->

## 相关Issue
Closes #123

## 测试
<!-- 描述你如何测试的 -->
- [ ] 单元测试通过
- [ ] 手动测试通过
- [ ] 添加了新测试

## 截图（如果适用）
<!-- 添加截图 -->

## 检查清单
- [ ] 代码遵循项目规范
- [ ] 所有测试通过
- [ ] 添加了必要的文档
- [ ] 没有引入新的警告
```

---

### 3. Code Review

- 维护者会审查你的PR
- 可能会提出修改建议
- 及时回复和修改
- 修改后推送到同一分支，PR会自动更新

---

### 4. 合并

PR通过审查后，维护者会合并你的代码。

恭喜，你成功为项目做出了贡献！🎉

---

## 🌟 Good First Issues

适合新手的任务会打上`good first issue`标签。

### 当前Good First Issues

- [ ] 修复文档中的拼写错误
- [ ] 添加单元测试
- [ ] 翻译README（英文）
- [ ] 优化能量条动画
- [ ] 添加深色模式（部分组件）

查看完整列表：[Good First Issues](https://github.com/yourusername/mindful-time/labels/good%20first%20issue)

---

## 🙋 需要帮助？

### 获取帮助的方式

1. **查看文档**
   - [README](./README.md)
   - [架构文档](./ARCHITECTURE.md)
   - [产品方案](./产品完整开发方案_开源版.md)

2. **搜索Issues**
   - 可能已有人遇到相同问题

3. **提问**
   - [GitHub Discussions](https://github.com/yourusername/mindful-time/discussions)
   - [Discord](https://discord.gg/xxxxx)
   - [Telegram](https://t.me/mindfultime)

4. **联系维护者**
   - Email: your-email@example.com
   - Twitter: [@yourusername](https://twitter.com/yourusername)

---

## 🎖️ 贡献者权益

### 所有贡献者

- 名字出现在README的贡献者列表
- 永久记录在项目历史中

### 核心贡献者（3个月+，10+ PR）

- 专属徽章
- 核心贡献者证书
- 参与产品决策
- 推荐信（求职用）

### 维护者（邀请制）

- Commit权限
- Issue/PR管理权限
- 参与技术决策
- 指导新贡献者

---

## 📊 贡献统计

你的贡献会被记录：

- GitHub贡献图
- 项目贡献者排行
- All Contributors列表

---

## 🙏 致谢

感谢每一位贡献者！

你的每一个PR、每一个Issue、每一条评论，都让这个项目变得更好。

---

<div align="center">

**让我们一起打造更好的时间管理工具！** 🚀

Made with ❤️ by the MindfulTime Community

</div>
