.class Lcom/taobao/orange/sync/NetworkInterceptor$1$1;
.super Ljava/lang/Object;
.source "NetworkInterceptor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/orange/sync/NetworkInterceptor$1;->onResponseCode(ILjava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/taobao/orange/sync/NetworkInterceptor$1;

.field final synthetic val$headers:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/taobao/orange/sync/NetworkInterceptor$1;Ljava/util/Map;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/taobao/orange/sync/NetworkInterceptor$1$1;->this$1:Lcom/taobao/orange/sync/NetworkInterceptor$1;

    iput-object p2, p0, Lcom/taobao/orange/sync/NetworkInterceptor$1$1;->val$headers:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v0, 0x0

    .line 62
    :try_start_0
    invoke-static {}, Lcom/taobao/orange/util/AndroidUtil;->setThreadPriority()V

    .line 63
    iget-object v1, p0, Lcom/taobao/orange/sync/NetworkInterceptor$1$1;->val$headers:Ljava/util/Map;

    const-string v2, "a-orange-p"

    invoke-static {v1, v2}, Lcom/taobao/orange/sync/NetworkInterceptor;->getOrangeFromKey(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 64
    invoke-static {v1, v0}, Lcom/taobao/orange/sync/IndexUpdateHandler;->updateIndex(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 66
    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "NetworkInterceptor"

    const-string v3, "intercept"

    invoke-static {v2, v3, v1, v0}, Lcom/taobao/orange/util/OLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
