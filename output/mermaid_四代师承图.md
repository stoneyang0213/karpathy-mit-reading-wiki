# 四代师承关系图

> 用途:公众号 A 版 + 小红书版 + 视频号口播的**核心视觉锚点**
> 派生自:`wiki/debates/01_文学是否需要结构化分析.md` v3 师承结构
> 派生日期:2026-04-15(Day 6)

---

## 主图(横向流程图)

```mermaid
flowchart LR
    A["<b>Adler · 1972</b><br/>如何阅读一本书<br/>—————<br/>四层阅读法<br/>深沉经验"] --> B["<b>Foster · 2003</b><br/>如何阅读一本文学书<br/>—————<br/>记忆 · 象征 · 模式<br/>捕捉精髓本质"]
    B --> C["<b>王荣生 · 2012</b><br/>阅读教学教什么<br/>—————<br/>点划评注四步<br/>看什么 · 看出什么"]
    C --> D["<b>stoneyang · 2026</b><br/>14 本书 × claude.md<br/>—————<br/>AI 流水线 × 提问协议<br/>压缩抵达前三代的脚手架"]

    style A fill:#fef3c7,stroke:#b45309,stroke-width:2px,color:#422006
    style B fill:#dbeafe,stroke:#1d4ed8,stroke-width:2px,color:#0c1e4f
    style C fill:#dcfce7,stroke:#15803d,stroke-width:2px,color:#052e16
    style D fill:#fce7f3,stroke:#be185d,stroke-width:3px,color:#4c0519
```

---

## 补充图:共同的对手(带反对象)

```mermaid
flowchart TB
    subgraph GEN["四代人 · 同一条线"]
        direction LR
        A1["Adler 1972<br/>深沉经验"] --> A2["Foster 2003<br/>捕捉精髓本质"]
        A2 --> A3["王荣生 2012<br/>看什么看出什么"]
        A3 --> A4["stoneyang 2026<br/>AI 流水线脚手架"]
    end

    ENEMY["<b>共同的对手</b><br/>————————<br/>'读书是少数人的天赋'<br/>这个顽固观念"]

    GEN -.反驳.-> ENEMY

    M["<b>Mursell 1939</b><br/>六年级后阅读曲线<br/>跌入死寂"] --> ENEMY

    style A1 fill:#fef3c7,stroke:#b45309,color:#422006
    style A2 fill:#dbeafe,stroke:#1d4ed8,color:#0c1e4f
    style A3 fill:#dcfce7,stroke:#15803d,color:#052e16
    style A4 fill:#fce7f3,stroke:#be185d,stroke-width:2px,color:#4c0519
    style M fill:#f3f4f6,stroke:#6b7280,color:#111827
    style ENEMY fill:#fee2e2,stroke:#991b1b,stroke-width:2px,color:#450a0a
```

---

## 使用建议

- **文章主图用"主图"**,单行横向结构最能凸显"接棒"感
- **补充图留给公众号 A 版**(有篇幅展开讨论 Mursell 叹息 + 三代共同对手时),或放在配图第二张
- **小红书版只用主图**,一屏一图,不要两张
- **视频号口播**把主图每一列单独做一张,4 张图顺序切换 + 配旁白
