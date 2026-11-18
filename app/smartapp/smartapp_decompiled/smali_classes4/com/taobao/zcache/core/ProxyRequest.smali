.class public Lcom/taobao/zcache/core/ProxyRequest;
.super Ljava/lang/Object;
.source "ProxyRequest.java"


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation


# instance fields
.field public header:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public tempFilePath:Ljava/lang/String;

.field public timeout:I

.field public traceId:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcom/taobao/zcache/core/ProxyRequest;->url:Ljava/lang/String;

    const/4 v1, 0x0

    .line 19
    iput v1, p0, Lcom/taobao/zcache/core/ProxyRequest;->timeout:I

    .line 23
    iput-object v0, p0, Lcom/taobao/zcache/core/ProxyRequest;->tempFilePath:Ljava/lang/String;

    .line 27
    iput-object v0, p0, Lcom/taobao/zcache/core/ProxyRequest;->header:Ljava/util/HashMap;

    .line 31
    iput-object v0, p0, Lcom/taobao/zcache/core/ProxyRequest;->traceId:Ljava/lang/String;

    return-void
.end method
