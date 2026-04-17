# karpathy-mit-reading-wiki

> **7 天 demo**:非专业人士 + AI 流水线如何 7 天追上阅读达人。
> 方法论是 **Karpathy LLM Wiki × MIT 48 小时法** 的合体。

这是一个**真实完成的 demo 仓库**,不是一套理论框架。
- Day 0(2026-04-13):立项 + 规格书
- Day 7(2026-04-16):公众号文章发布,反响良好
- 32 张 wiki 页 + 2 张 mermaid 知识地图 + 3 篇平台版本文章

## 这是给谁看的

- **想 fork 这套方法做自己的主题 wiki 的人**(任何"快速读 N 本某个领域的书"需求)
- **想看 Claude 工程化读书流程长什么样的人**
- **对 Karpathy 那条"LLM wiki"推文感兴趣,想看一个具体落地的人**

## 核心方法论(一段话版)

- **MIT 48 小时法** = 教你"问什么":5 大共识框架 + 3 大争议 + 10 道辨别题
- **Karpathy LLM Wiki** = 教你"答案存哪里":三层架构 `raw/` + `wiki/` + `claude.md`
- **合体公式**(本仓库的贡献):把 MIT 提问协议**固化**成 claude.md 的 ingest / query / lint 规则,让 AI 在读 14 本书的时候自己知道要找什么、存哪里、怎么互相对照
- **工作流转折**:Day 1 本来打算一本一本精读再 ingest,Day 1 晚上 PIVOT 为 **corpus-first batch v0 + validation update** —— AI 先用训练数据一次性产出 14 本书的 wiki 骨架(带 confidence 标注),人类再用微信读书"对账"验证。这个 PIVOT 是整个 demo 能 7 天跑完的关键

## 仓库结构

```
.
├── Claude.md                   # 给 AI 读的项目规则手册(读我先读这个)
├── Day0_产物规格书.md          # Day 0 的立项规格
├── README.md                   # 本文件
├── start-project.bat           # Windows 一键启动脚本(双击即开工)
├── _day8_plus_tool_candidates.md  # demo 进行中"想装但没装"的工具清单,纪律样本
├── wiki/
│   ├── index.md                # 全局索引 + confidence 总览
│   ├── log.md                  # 7 天操作日志(含 Day 1 晚的战略 PIVOT + 每次 validation 对账)
│   ├── sources/                # 14 本书 source 页
│   ├── frameworks/             # 5 张涌现出的框架页
│   ├── debates/                # 3 张争议页
│   ├── concepts/               # 11 张概念页(含 _候选 后缀的未升格概念)
│   └── tests/                  # MIT 10 道辨别题(未完成,Day 8+ 补)
└── output/
    ├── 文章_公众号A版_发布稿.md     # ~4800 字,公众号 已发
    ├── 文章_小红书版_v1.md          # ~1100 字,小红书 已发
    ├── 文章_视频号口播稿_v1.md      # ~430 字 / 90 秒
    ├── 文章_3000字精简版_v1.md      # 备用长回答版
    ├── mermaid_四代师承图.md        # Adler → Foster → 王荣生 → 2026 的三代 + 中国中介
    ├── mermaid_wiki结构图.md        # Karpathy 三层架构数据流
    └── *.png                        # 配图渲染产物
```

**未收入仓库**(`.gitignore` 屏蔽):
- `raw/` — 14 本书的原文摘录(微信读书导出),**版权原因不公开**。读者如需复现,请在微信读书 / Kindle / 图书馆获取相应章节,按 `Claude.md` 的 INGEST 规则自行投喂
- `_next_session_bootstrap.md` — Claude 的下次会话启动指令,随时变动,不适合公开

## 成果链接

- 公众号文章:[**接过阿德勒 50 年前的叹息:AI 时代的阅读答案**](https://mp.weixin.qq.com/s/recEDI1YO3pjjmInT5iE_w)
- 小红书:[**我被自己通过 AI 写出来的一句话击中了**](https://www.xiaohongshu.com/explore/69e08fd70000000023011ca0?xsec_token=ABTQh3RkfXiHY6TTY1XNLNjj0ML8lZcCYCizbcmaKh_HA=&xsec_source=pc_search&source=unknown)
- Mermaid 四代师承图:`output/mermaid_四代师承图.md`
- Mermaid wiki 结构图:`output/mermaid_wiki结构图.md`

## 怎么 fork 做自己的主题 wiki

这套流程可以迁移到任何"快速吃透一个领域"的场景。四步:

1. **选题 + 选书**。挑一个主题,列 8–15 本权威书。
2. **改 Claude.md**。把里面的"14 本阅读书籍"换成你的主题,调整 confidence 分级规则和 T1/T2/T3/T4 优先级。
3. **跑 batch v0**。让 Claude 用训练数据一次性生成 sources / frameworks / debates / concepts 骨架,带 confidence 标注。
4. **Validation update**。用微信读书 / Kindle 读 T1 书的真实章节,回来让 Claude 对账,修正 v0 误判,升 confidence。

**关键纪律**:
- **不要追求完美 claude.md 再动手**。跑过一次的规则比"想象中完美"的规则有价值 100 倍
- **60 分就发**。7 天 demo 的目标不是完整 wiki(那是几个月的事),是一个能演示完整工作流的 bootstrap
- **不要一本一本精读再 ingest**。batch v0 的跨书涌现才是 Karpathy wiki 的真正威力

## 7 天时间线(从 `wiki/log.md` 简化)

| Day | 日期 | 产出 |
|---|---|---|
| Day 0 | 2026-04-13 | `Day0_产物规格书.md` 完成 |
| Day 1 | 2026-04-13 | claude.md v0 + 阿德勒薄笔记 smoke test;**晚上战略 PIVOT** → corpus-first batch v0,29 张 wiki 页一夜产出 |
| Day 2 | 2026-04-14 | T1 两本(阿德勒 / 宋家博)raw 对账 + Foster / 王荣生 打靶验证;**debate 01 重构为"四代师承"** |
| Day 3-4 | 2026-04-14~15 | 李小墨 validation + AI 索道设计原则注入 framework 05 |
| Day 5 | 2026-04-15 | 文章骨架第一版 |
| Day 6 | 2026-04-15 | 三平台派生(公众号 / 小红书 / 视频号)+ 2 张 mermaid + 5 个标题候选 |
| Day 7 | 2026-04-16 | **公众号 + 小红书 发布**;顺手做李小墨 validation 升 VERIFIED |
| Day 8 | 2026-04-17 | 本仓库整理成可公开发布形态 |

完整的操作日志见 [`wiki/log.md`](./wiki/log.md),**一字没删,保留了所有方向调整和 validation 对账过程**。

## License

MIT — 欢迎 fork / 参考 / 改造。

## 致谢

- Andrej Karpathy — LLM wiki 原始思路
- MIT 48 小时法原作者
- Mortimer J. Adler(1972)+ Thomas C. Foster(2003)+ 王荣生(2007)—— 这个项目致敬的三代师承
- Claude(Anthropic)—— 全程协作者
