.class public Lcom/taobao/android/dinamicx/expression/DXSerialBlockNode;
.super Lcom/taobao/android/dinamicx/expression/DXExprNode;
.source "DXSerialBlockNode.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Lcom/taobao/android/dinamicx/expression/DXExprNode;-><init>()V

    const/4 v0, 0x4

    .line 42
    iput-byte v0, p0, Lcom/taobao/android/dinamicx/expression/DXSerialBlockNode;->type:B

    const-string v0, "branch"

    .line 43
    iput-object v0, p0, Lcom/taobao/android/dinamicx/expression/DXSerialBlockNode;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public evaluate(Lcom/taobao/android/dinamicx/expression/event/DXEvent;Lcom/taobao/android/dinamicx/DXRuntimeContext;)Ljava/lang/Object;
    .locals 4
    .param p1    # Lcom/taobao/android/dinamicx/expression/event/DXEvent;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 22
    iget-object v0, p0, Lcom/taobao/android/dinamicx/expression/DXSerialBlockNode;->children:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 23
    iget-object v0, p0, Lcom/taobao/android/dinamicx/expression/DXSerialBlockNode;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 25
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 27
    iget-object v3, p0, Lcom/taobao/android/dinamicx/expression/DXSerialBlockNode;->children:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/taobao/android/dinamicx/expression/DXExprNode;

    invoke-virtual {v3, p1, p2}, Lcom/taobao/android/dinamicx/expression/DXExprNode;->evaluate(Lcom/taobao/android/dinamicx/expression/event/DXEvent;Lcom/taobao/android/dinamicx/DXRuntimeContext;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 30
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public getType()B
    .locals 1

    const/4 v0, 0x4

    return v0
.end method
