.class Lcom/taobao/phenix/compat/StatMonitor4Phenix$StatImageDecodingListener;
.super Ljava/lang/Object;
.source "StatMonitor4Phenix.java"

# interfaces
.implements Lcom/taobao/phenix/chain/ImageDecodingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/phenix/compat/StatMonitor4Phenix;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StatImageDecodingListener"
.end annotation


# instance fields
.field final mLatestDecodingUrls:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/LinkedHashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/taobao/phenix/compat/StatMonitor4Phenix$StatImageDecodingListener;->mLatestDecodingUrls:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lcom/taobao/phenix/compat/StatMonitor4Phenix$1;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/taobao/phenix/compat/StatMonitor4Phenix$StatImageDecodingListener;-><init>()V

    return-void
.end method


# virtual methods
.method public getLatestDecodingUrlText()Ljava/lang/String;
    .locals 4

    .line 49
    monitor-enter p0

    .line 50
    :try_start_0
    iget-object v0, p0, Lcom/taobao/phenix/compat/StatMonitor4Phenix$StatImageDecodingListener;->mLatestDecodingUrls:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_1

    .line 51
    iget-object v0, p0, Lcom/taobao/phenix/compat/StatMonitor4Phenix$StatImageDecodingListener;->mLatestDecodingUrls:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    if-nez v1, :cond_0

    .line 53
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0

    .line 55
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 59
    :cond_1
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public declared-synchronized onDecodeFinish(JLjava/lang/String;)V
    .locals 0

    monitor-enter p0

    .line 44
    :try_start_0
    iget-object p3, p0, Lcom/taobao/phenix/compat/StatMonitor4Phenix$StatImageDecodingListener;->mLatestDecodingUrls:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onDecodeStart(JLjava/lang/String;)V
    .locals 2

    .line 33
    monitor-enter p0

    .line 34
    :try_start_0
    iget-object v0, p0, Lcom/taobao/phenix/compat/StatMonitor4Phenix$StatImageDecodingListener;->mLatestDecodingUrls:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v1, 0x5

    if-le v0, v1, :cond_0

    .line 35
    iget-object v0, p0, Lcom/taobao/phenix/compat/StatMonitor4Phenix$StatImageDecodingListener;->mLatestDecodingUrls:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/taobao/phenix/compat/StatMonitor4Phenix$StatImageDecodingListener;->mLatestDecodingUrls:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    invoke-static {}, Lcom/alibaba/motu/crashreporter/MotuCrashReporter;->getInstance()Lcom/alibaba/motu/crashreporter/MotuCrashReporter;

    move-result-object p1

    invoke-virtual {p0}, Lcom/taobao/phenix/compat/StatMonitor4Phenix$StatImageDecodingListener;->getLatestDecodingUrlText()Ljava/lang/String;

    move-result-object p2

    const-string p3, "PHENIX_LATEST_DECODING"

    invoke-virtual {p1, p3, p2}, Lcom/alibaba/motu/crashreporter/MotuCrashReporter;->addNativeHeaderInfo(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    .line 38
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
