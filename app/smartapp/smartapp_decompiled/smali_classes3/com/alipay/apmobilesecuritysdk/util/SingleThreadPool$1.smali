.class Lcom/alipay/apmobilesecuritysdk/util/SingleThreadPool$1;
.super Ljava/lang/Object;
.source "SingleThreadPool.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/apmobilesecuritysdk/util/SingleThreadPool;->execute(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/apmobilesecuritysdk/util/SingleThreadPool;


# direct methods
.method constructor <init>(Lcom/alipay/apmobilesecuritysdk/util/SingleThreadPool;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/alipay/apmobilesecuritysdk/util/SingleThreadPool$1;->this$0:Lcom/alipay/apmobilesecuritysdk/util/SingleThreadPool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 31
    :try_start_0
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 33
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/util/SingleThreadPool$1;->this$0:Lcom/alipay/apmobilesecuritysdk/util/SingleThreadPool;

    invoke-static {v0}, Lcom/alipay/apmobilesecuritysdk/util/SingleThreadPool;->access$000(Lcom/alipay/apmobilesecuritysdk/util/SingleThreadPool;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 34
    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/util/SingleThreadPool$1;->this$0:Lcom/alipay/apmobilesecuritysdk/util/SingleThreadPool;

    invoke-static {v0}, Lcom/alipay/apmobilesecuritysdk/util/SingleThreadPool;->access$000(Lcom/alipay/apmobilesecuritysdk/util/SingleThreadPool;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 36
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 42
    iget-object v2, p0, Lcom/alipay/apmobilesecuritysdk/util/SingleThreadPool$1;->this$0:Lcom/alipay/apmobilesecuritysdk/util/SingleThreadPool;

    invoke-static {v2, v1}, Lcom/alipay/apmobilesecuritysdk/util/SingleThreadPool;->access$102(Lcom/alipay/apmobilesecuritysdk/util/SingleThreadPool;Ljava/lang/Thread;)Ljava/lang/Thread;

    throw v0

    :catch_0
    :cond_1
    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/util/SingleThreadPool$1;->this$0:Lcom/alipay/apmobilesecuritysdk/util/SingleThreadPool;

    invoke-static {v0, v1}, Lcom/alipay/apmobilesecuritysdk/util/SingleThreadPool;->access$102(Lcom/alipay/apmobilesecuritysdk/util/SingleThreadPool;Ljava/lang/Thread;)Ljava/lang/Thread;

    return-void
.end method
