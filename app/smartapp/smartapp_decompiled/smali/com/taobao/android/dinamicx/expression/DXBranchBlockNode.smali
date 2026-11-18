.class public Lcom/taobao/android/dinamicx/expression/DXBranchBlockNode;
.super Lcom/taobao/android/dinamicx/expression/DXExprNode;
.source "DXBranchBlockNode.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Lcom/taobao/android/dinamicx/expression/DXExprNode;-><init>()V

    const/4 v0, 0x5

    .line 34
    iput-byte v0, p0, Lcom/taobao/android/dinamicx/expression/DXBranchBlockNode;->type:B

    const-string v0, "branch"

    .line 35
    iput-object v0, p0, Lcom/taobao/android/dinamicx/expression/DXBranchBlockNode;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public evaluate(Lcom/taobao/android/dinamicx/expression/event/DXEvent;Lcom/taobao/android/dinamicx/DXRuntimeContext;)Ljava/lang/Object;
    .locals 3
    .param p1    # Lcom/taobao/android/dinamicx/expression/event/DXEvent;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 19
    iget-object v0, p0, Lcom/taobao/android/dinamicx/expression/DXBranchBlockNode;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 24
    iget-object v2, p0, Lcom/taobao/android/dinamicx/expression/DXBranchBlockNode;->children:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/android/dinamicx/expression/DXExprNode;

    invoke-virtual {v2, p1, p2}, Lcom/taobao/android/dinamicx/expression/DXExprNode;->evaluate(Lcom/taobao/android/dinamicx/expression/event/DXEvent;Lcom/taobao/android/dinamicx/DXRuntimeContext;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getType()B
    .locals 1

    const/4 v0, 0x5

    return v0
.end method
