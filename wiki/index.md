# 14 本阅读书籍 LLM Wiki — 索引

## 项目说明
Corpus-first batch ingest:AI 先用训练数据做 v0 框架(带 confidence 标注),
stoneyang 拿着 v0 去微信读书里 targeted reading 验证。
合体方法论:**Karpathy LLM Wiki × MIT 48 小时法**。

## Sources(14 本书)

### T1 深读验证(Day 3 重点)
- [[sources/adler_如何阅读一本书]] — **VERIFIED**(2026-04-14 raw 对账通过),4 层阅读法奠基
- [[sources/song_AI时代阅读力]] — **MEDIUM-VERIFIED**(2026-04-14 raw 对账,~30% 覆盖,v0 两处重大误判已修正),是温和同盟派而非项目源头

### T2 中扫
- [[sources/wang_阅读教学教什么]] — **VERIFIED**(2026-04-14),**Adler-Foster 师承的中国中介**,"点划评注"四步法是文章中文锚点
- [[sources/li_海绵阅读法]] — **VERIFIED**(2026-04-16),Adler 大众化分支,七大能力框架 + 读书变现金字塔,debate 02 "获得为框架,成为是副产品",debate 03 中间派
- [[sources/foster_如何阅读一本文学书]] — **VERIFIED**(2026-04-14),**v0 推翻** — 不是与 Adler 对立,是 Adler 的第二代师承
- [[sources/shao_如何阅读文学经典]] — **VERIFIED**(2026-04-17),**中国文学研究学院派分支** — "高明的读者"(Adler demanding reader 中文版)+ "没有标准答案是文学的本质"(Adler 立场中文浓缩)+ "文本置于文脉"(Foster 跨文本的中文版,6 种文脉操作)+ 文学的四个发现 + 作者活体 AI 使用证据

### T3 信号扫
- [[sources/zheng_怎样让学生爱上阅读]] — **LOW**
- [[sources/zheng_积极的终身阅读者]] — **LOW**
- [[sources/chen_1000天阅读效应]] — **LOW**
- [[sources/wei_教师阅读漫谈]] — **LOW-MEDIUM**
- [[sources/zhou_阅读教育]] — **LOW**

### T4 慢品(与元方法论 demo 不咬合,但作为文章的文化锚点保留)
- [[sources/maugham_阅读是一座随身携带的避难所]] — **HIGH**
- [[sources/hesse_阅读是安静的自我觉醒]] — **MEDIUM-HIGH**
- [[sources/kafka_砍向我们内心冰封大海的斧头]] — **HIGH**

## Frameworks(涌现)
- [[frameworks/01_阅读的层次]] — Adler 4 层,跨书引用密度最高
- [[frameworks/02_分析阅读三层]] — Adler 分析阅读的架构/诠释/评论
- [[frameworks/03_文体决定读法]] — 论说 vs 想象,跨中西共识
- [[frameworks/04_阅读教学论]] — 王荣生教学内容论
- [[frameworks/05_AI辅助阅读]] — **项目核心原创**

(候选但未独立成页:06 主题阅读 / 07 实用型 / 08 修养型 / 09 符号模式 / 10 动机培养 / 11 终身习惯 / 12 分龄 / 13 愉悦 / 14 震动 — 等 Day 3 验证后决定哪些升格)

## Debates(涌现)
- [[debates/01_文学是否需要结构化分析]] — **v2 重构:Adler-Foster-stoneyang 三代师承**(原"Adler vs Foster 最尖锐"判断已被 Foster raw 推翻)
- [[debates/02_阅读为获得还是成为]] — 实用主义 vs 修养主义
- [[debates/03_阅读需要快还是需要慢]] — AI 时代 vs 黑塞卡夫卡,**对项目最大的反驳**

## Concepts
### 已确认(≥2 本书引用,或方法论基石)
- [[concepts/分析阅读]] — Adler 第 3 层
- [[concepts/主题阅读]] — Adler 第 4 层,与 stoneyang 项目深度关联
- [[concepts/检视阅读]] — Adler 第 2 层,对应 AI batch ingest
- [[concepts/论说性作品_vs_想象文学]] — 跨书共识的二分法
- [[concepts/深沉经验]] — **2026-04-14 升格**,Foster "捕捉精髓和本质" 提供独立证据,是 debate 01 v2 的核心支点

### _候选(暂未升格)
- [[concepts/MIT_48小时法_候选]] — 外部概念,项目基石
- [[concepts/Karpathy_LLM_Wiki_候选]] — 外部概念,项目基石
- [[concepts/野蛮关联]] — **2026-04-16 升格**,宋家博"野蛮关联" + 李小墨"混读"两本独立证据,Karpathy wiki 的人脑版本
- [[concepts/学习力_元能力_候选]] — 宋家博"学习力是其他能力之源",**与王荣生"反抽象能力观"有立场张力**(2026-04-14)
- [[concepts/刻意练习阅读_候选]] — 宋家博把艾利克森刻意练习理论迁到阅读上(2026-04-14)
- [[concepts/点划评注_候选]] — 王荣生原创,**Foster 三件套的中文凝练版**,文章核心锚点候选(2026-04-14)
- [[concepts/高明的读者_候选]] — 邵毅平"高明的读者"= Adler "demanding reader" 中文对应(2026-04-17)
- [[concepts/文本置于文脉_候选]] — 邵毅平方法论核心 = Adler 主题阅读 + Foster 跨文本的中文合流(2026-04-17)
- [[concepts/文学的四个发现_候选]] — 邵毅平第十讲独创:凡人→妇女→儿童→生态,可能升格为独立框架(2026-04-17)

## 操作日志
见 [[log]]

## 产出统计

### Day 1 晚(2026-04-13) — Batch v0 corpus ingest
- Sources: 14(全部带 confidence 标注)
- Frameworks: 5 张成型
- Debates: 3 张
- Concepts: 4 张成型 + 3 张候选
- 总共 29 张 wiki 页,纯 AI 训练数据产出

### Day 2 上午(2026-04-14) — T1 两本 validation update
- Sources 升格: adler HIGH → VERIFIED,song LOW → MEDIUM-VERIFIED
- Frameworks 修订: 05_AI 辅助阅读(宋家博定位从"源头"改为"温和同盟")
- Debates 修订: 03_阅读需要快还是需要慢(宋家博从提速派挪到中间派)
- 新增 concept 候选: 野蛮关联 / 学习力_元能力 / 刻意练习阅读
- 顺修 broken links: maugham_, MIT_48小时法_候选, Karpathy_LLM_Wiki_候选

### Day 2 下午(2026-04-14) — Foster 打靶 validation
- Source 升格: foster HIGH → **VERIFIED**
- **Debate 01 v2 重构**(最关键产出):从"Adler vs Foster 正面对立"颠覆为"**Adler → Foster → stoneyang 三代师承**"
  - 证据:Foster 前言原文明确反对解构主义("更愿意接受作品")+ 反对天马行空过度解读("最不可取")+ 目标是"捕捉精髓和本质"(= Adler 深沉经验)
- **深沉经验** 从 _候选 升格为正式 concept(Adler + Foster 两本独立证据)
- 删除 `concepts/深沉经验_候选.md`
- **文章骨架重大升级**:从"合体方法论介绍"改为"三代师承传承",6 节完整结构
- 总共 32 张 wiki 页(深沉经验候选升格后,净数量不变)
