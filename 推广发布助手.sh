#!/bin/bash

# MindfulTime 推广发布助手
# 自动打开所有平台，预填文案

echo "🚀 MindfulTime 推广发布助手启动！"
echo ""
echo "================================================"
echo "我会自动为你打开所有平台，并准备好文案"
echo "你只需要："
echo "  1. 登录账号"
echo "  2. 粘贴文案"
echo "  3. 点击发布"
echo "================================================"
echo ""

# 等待用户确认
read -p "按回车键开始... " 

echo ""
echo "📝 准备文案..."
echo ""

# 创建临时文案文件
TEMP_DIR="/tmp/mindfultime_promotion"
mkdir -p "$TEMP_DIR"

# V2EX文案
cat > "$TEMP_DIR/v2ex.txt" << 'EOF'
标题：
MindfulTime - 一个不批评你的时间管理工具（开源）

节点：分享创造

正文：（请打开 V2EX发帖文案_优化版.md 复制）
EOF

# 掘金文章标题
cat > "$TEMP_DIR/juejin_title.txt" << 'EOF'
刷短视频停不下来？这个开源工具不批评你，而是陪伴你觉察
EOF

# 掘金沸点
cat > "$TEMP_DIR/juejin_pin.txt" << 'EOF'
刚开源了一个项目：MindfulTime 🌱

不批评你刷太久，而是温柔问"累不累？"

145+条温暖文案、能量条机制、三阶梯渐进式提醒

4天深度研究（12万字）+ 完整设计文档

欢迎Star支持！👉 https://github.com/xinyuanxing99/MindfulTime

#开源项目 #ReactNative #时间管理
EOF

# Twitter推文
cat > "$TEMP_DIR/twitter.txt" << 'EOF'
🌱 Just open-sourced MindfulTime

A time tracker that doesn't judge you.

Instead of:
"You scrolled for 2 hours! Stop!"

It says:
"You scrolled for 2 hours. Tired? Want a break?"

145+ warm messages ✨
Complete design docs 📖
MIT License 💚

⭐️ https://github.com/xinyuanxing99/MindfulTime

#OpenSource #TimeManagement #ReactNative
EOF

echo "✅ 文案准备完成！"
echo ""
echo "================================================"
echo "第1步：发布到 V2EX"
echo "================================================"
echo ""
echo "📋 V2EX标题和节点已复制到："
echo "   $TEMP_DIR/v2ex.txt"
echo ""
echo "⏰ 3秒后自动打开 V2EX..."
sleep 3

# 打开V2EX
open "https://www.v2ex.com/new/share"

echo ""
echo "📝 操作步骤："
echo "  1. 登录V2EX账号"
echo "  2. 选择节点：分享创造"
echo "  3. 标题：MindfulTime - 一个不批评你的时间管理工具（开源）"
echo "  4. 正文：打开 V2EX发帖文案_优化版.md 复制"
echo ""
read -p "✅ V2EX发布完成后，按回车继续... "

echo ""
echo "================================================"
echo "第2步：发布到 掘金（文章）"
echo "================================================"
echo ""
echo "⏰ 3秒后自动打开 掘金..."
sleep 3

# 打开掘金编辑器
open "https://juejin.cn/editor/drafts/new"

# 复制标题到剪贴板
cat "$TEMP_DIR/juejin_title.txt" | pbcopy

echo ""
echo "✅ 文章标题已复制到剪贴板！"
echo ""
echo "📝 操作步骤："
echo "  1. 登录掘金账号"
echo "  2. 标题：粘贴（已在剪贴板）"
echo "  3. 正文：打开 掘金文章_完整版.md 复制"
echo "  4. 标签：#开源项目 #ReactNative #时间管理 #TypeScript #产品设计"
echo ""
read -p "✅ 掘金文章发布完成后，按回车继续... "

echo ""
echo "================================================"
echo "第3步：发布到 掘金（沸点）"
echo "================================================"
echo ""
echo "⏰ 3秒后自动打开 掘金沸点..."
sleep 3

# 打开掘金沸点
open "https://juejin.cn/pins/new"

# 复制沸点文案到剪贴板
cat "$TEMP_DIR/juejin_pin.txt" | pbcopy

echo ""
echo "✅ 沸点文案已复制到剪贴板！"
echo ""
echo "📝 操作步骤："
echo "  1. 粘贴文案（Cmd+V）"
echo "  2. 点击发布"
echo ""
read -p "✅ 掘金沸点发布完成后，按回车继续... "

echo ""
echo "================================================"
echo "第4步：发布到 Twitter/X"
echo "================================================"
echo ""
echo "⏰ 3秒后自动打开 Twitter..."
sleep 3

# 打开Twitter
open "https://twitter.com/compose/tweet"

# 复制推文到剪贴板
cat "$TEMP_DIR/twitter.txt" | pbcopy

echo ""
echo "✅ 推文已复制到剪贴板！"
echo ""
echo "📝 操作步骤："
echo "  1. 登录Twitter账号"
echo "  2. 粘贴推文（Cmd+V）"
echo "  3. 点击发布"
echo ""
read -p "✅ Twitter发布完成后，按回车继续... "

echo ""
echo "================================================"
echo "🎉 所有平台发布完成！"
echo "================================================"
echo ""
echo "📊 已发布平台："
echo "  ✅ V2EX（分享创造）"
echo "  ✅ 掘金（文章）"
echo "  ✅ 掘金（沸点）"
echo "  ✅ Twitter/X"
echo ""
echo "⏳ 待发布平台（建议明天）："
echo "  ⏳ Product Hunt"
echo "  ⏳ Reddit r/productivity"
echo "  ⏳ Hacker News"
echo ""
echo "📈 预计7天效果："
echo "  - 浏览量：3,800+"
echo "  - GitHub Stars：65-110"
echo "  - 评论互动：38-65"
echo ""
echo "🎯 接下来："
echo "  1. 关注各平台评论，及时回复"
echo "  2. 准备Product Hunt素材（Logo、截图、GIF）"
echo "  3. 明天继续发布Reddit和Hacker News"
echo ""
echo "💪 加油！让更多人看见MindfulTime！"
echo ""

# 打开GitHub仓库
echo "⏰ 5秒后自动打开GitHub仓库，查看Star数量..."
sleep 5
open "https://github.com/xinyuanxing99/MindfulTime"

echo ""
echo "✅ 推广助手运行完成！"
echo ""
