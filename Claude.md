# Claude.md — 14 本阅读书籍 LLM Wiki 项目规则 v1

> **给人类读者的导读**(2026-04-17 加,github 公开版)
>
> 这是一份典型的 Karpathy 式 LLM wiki 项目的 **claude.md**:
> - 它不是给你读的,是给 **AI(Claude)** 读的项目规则手册
> - AI 每次进入本仓库,先读本文件,知道该怎么 ingest / query / lint
> - 你如果想 fork 这个 demo 做自己的主题 wiki,**先看 [README.md](./README.md) 了解结构**,再读本文件理解规则怎么写
>
> **本项目 demo 的核心产出**(7 天完成):
> - [公众号文章:接过阿德勒 50 年前的叹息 — AI 时代的阅读答案](https://mp.weixin.qq.com/s/recEDI1YO3pjjmInT5iE_w)
> - [小红书版:我被自己通过 AI 写出来的一句话击中了](https://www.xiaohongshu.com/explore/69e08fd70000000023011ca0?xsec_token=ABTQh3RkfXiHY6TTY1XNLNjj0ML8lZcCYCizbcmaKh_HA=&xsec_source=pc_search&source=unknown)
> - 32 张 wiki 页(5 frameworks / 3 debates / 11 concepts / 14 sources)
> - 2 张 mermaid 知识地图(四代师承 + wiki 三层结构)
>
> **下面是原始规则文件,保留了 demo 过程中的真实演化痕迹(v0 → v1 + 4 缺陷修复记录),没有事后美化。**

---

## 项目目的
对 14 本阅读教育书籍做 **corpus-first batch ingest**:
1. AI(我)先用训练数据知识产出 v0 框架(快,带 confidence 标注)
2. stoneyang 拿着 v0 去微信读书里 **targeted reading** 验证
3. 7 天内产出一篇 3000 字文章 + 一张 mermaid 知识地图
4. 证明"非专业人士 + AI 流水线"能 7 天追上领域专家

## 核心方法论合体
- **MIT 48 小时法** = 提问协议(5 大共识框架 / 3 大争议 / 10 道辨别题)
- **Karpathy LLM Wiki** = 三层架构(raw / wiki / claude.md)
- **本文件** = 把 MIT 协议固化成 Karpathy 的 ingest 规则

## Confidence 标注规则(v1 新增)
每张 source 页必须标注:
- **HIGH** — AI 训练数据充分覆盖,可直接做框架分析
- **MEDIUM** — AI 知道方向,具体论点待验证
- **LOW** — AI 靠书名+领域常识推断,必须 stoneyang 实读
- **VERIFIED** — stoneyang 已在微信读书读过相关章节确认

## INGEST 工作流(三种模式)

### 模式 A:Batch corpus-first(默认,最快)
触发:`做 batch v0`
执行:
1. 一次性为所有书生成 source 页(带 confidence)
2. 跨书 emergent 出 frameworks(数量不固定,自然涌现)
3. 跨书 emergent 出 debates(只在真有立场对立时建)
4. 涌现 concepts(自然带双向链接)

### 模式 B:Validation update
触发:`我读了 <书名> 的 <章节>,说 X`
执行:
1. 找对应 source 页,追加 X 为 VERIFIED 内容,confidence 升一格
2. 检查 X 是否影响 framework/debate/concept,有则更新
3. log.md 追加 update 日志

### 模式 C:Single-book deep ingest
触发:`ingest <书名>`(raw/ 里已有材料)
执行:
1. 读 raw/ 材料
2. 按 MIT 3 问产出对应 wiki 页
3. source confidence 升到 VERIFIED

## 命名约定
- source: `sources/<作者简写>_<书名>.md`
- framework: `frameworks/<编号>_<框架名>.md`(emergent 顺序)
- debate: `debates/<编号>_<争议名>.md`
- concept(成型): `concepts/<概念>.md`
- concept(候选,只 1 本书引用): `concepts/<概念>_候选.md`

## QUERY 规则
1. 先查 index.md 找相关页
2. 再查 frameworks / debates / concepts
3. 不够查 sources
4. 还不够才回 raw/
5. **回写规则**:回答产生新洞察时,写到 concepts/,log.md 追加 QUERY 日志

## LINT 规则
1. 检查孤立 concepts(无双向链接进来的)
2. 检查 frameworks/debates 是否有矛盾论点没升格
3. 检查 `_候选` 后缀 concept 是否累积 2+ 引用,是则升格(去掉后缀)
4. 检查 index.md 包含所有页面
5. 报告改动 + 待决策事项

## Day 1 smoke test 暴露的 4 缺陷 → v1 已修复
| v0 缺陷 | v1 修复 |
|---|---|
| frameworks 预定义为 5 | emergent,数量随 ingest 自然涌现 |
| concepts ≥2 本引用才建 | 允许第一本就建,加 `_候选` 后缀 |
| debates 同上 | 同上 |
| sequential ingest 无跨书上下文 | 改为 batch corpus-first 模式(本次) |

## 优先级(Day 2 执行)
- **T1 深**(高 confidence, Day 3 stoneyang 重点精读验证): 阿德勒、宋家博(⚠️ confidence 实为 LOW,但对项目最关键)
- **T2 中**: 王荣生、李小墨、托马斯·福斯特、邵毅平
- **T3 信号**: 郑钢×2、陈苗苗、魏智渊、周璐
- **T4 跳过**(与元方法论 demo 不咬合): 毛姆、黑塞、卡夫卡 → Day 8+ 再读