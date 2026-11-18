.class public Lcom/alibaba/android/ultron/vfw/instance/strategy/RenderDataSourceStrategy;
.super Ljava/lang/Object;
.source "RenderDataSourceStrategy.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private static varargs checkListNotNullCount([Ljava/util/List;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/List<",
            "*>;)I"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    .line 149
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 150
    aget-object v2, p0, v0

    if-eqz v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public static render(Lcom/taobao/android/ultron/datamodel/imp/DMContext;Lcom/alibaba/android/ultron/vfw/core/DataSource;Lcom/alibaba/android/ultron/vfw/instance/UltronInstance$IProcessor;Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;)V
    .locals 1

    .line 27
    invoke-virtual {p0}, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->getDiffInfos()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->getDiffInfos()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 28
    invoke-virtual {p0}, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->getDiffInfos()Ljava/util/List;

    move-result-object p0

    invoke-static {p0, p2, p1, p3}, Lcom/alibaba/android/ultron/vfw/instance/strategy/RenderDataSourceStrategy;->renderDeltaComponents(Ljava/util/List;Lcom/alibaba/android/ultron/vfw/instance/UltronInstance$IProcessor;Lcom/alibaba/android/ultron/vfw/core/DataSource;Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;)V

    return-void

    .line 32
    :cond_0
    invoke-virtual {p3, p2}, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->processDataSource(Lcom/alibaba/android/ultron/vfw/instance/UltronInstance$IProcessor;)V

    const/16 p0, 0x1f

    .line 33
    invoke-virtual {p3, p0}, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->rebuild(I)V

    return-void
.end method

.method private static renderDeltaComponents(Ljava/util/List;Lcom/alibaba/android/ultron/vfw/instance/UltronInstance$IProcessor;Lcom/alibaba/android/ultron/vfw/core/DataSource;Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/taobao/android/ultron/datamodel/imp/diff/ComponentDiffInfo;",
            ">;",
            "Lcom/alibaba/android/ultron/vfw/instance/UltronInstance$IProcessor;",
            "Lcom/alibaba/android/ultron/vfw/core/DataSource;",
            "Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    .line 41
    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/android/ultron/vfw/core/DataSource;->getBodyList()Ljava/util/List;

    move-result-object v2

    .line 42
    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/android/ultron/vfw/core/DataSource;->getHeaderList()Ljava/util/List;

    move-result-object v3

    .line 43
    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/android/ultron/vfw/core/DataSource;->getFooterList()Ljava/util/List;

    move-result-object v4

    .line 55
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v9, -0x1

    move-object v10, v6

    move-object v11, v10

    move-object v14, v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/taobao/android/ultron/datamodel/imp/diff/ComponentDiffInfo;

    .line 58
    instance-of v8, v15, Lcom/taobao/android/ultron/datamodel/imp/diff/ReplaceDiffInfo;

    if-eqz v8, :cond_7

    if-nez v6, :cond_1

    .line 60
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 63
    :cond_1
    move-object v8, v15

    nop

    nop

    invoke-virtual {v8}, Lcom/taobao/android/ultron/datamodel/imp/diff/ReplaceDiffInfo;->getComponent()Lcom/taobao/android/ultron/common/model/IDMComponent;

    move-result-object v7

    .line 64
    invoke-virtual {v8}, Lcom/taobao/android/ultron/datamodel/imp/diff/ReplaceDiffInfo;->getReplaced()Lcom/taobao/android/ultron/common/model/IDMComponent;

    move-result-object v8

    .line 66
    invoke-interface {v3, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_2

    .line 68
    invoke-interface {v3, v8}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v8

    .line 69
    invoke-interface {v3, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 70
    invoke-interface {v3, v8, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const/4 v13, 0x1

    goto :goto_0

    .line 73
    :cond_2
    invoke-interface {v4, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_3

    .line 75
    invoke-interface {v4, v8}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v8

    .line 76
    invoke-interface {v4, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 77
    invoke-interface {v4, v8, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const/4 v12, 0x1

    goto :goto_0

    .line 80
    :cond_3
    invoke-interface {v2, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_4

    .line 81
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    if-lez v9, :cond_5

    .line 84
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_5

    .line 85
    invoke-interface {v2, v8}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v8

    sub-int v7, v8, v9

    .line 87
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    const/4 v9, 0x1

    if-le v7, v9, :cond_6

    const/4 v7, 0x1

    goto :goto_1

    :cond_5
    const/4 v8, 0x0

    :cond_6
    move v9, v8

    .line 96
    :cond_7
    instance-of v7, v15, Lcom/taobao/android/ultron/datamodel/imp/diff/DeleteDiffInfo;

    if-eqz v7, :cond_9

    if-nez v10, :cond_8

    .line 98
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 100
    :cond_8
    move-object v7, v15

    nop

    nop

    invoke-virtual {v7}, Lcom/taobao/android/ultron/datamodel/imp/diff/DeleteDiffInfo;->getComponent()Lcom/taobao/android/ultron/common/model/IDMComponent;

    move-result-object v7

    invoke-interface {v10, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    :cond_9
    instance-of v7, v15, Lcom/taobao/android/ultron/datamodel/imp/diff/InsertDiffInfo;

    if-eqz v7, :cond_0

    if-nez v11, :cond_a

    .line 106
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 108
    :cond_a
    nop

    nop

    invoke-virtual {v15}, Lcom/taobao/android/ultron/datamodel/imp/diff/InsertDiffInfo;->getPosition()Lcom/taobao/android/ultron/common/model/IDMComponent;

    move-result-object v7

    .line 109
    invoke-virtual {v15}, Lcom/taobao/android/ultron/datamodel/imp/diff/InsertDiffInfo;->getComponents()Ljava/util/List;

    move-result-object v8

    invoke-interface {v11, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-object v14, v7

    goto/16 :goto_0

    :cond_b
    const/4 v7, 0x0

    :goto_1
    const/4 v2, 0x3

    .line 114
    new-array v2, v2, [Ljava/util/List;

    const/4 v3, 0x0

    aput-object v6, v2, v3

    const/4 v9, 0x1

    aput-object v10, v2, v9

    const/4 v4, 0x2

    aput-object v11, v2, v4

    invoke-static {v2}, Lcom/alibaba/android/ultron/vfw/instance/strategy/RenderDataSourceStrategy;->checkListNotNullCount([Ljava/util/List;)I

    move-result v2

    if-lt v2, v4, :cond_c

    const/4 v7, 0x1

    :cond_c
    if-eqz v7, :cond_d

    .line 120
    invoke-virtual {v1, v0}, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->processDataSource(Lcom/alibaba/android/ultron/vfw/instance/UltronInstance$IProcessor;)V

    const/16 v0, 0x1f

    .line 121
    invoke-virtual {v1, v0}, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->rebuild(I)V

    return-void

    :cond_d
    if-nez v13, :cond_e

    if-eqz v12, :cond_10

    :cond_e
    if-eqz v12, :cond_f

    const/4 v8, 0x4

    const/4 v3, 0x4

    :cond_f
    or-int v2, v13, v3

    .line 130
    invoke-virtual {v1, v2}, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->refresh(I)V

    :cond_10
    if-eqz v6, :cond_11

    .line 135
    invoke-virtual {v1, v0}, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->processDataSource(Lcom/alibaba/android/ultron/vfw/instance/UltronInstance$IProcessor;)V

    .line 136
    invoke-virtual {v1, v6}, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->refreshComponents(Ljava/util/List;)V

    goto :goto_2

    :cond_11
    if-eqz v10, :cond_12

    .line 138
    invoke-virtual {v1, v10}, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->removeComponents(Ljava/util/List;)V

    goto :goto_2

    :cond_12
    if-eqz v11, :cond_13

    .line 140
    invoke-virtual {v1, v11, v14}, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->insertComponents(Ljava/util/List;Lcom/taobao/android/ultron/common/model/IDMComponent;)V

    :cond_13
    :goto_2
    return-void
.end method
