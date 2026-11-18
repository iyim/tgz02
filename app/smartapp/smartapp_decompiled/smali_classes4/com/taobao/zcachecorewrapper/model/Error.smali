.class public Lcom/taobao/zcachecorewrapper/model/Error;
.super Ljava/lang/Object;
.source "Error.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation


# instance fields
.field public errCode:I

.field public errMsg:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/taobao/zcache/Error;)V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 14
    iput p1, p0, Lcom/taobao/zcachecorewrapper/model/Error;->errCode:I

    const/4 p1, 0x0

    .line 15
    iput-object p1, p0, Lcom/taobao/zcachecorewrapper/model/Error;->errMsg:Ljava/lang/String;

    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {p1}, Lcom/taobao/zcache/Error;->getCode()I

    move-result v0

    iput v0, p0, Lcom/taobao/zcachecorewrapper/model/Error;->errCode:I

    .line 18
    invoke-virtual {p1}, Lcom/taobao/zcache/Error;->getMessage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/taobao/zcachecorewrapper/model/Error;->errMsg:Ljava/lang/String;

    :goto_0
    return-void
.end method
