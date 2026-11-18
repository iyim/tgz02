.class Lcom/taobao/zcache/ZCacheManager$2;
.super Ljava/lang/Object;
.source "ZCacheManager.java"

# interfaces
.implements Lcom/taobao/zcache/PackUpdateFinishedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/zcache/ZCacheManager;->updatePack(Ljava/lang/String;Ljava/lang/String;ILcom/taobao/zcachecorewrapper/IZCacheCore$UpdateCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/zcache/ZCacheManager;

.field final synthetic val$callback:Lcom/taobao/zcachecorewrapper/IZCacheCore$UpdateCallback;


# direct methods
.method constructor <init>(Lcom/taobao/zcache/ZCacheManager;Lcom/taobao/zcachecorewrapper/IZCacheCore$UpdateCallback;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/taobao/zcache/ZCacheManager$2;->this$0:Lcom/taobao/zcache/ZCacheManager;

    iput-object p2, p0, Lcom/taobao/zcache/ZCacheManager$2;->val$callback:Lcom/taobao/zcachecorewrapper/IZCacheCore$UpdateCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public finish(Ljava/lang/String;Lcom/taobao/zcache/Error;)V
    .locals 2

    .line 103
    iget-object v0, p0, Lcom/taobao/zcache/ZCacheManager$2;->val$callback:Lcom/taobao/zcachecorewrapper/IZCacheCore$UpdateCallback;

    if-eqz v0, :cond_0

    .line 106
    new-instance v1, Lcom/taobao/zcachecorewrapper/model/Error;

    invoke-direct {v1, p2}, Lcom/taobao/zcachecorewrapper/model/Error;-><init>(Lcom/taobao/zcache/Error;)V

    invoke-interface {v0, p1, v1}, Lcom/taobao/zcachecorewrapper/IZCacheCore$UpdateCallback;->finish(Ljava/lang/String;Lcom/taobao/zcachecorewrapper/model/Error;)V

    :cond_0
    return-void
.end method
