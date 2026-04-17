# Wiki 结构图

> 用途:展示 `claude.md` + Karpathy LLM Wiki 三层架构的**工程化骨架**
> 派生自:`Claude.md` 项目规则 v1 + `wiki/index.md`
> 派生日期:2026-04-15(Day 6)

---

## 主图:Karpathy 三层 × MIT 提问协议

```mermaid
flowchart TB
    subgraph L1["第 1 层 · raw 原始材料"]
        direction LR
        R1["raw/adler_<br/>目录+自序+<br/>关键章采样"]
        R2["raw/foster_<br/>前言打靶<br/>A组+B组"]
        R3["raw/wang_<br/>四步打靶<br/>A+B+C"]
        R4["raw/song_<br/>自序+立场段"]
    end

    subgraph L2["第 2 层 · wiki 结构化知识"]
        direction LR
        S["<b>sources</b><br/>14 张<br/>带 confidence"]
        F["<b>frameworks</b><br/>5 张涌现<br/>不预定义"]
        D["<b>debates</b><br/>3 张<br/>跨书立场对立"]
        C["<b>concepts</b><br/>5 成型 + 6 候选<br/>双向链接"]

        S -.emergent.-> F
        S -.emergent.-> D
        F -.关联.-> C
        D -.关联.-> C
    end

    subgraph L3["第 3 层 · claude.md 规则载体"]
        direction LR
        I["<b>INGEST</b><br/>批量 corpus-first<br/>/ validation update<br/>/ single deep"]
        Q["<b>QUERY</b><br/>index → frameworks<br/>→ sources → raw"]
        LN["<b>LINT</b><br/>孤立 concept 检查<br/>候选升格检查"]
    end

    L1 --> L2
    L3 -.执行规则.-> L2
    L2 -.回写日志.-> LG["log.md"]

    style L1 fill:#fef3c7,stroke:#b45309,color:#422006
    style L2 fill:#dbeafe,stroke:#1d4ed8,color:#0c1e4f
    style L3 fill:#fce7f3,stroke:#be185d,stroke-width:2px,color:#4c0519
    style LG fill:#f3f4f6,stroke:#6b7280,color:#111827
```

---

## 补充图:合体公式的数据流

```mermaid
flowchart LR
    MIT["<b>MIT 48 小时法</b><br/>5 大共识框架<br/>3 大争议<br/>10 道辨别题"]
    KAR["<b>Karpathy LLM Wiki</b><br/>raw / wiki / claude.md<br/>三层架构"]

    FORM["<b>claude.md</b><br/>=<br/>MIT 提问协议<br/>×<br/>Karpathy 三层架构"]

    MIT --> FORM
    KAR --> FORM

    FORM --> B["<b>batch v0</b><br/>AI 读训练数据<br/>产 29 张 wiki 页<br/>~2h"]
    B --> V["<b>validation update</b><br/>stoneyang 回原文打靶<br/>升格 / 修正 / 开新 concept<br/>~4h"]
    V --> OUT["<b>Day 7 产出</b><br/>一篇 3000 字文章<br/>+ 两张 Mermaid 图<br/>+ 可公开的 wiki"]

    style MIT fill:#dbeafe,stroke:#1d4ed8,color:#0c1e4f
    style KAR fill:#dcfce7,stroke:#15803d,color:#052e16
    style FORM fill:#fce7f3,stroke:#be185d,stroke-width:3px,color:#4c0519
    style B fill:#fef3c7,stroke:#b45309,color:#422006
    style V fill:#fef3c7,stroke:#b45309,color:#422006
    style OUT fill:#e0e7ff,stroke:#4338ca,stroke-width:2px,color:#1e1b4b
```

---

## 使用建议

- **公众号 A 版的第二张配图**用"主图(Karpathy 三层)",讲 claude.md 规则载体那段时插入
- **小红书版不建议用 wiki 结构图**(技术感太重,读者滑动时会跳过)
- **视频号口播**的第 3-4 段讲 AI 流水线时,用"合体公式数据流"图做黑板演示效果
- 两张图可在知乎 / GitHub README 里并列使用
