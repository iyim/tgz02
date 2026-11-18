.class public Lcom/taobao/zcache/core/PushMessageCallbackImpl;
.super Ljava/lang/Object;
.source "PushMessageCallbackImpl.java"

# interfaces
.implements Lcom/taobao/zcache/PushMessageCallback;


# instance fields
.field private final pointer:J

.field private final wrapper:Lcom/taobao/zcache/core/ZCacheCoreWrapper;


# direct methods
.method constructor <init>(Lcom/taobao/zcache/core/ZCacheCoreWrapper;J)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/taobao/zcache/core/PushMessageCallbackImpl;->wrapper:Lcom/taobao/zcache/core/ZCacheCoreWrapper;

    .line 21
    iput-wide p2, p0, Lcom/taobao/zcache/core/PushMessageCallbackImpl;->pointer:J

    return-void
.end method


# virtual methods
.method public onPushMessage(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lcom/taobao/zcache/core/PushMessageCallbackImpl;->wrapper:Lcom/taobao/zcache/core/ZCacheCoreWrapper;

    if-eqz v0, :cond_0

    .line 31
    iget-wide v1, p0, Lcom/taobao/zcache/core/PushMessageCallbackImpl;->pointer:J

    invoke-virtual {v0, v1, v2, p1}, Lcom/taobao/zcache/core/ZCacheCoreWrapper;->onPushMessage(JLjava/util/List;)V

    :cond_0
    return-void
.end method
