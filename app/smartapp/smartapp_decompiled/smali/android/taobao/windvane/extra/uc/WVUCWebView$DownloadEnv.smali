.class public final Landroid/taobao/windvane/extra/uc/WVUCWebView$DownloadEnv;
.super Ljava/lang/Object;
.source "WVUCWebView.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/taobao/windvane/extra/uc/WVUCWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "DownloadEnv"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 2629
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2630
    iput-object p1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView$DownloadEnv;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2636
    invoke-static {}, Landroid/taobao/windvane/extra/core/WVCore;->getInstance()Landroid/taobao/windvane/extra/core/WVCore;

    move-result-object v0

    invoke-virtual {v0}, Landroid/taobao/windvane/extra/core/WVCore;->isOpen4GDownload()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 2637
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView$DownloadEnv;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/taobao/windvane/util/NetWork;->getNetWorkSubTypeMap(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v3, "type"

    .line 2638
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v3, "4G"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 2642
    invoke-static {}, Landroid/taobao/windvane/util/NetWork;->isConnectionInexpensive()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-static {}, Landroid/taobao/windvane/extra/core/WVCore;->getInstance()Landroid/taobao/windvane/extra/core/WVCore;

    move-result-object v0

    invoke-virtual {v0}, Landroid/taobao/windvane/extra/core/WVCore;->isShouldDownload()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    const-string v0, "UCCore"

    if-nez v1, :cond_3

    .line 2644
    invoke-static {}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->access$1700()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2645
    invoke-static {}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->access$1600()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const-string v2, "current env cannot download u4 core"

    .line 2646
    invoke-static {v0, v2}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 2648
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "start download u4 core,is4G=["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/taobao/windvane/extra/core/WVCore;->getInstance()Landroid/taobao/windvane/extra/core/WVCore;

    move-result-object v3

    invoke-virtual {v3}, Landroid/taobao/windvane/extra/core/WVCore;->isOpen4GDownload()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2650
    :goto_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2626
    invoke-virtual {p0}, Landroid/taobao/windvane/extra/uc/WVUCWebView$DownloadEnv;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
