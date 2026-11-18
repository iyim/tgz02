.class public Lcom/taobao/zcache/ZCacheDev;
.super Landroid/taobao/windvane/jsbridge/WVApiPlugin;
.source "ZCacheDev.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Landroid/taobao/windvane/jsbridge/WVApiPlugin;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public execute(Ljava/lang/String;Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)Z
    .locals 2

    .line 15
    invoke-static {}, Lcom/taobao/zcache/ZCacheCoreProxy;->core()Lcom/taobao/zcache/core/IZCacheCore;

    move-result-object v0

    new-instance v1, Lcom/taobao/zcache/ZCacheDev$1;

    invoke-direct {v1, p0, p3}, Lcom/taobao/zcache/ZCacheDev$1;-><init>(Lcom/taobao/zcache/ZCacheDev;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V

    invoke-interface {v0, p1, p2, v1}, Lcom/taobao/zcache/core/IZCacheCore;->invokeDev(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/zcache/core/IZCacheCore$DevCallback;)V

    const/4 p1, 0x1

    return p1
.end method
