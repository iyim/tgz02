.class public Lcom/taobao/android/dinamicx/DXResult;
.super Ljava/lang/Object;
.source "DXResult.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private dxError:Lcom/taobao/android/dinamicx/DXError;

.field public result:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Lcom/taobao/android/dinamicx/DXError;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/taobao/android/dinamicx/DXResult;->dxError:Lcom/taobao/android/dinamicx/DXError;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/taobao/android/dinamicx/DXResult;->result:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lcom/taobao/android/dinamicx/DXError;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/taobao/android/dinamicx/DXError;",
            ")V"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/taobao/android/dinamicx/DXResult;->result:Ljava/lang/Object;

    .line 18
    iput-object p2, p0, Lcom/taobao/android/dinamicx/DXResult;->dxError:Lcom/taobao/android/dinamicx/DXError;

    return-void
.end method


# virtual methods
.method public getDxError()Lcom/taobao/android/dinamicx/DXError;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/taobao/android/dinamicx/DXResult;->dxError:Lcom/taobao/android/dinamicx/DXError;

    return-object v0
.end method

.method public hasError()Z
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/taobao/android/dinamicx/DXResult;->dxError:Lcom/taobao/android/dinamicx/DXError;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/taobao/android/dinamicx/DXError;->dxErrorInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setDxError(Lcom/taobao/android/dinamicx/DXError;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/taobao/android/dinamicx/DXResult;->dxError:Lcom/taobao/android/dinamicx/DXError;

    return-void
.end method

.method public setResult(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 33
    iput-object p1, p0, Lcom/taobao/android/dinamicx/DXResult;->result:Ljava/lang/Object;

    return-void
.end method
