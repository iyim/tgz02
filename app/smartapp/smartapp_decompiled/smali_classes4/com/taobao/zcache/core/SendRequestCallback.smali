.class public Lcom/taobao/zcache/core/SendRequestCallback;
.super Ljava/lang/Object;
.source "SendRequestCallback.java"


# instance fields
.field private final pointer:J

.field private final wrapper:Lcom/taobao/zcache/core/ZCacheCoreWrapper;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 18
    iput-wide v0, p0, Lcom/taobao/zcache/core/SendRequestCallback;->pointer:J

    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/taobao/zcache/core/SendRequestCallback;->wrapper:Lcom/taobao/zcache/core/ZCacheCoreWrapper;

    return-void
.end method

.method constructor <init>(Lcom/taobao/zcache/core/ZCacheCoreWrapper;J)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/taobao/zcache/core/SendRequestCallback;->wrapper:Lcom/taobao/zcache/core/ZCacheCoreWrapper;

    .line 27
    iput-wide p2, p0, Lcom/taobao/zcache/core/SendRequestCallback;->pointer:J

    return-void
.end method


# virtual methods
.method public onRequestFinished(ILcom/taobao/zcache/Error;Ljava/lang/String;)V
    .locals 6

    .line 38
    iget-object v0, p0, Lcom/taobao/zcache/core/SendRequestCallback;->wrapper:Lcom/taobao/zcache/core/ZCacheCoreWrapper;

    if-eqz v0, :cond_0

    .line 39
    iget-wide v1, p0, Lcom/taobao/zcache/core/SendRequestCallback;->pointer:J

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/taobao/zcache/core/ZCacheCoreWrapper;->onSendRequestFinished(JILcom/taobao/zcache/Error;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
