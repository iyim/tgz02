.class public Lcom/taobao/android/dinamicx/expression/DXMethodNode;
.super Lcom/taobao/android/dinamicx/expression/DXExprNode;
.source "DXMethodNode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/android/dinamicx/expression/DXMethodNode$DXBoolean;
    }
.end annotation


# instance fields
.field private middle:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Lcom/taobao/android/dinamicx/expression/DXExprNode;-><init>()V

    const/4 v0, 0x1

    .line 32
    iput-byte v0, p0, Lcom/taobao/android/dinamicx/expression/DXMethodNode;->type:B

    return-void
.end method


# virtual methods
.method public evaluate(Lcom/taobao/android/dinamicx/expression/event/DXEvent;Lcom/taobao/android/dinamicx/DXRuntimeContext;)Ljava/lang/Object;
    .locals 11
    .param p1    # Lcom/taobao/android/dinamicx/expression/event/DXEvent;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "ASTNode_METHOD_NODE"

    const-string v1, "ASTNode"

    const/4 v2, 0x0

    .line 41
    :try_start_0
    iget-wide v3, p0, Lcom/taobao/android/dinamicx/expression/DXMethodNode;->exprId:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-eqz v7, :cond_0

    .line 42
    invoke-virtual {p2}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getParserMap()Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    move-result-object v3

    iget-wide v4, p0, Lcom/taobao/android/dinamicx/expression/DXMethodNode;->exprId:J

    invoke-virtual {v3, v4, v5}, Lcom/taobao/android/dinamicx/model/DXLongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/taobao/android/dinamicx/expression/parser/IDXDataParser;

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    if-nez v3, :cond_1

    .line 46
    new-instance p1, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;

    const v3, 0x186a1

    invoke-direct {p1, v1, v0, v3}, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 48
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exprId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/taobao/android/dinamicx/expression/DXMethodNode;->exprId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;->reason:Ljava/lang/String;

    .line 49
    invoke-virtual {p2}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getDxError()Lcom/taobao/android/dinamicx/DXError;

    move-result-object v3

    iget-object v3, v3, Lcom/taobao/android/dinamicx/DXError;->dxErrorInfoList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v2

    .line 56
    :cond_1
    instance-of v4, v3, Lcom/taobao/android/dinamicx/expression/parser/DXAbsFastReturnDinamicDataParser;

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    .line 57
    move-object v4, v3

    check-cast v4, Lcom/taobao/android/dinamicx/expression/parser/DXAbsFastReturnDinamicDataParser;

    const/4 v6, 0x1

    goto :goto_1

    :cond_2
    move-object v4, v2

    const/4 v6, 0x0

    .line 62
    :goto_1
    iget-object v7, p0, Lcom/taobao/android/dinamicx/expression/DXMethodNode;->children:Ljava/util/List;

    if-eqz v7, :cond_3

    .line 63
    iget-object v7, p0, Lcom/taobao/android/dinamicx/expression/DXMethodNode;->children:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    goto :goto_2

    :cond_3
    const/4 v7, 0x0

    .line 66
    :goto_2
    new-instance v8, Lcom/taobao/android/dinamicx/expression/DXMethodNode$DXBoolean;

    invoke-direct {v8}, Lcom/taobao/android/dinamicx/expression/DXMethodNode$DXBoolean;-><init>()V

    .line 68
    new-array v9, v7, [Ljava/lang/Object;

    :goto_3
    if-ge v5, v7, :cond_5

    .line 71
    iget-object v10, p0, Lcom/taobao/android/dinamicx/expression/DXMethodNode;->children:Ljava/util/List;

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/taobao/android/dinamicx/expression/DXExprNode;

    invoke-virtual {v10, p1, p2}, Lcom/taobao/android/dinamicx/expression/DXExprNode;->evaluate(Lcom/taobao/android/dinamicx/expression/event/DXEvent;Lcom/taobao/android/dinamicx/DXRuntimeContext;)Ljava/lang/Object;

    move-result-object v10

    aput-object v10, v9, v5

    if-eqz v6, :cond_4

    .line 73
    invoke-virtual {v4, v9, p2, v8, v5}, Lcom/taobao/android/dinamicx/expression/parser/DXAbsFastReturnDinamicDataParser;->evalWithArgs([Ljava/lang/Object;Lcom/taobao/android/dinamicx/DXRuntimeContext;Lcom/taobao/android/dinamicx/expression/DXMethodNode$DXBoolean;I)Ljava/lang/Object;

    move-result-object v2

    .line 74
    iget-boolean v10, v8, Lcom/taobao/android/dinamicx/expression/DXMethodNode$DXBoolean;->value:Z

    if-eqz v10, :cond_4

    goto :goto_4

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_5
    :goto_4
    if-nez v6, :cond_6

    .line 81
    invoke-interface {v3, v9, p2}, Lcom/taobao/android/dinamicx/expression/parser/IDXDataParser;->evalWithArgs([Ljava/lang/Object;Lcom/taobao/android/dinamicx/DXRuntimeContext;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception p1

    .line 84
    new-instance v3, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;

    const v4, 0x186a2

    invoke-direct {v3, v1, v0, v4}, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 86
    invoke-static {p1}, Lcom/taobao/android/dinamicx/exception/DXExceptionUtil;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v3, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;->reason:Ljava/lang/String;

    .line 87
    invoke-virtual {p2}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getDxError()Lcom/taobao/android/dinamicx/DXError;

    move-result-object p1

    iget-object p1, p1, Lcom/taobao/android/dinamicx/DXError;->dxErrorInfoList:Ljava/util/List;

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_5
    return-object v2
.end method

.method public getDataParser(Lcom/taobao/android/dinamicx/DXRuntimeContext;J)Lcom/taobao/android/dinamicx/expression/parser/IDXDataParser;
    .locals 1

    if-eqz p1, :cond_1

    .line 94
    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getParserMap()Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 98
    :cond_0
    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getParserMap()Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lcom/taobao/android/dinamicx/model/DXLongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/taobao/android/dinamicx/expression/parser/IDXDataParser;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getMiddle()Ljava/util/List;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/taobao/android/dinamicx/expression/DXMethodNode;->middle:Ljava/util/List;

    return-object v0
.end method

.method public getType()B
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setMiddle(Ljava/util/List;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/taobao/android/dinamicx/expression/DXMethodNode;->middle:Ljava/util/List;

    return-void
.end method
