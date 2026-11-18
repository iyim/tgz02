.class public Lcom/taobao/android/dinamicx/expression/DXVarNode;
.super Lcom/taobao/android/dinamicx/expression/DXExprNode;
.source "DXVarNode.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/taobao/android/dinamicx/expression/DXExprNode;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public evaluate(Lcom/taobao/android/dinamicx/expression/event/DXEvent;Lcom/taobao/android/dinamicx/DXRuntimeContext;)Ljava/lang/Object;
    .locals 0
    .param p1    # Lcom/taobao/android/dinamicx/expression/event/DXEvent;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 17
    iget-object p1, p0, Lcom/taobao/android/dinamicx/expression/DXVarNode;->name:Ljava/lang/String;

    return-object p1
.end method

.method public getType()B
    .locals 1

    const/4 v0, 0x2

    return v0
.end method
