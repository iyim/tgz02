.class public Lcom/taobao/android/dinamicx/expression/DXExprNode;
.super Ljava/lang/Object;
.source "DXExprNode.java"


# static fields
.field public static final BranchBlock:B = 0x5t

.field public static final Const:B = 0x3t

.field public static final Event:B = 0x6t

.field public static final Method:B = 0x1t

.field public static final None:B = 0x0t

.field public static final SerialBlock:B = 0x4t

.field public static final Var:B = 0x2t


# instance fields
.field public children:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/taobao/android/dinamicx/expression/DXExprNode;",
            ">;"
        }
    .end annotation
.end field

.field private dataType:S

.field public exprId:J

.field public name:Ljava/lang/String;

.field parent:Lcom/taobao/android/dinamicx/expression/DXExprNode;

.field public type:B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public addChildNode(Lcom/taobao/android/dinamicx/expression/DXExprNode;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/taobao/android/dinamicx/expression/DXExprNode;->children:Ljava/util/List;

    if-nez v0, :cond_1

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/taobao/android/dinamicx/expression/DXExprNode;->children:Ljava/util/List;

    .line 56
    :cond_1
    iput-object p0, p1, Lcom/taobao/android/dinamicx/expression/DXExprNode;->parent:Lcom/taobao/android/dinamicx/expression/DXExprNode;

    .line 57
    iget-object v0, p0, Lcom/taobao/android/dinamicx/expression/DXExprNode;->children:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public evaluate(Lcom/taobao/android/dinamicx/expression/event/DXEvent;Lcom/taobao/android/dinamicx/DXRuntimeContext;)Ljava/lang/Object;
    .locals 0
    .param p1    # Lcom/taobao/android/dinamicx/expression/event/DXEvent;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 76
    iget-object p1, p0, Lcom/taobao/android/dinamicx/expression/DXExprNode;->name:Ljava/lang/String;

    return-object p1
.end method

.method public getAllChildren()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/taobao/android/dinamicx/expression/DXExprNode;",
            ">;"
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/taobao/android/dinamicx/expression/DXExprNode;->children:Ljava/util/List;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDataType()S
    .locals 1

    .line 80
    iget-short v0, p0, Lcom/taobao/android/dinamicx/expression/DXExprNode;->dataType:S

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/taobao/android/dinamicx/expression/DXExprNode;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getType()B
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setDataType(S)V
    .locals 0

    .line 84
    iput-short p1, p0, Lcom/taobao/android/dinamicx/expression/DXExprNode;->dataType:S

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/taobao/android/dinamicx/expression/DXExprNode;->name:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/taobao/android/dinamicx/expression/DXExprNode;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 90
    iget-object v1, p0, Lcom/taobao/android/dinamicx/expression/DXExprNode;->children:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 91
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/android/dinamicx/expression/DXExprNode;

    .line 92
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/taobao/android/dinamicx/expression/DXExprNode;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    return-object v0
.end method
