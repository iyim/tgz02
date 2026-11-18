.class public Lcom/taobao/android/dinamicx/expression/DXEventNode;
.super Lcom/taobao/android/dinamicx/expression/DXExprNode;
.source "DXEventNode.java"


# instance fields
.field expandedWTRuntimeContext:Lcom/taobao/android/dinamicx/DXRuntimeContext;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/taobao/android/dinamicx/expression/DXExprNode;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private getExpandedRuntimeContext(Lcom/taobao/android/dinamicx/DXRuntimeContext;)Lcom/taobao/android/dinamicx/DXRuntimeContext;
    .locals 2

    .line 92
    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getRootView()Lcom/taobao/android/dinamicx/DXRootView;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 96
    :cond_0
    invoke-virtual {v0}, Lcom/taobao/android/dinamicx/DXRootView;->getExpandWidgetNode()Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    .line 100
    :cond_1
    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getWidgetNode()Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getAutoId()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->queryWidgetNodeByAutoId(I)Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    move-result-object p1

    if-nez p1, :cond_2

    return-object v1

    .line 105
    :cond_2
    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getDXRuntimeContext()Lcom/taobao/android/dinamicx/DXRuntimeContext;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public evaluate(Lcom/taobao/android/dinamicx/expression/event/DXEvent;Lcom/taobao/android/dinamicx/DXRuntimeContext;)Ljava/lang/Object;
    .locals 8
    .param p1    # Lcom/taobao/android/dinamicx/expression/event/DXEvent;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "ASTNode_EventHandler"

    const-string v1, "ASTNode"

    const/4 v2, 0x0

    if-eqz p2, :cond_9

    .line 31
    :try_start_0
    invoke-virtual {p2}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getWidgetNode()Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    move-result-object v3

    if-nez v3, :cond_0

    goto/16 :goto_2

    .line 35
    :cond_0
    iget-wide v3, p0, Lcom/taobao/android/dinamicx/expression/DXEventNode;->exprId:J

    invoke-virtual {p2, v3, v4}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getEventHandlerWithId(J)Lcom/taobao/android/dinamicx/IDXEventHandler;

    move-result-object v3

    if-nez v3, :cond_3

    if-eqz p1, :cond_2

    .line 37
    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/expression/event/DXEvent;->isPrepareBind()Z

    move-result v3

    if-nez v3, :cond_2

    .line 38
    new-instance v3, Lcom/taobao/android/dinamicx/DXError;

    invoke-virtual {p2}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getBizType()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/taobao/android/dinamicx/DXError;-><init>(Ljava/lang/String;)V

    .line 39
    invoke-virtual {p2}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getDxTemplateItem()Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 40
    invoke-virtual {p2}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getDxTemplateItem()Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;

    move-result-object v4

    iput-object v4, v3, Lcom/taobao/android/dinamicx/DXError;->dxTemplateItem:Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;

    .line 42
    :cond_1
    new-instance v4, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;

    const v5, 0x186a3

    invoke-direct {v4, v1, v0, v5}, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 44
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "\u627e\u4e0d\u5230\u7528\u6237\u6ce8\u518c\u7684eventHandle  hashcode \u4e3a: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lcom/taobao/android/dinamicx/expression/DXEventNode;->exprId:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;->reason:Ljava/lang/String;

    .line 45
    iget-object v5, v3, Lcom/taobao/android/dinamicx/DXError;->dxErrorInfoList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    invoke-static {v3}, Lcom/taobao/android/dinamicx/monitor/DXAppMonitor;->trackerError(Lcom/taobao/android/dinamicx/DXError;)V

    :cond_2
    return-object v2

    .line 53
    :cond_3
    iget-object v4, p0, Lcom/taobao/android/dinamicx/expression/DXEventNode;->children:Ljava/util/List;

    const/4 v5, 0x0

    if-eqz v4, :cond_4

    .line 54
    iget-object v4, p0, Lcom/taobao/android/dinamicx/expression/DXEventNode;->children:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    goto :goto_0

    :cond_4
    const/4 v4, 0x0

    .line 57
    :goto_0
    new-array v6, v4, [Ljava/lang/Object;

    :goto_1
    if-ge v5, v4, :cond_5

    .line 60
    iget-object v7, p0, Lcom/taobao/android/dinamicx/expression/DXEventNode;->children:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/taobao/android/dinamicx/expression/DXExprNode;

    invoke-virtual {v7, p1, p2}, Lcom/taobao/android/dinamicx/expression/DXExprNode;->evaluate(Lcom/taobao/android/dinamicx/expression/event/DXEvent;Lcom/taobao/android/dinamicx/DXRuntimeContext;)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_5
    if-eqz p1, :cond_6

    .line 63
    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/expression/event/DXEvent;->isPrepareBind()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 64
    invoke-virtual {p2}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getWidgetNode()Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getDXRuntimeContext()Lcom/taobao/android/dinamicx/DXRuntimeContext;

    move-result-object v4

    invoke-interface {v3, v6, v4}, Lcom/taobao/android/dinamicx/IDXEventHandler;->prepareBindEventWithArgs([Ljava/lang/Object;Lcom/taobao/android/dinamicx/DXRuntimeContext;)V

    goto :goto_2

    .line 66
    :cond_6
    invoke-virtual {p2}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getWidgetNode()Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getDXRuntimeContext()Lcom/taobao/android/dinamicx/DXRuntimeContext;

    move-result-object v4

    invoke-interface {v3, p1, v6, v4}, Lcom/taobao/android/dinamicx/IDXEventHandler;->handleEvent(Lcom/taobao/android/dinamicx/expression/event/DXEvent;[Ljava/lang/Object;Lcom/taobao/android/dinamicx/DXRuntimeContext;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v3

    .line 69
    invoke-static {}, Lcom/taobao/android/dinamicx/DinamicXEngine;->isDebug()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 70
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 72
    :cond_7
    new-instance v3, Lcom/taobao/android/dinamicx/DXError;

    invoke-virtual {p2}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getBizType()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v3, p2}, Lcom/taobao/android/dinamicx/DXError;-><init>(Ljava/lang/String;)V

    .line 73
    new-instance p2, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;

    const v4, 0x186a4

    invoke-direct {p2, v1, v0, v4}, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    if-eqz p1, :cond_8

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "eventId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/expression/event/DXEvent;->getEventId()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " isPrepareBind: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/expression/event/DXEvent;->isPrepareBind()Z

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;->reason:Ljava/lang/String;

    .line 78
    :cond_8
    iget-object p1, v3, Lcom/taobao/android/dinamicx/DXError;->dxErrorInfoList:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    invoke-static {v3}, Lcom/taobao/android/dinamicx/monitor/DXAppMonitor;->trackerError(Lcom/taobao/android/dinamicx/DXError;)V

    :cond_9
    :goto_2
    return-object v2
.end method

.method public getType()B
    .locals 1

    const/4 v0, 0x6

    return v0
.end method
