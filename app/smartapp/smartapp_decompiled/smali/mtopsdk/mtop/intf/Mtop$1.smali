.class Lmtopsdk/mtop/intf/Mtop$1;
.super Ljava/lang/Object;
.source "Mtop.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmtopsdk/mtop/intf/Mtop;->init(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmtopsdk/mtop/intf/Mtop;


# direct methods
.method constructor <init>(Lmtopsdk/mtop/intf/Mtop;)V
    .locals 0

    .line 218
    iput-object p1, p0, Lmtopsdk/mtop/intf/Mtop$1;->this$0:Lmtopsdk/mtop/intf/Mtop;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 222
    :try_start_0
    iget-object v0, p0, Lmtopsdk/mtop/intf/Mtop$1;->this$0:Lmtopsdk/mtop/intf/Mtop;

    iget-object v0, v0, Lmtopsdk/mtop/intf/Mtop;->initLock:[B

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v3, 0x1

    .line 225
    :try_start_2
    iget-object v4, p0, Lmtopsdk/mtop/intf/Mtop$1;->this$0:Lmtopsdk/mtop/intf/Mtop;

    invoke-virtual {v4}, Lmtopsdk/mtop/intf/Mtop;->updateAppKeyIndex()V

    .line 226
    iget-object v4, p0, Lmtopsdk/mtop/intf/Mtop$1;->this$0:Lmtopsdk/mtop/intf/Mtop;

    iget-object v4, v4, Lmtopsdk/mtop/intf/Mtop;->initTask:Lmtopsdk/mtop/global/init/IMtopInitTask;

    iget-object v5, p0, Lmtopsdk/mtop/intf/Mtop$1;->this$0:Lmtopsdk/mtop/intf/Mtop;

    iget-object v5, v5, Lmtopsdk/mtop/intf/Mtop;->mtopConfig:Lmtopsdk/mtop/global/MtopConfig;

    invoke-interface {v4, v5}, Lmtopsdk/mtop/global/init/IMtopInitTask;->executeCoreTask(Lmtopsdk/mtop/global/MtopConfig;)V

    .line 228
    new-instance v4, Lmtopsdk/mtop/intf/Mtop$1$1;

    invoke-direct {v4, p0}, Lmtopsdk/mtop/intf/Mtop$1$1;-><init>(Lmtopsdk/mtop/intf/Mtop$1;)V

    invoke-static {v4}, Lmtopsdk/mtop/util/MtopSDKThreadPoolExecutorFactory;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    const-string v4, "mtopsdk.Mtop"

    .line 240
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lmtopsdk/mtop/intf/Mtop$1;->this$0:Lmtopsdk/mtop/intf/Mtop;

    iget-object v6, v6, Lmtopsdk/mtop/intf/Mtop;->instanceId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " [init]do executeCoreTask cost[ms]: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v1

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    iget-object v1, p0, Lmtopsdk/mtop/intf/Mtop$1;->this$0:Lmtopsdk/mtop/intf/Mtop;

    iput-boolean v3, v1, Lmtopsdk/mtop/intf/Mtop;->isInited:Z

    .line 242
    iget-object v1, p0, Lmtopsdk/mtop/intf/Mtop$1;->this$0:Lmtopsdk/mtop/intf/Mtop;

    iget-object v1, v1, Lmtopsdk/mtop/intf/Mtop;->initLock:[B

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 244
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v4

    const-string v5, "mtopsdk.Mtop"

    .line 240
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lmtopsdk/mtop/intf/Mtop$1;->this$0:Lmtopsdk/mtop/intf/Mtop;

    iget-object v7, v7, Lmtopsdk/mtop/intf/Mtop;->instanceId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " [init]do executeCoreTask cost[ms]: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v1

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    iget-object v1, p0, Lmtopsdk/mtop/intf/Mtop$1;->this$0:Lmtopsdk/mtop/intf/Mtop;

    iput-boolean v3, v1, Lmtopsdk/mtop/intf/Mtop;->isInited:Z

    .line 242
    iget-object v1, p0, Lmtopsdk/mtop/intf/Mtop$1;->this$0:Lmtopsdk/mtop/intf/Mtop;

    iget-object v1, v1, Lmtopsdk/mtop/intf/Mtop;->initLock:[B

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    throw v4

    :catchall_1
    move-exception v1

    .line 244
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    .line 246
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lmtopsdk/mtop/intf/Mtop$1;->this$0:Lmtopsdk/mtop/intf/Mtop;

    iget-object v2, v2, Lmtopsdk/mtop/intf/Mtop;->instanceId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " [init] executeCoreTask error."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mtopsdk.Mtop"

    invoke-static {v2, v1, v0}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
