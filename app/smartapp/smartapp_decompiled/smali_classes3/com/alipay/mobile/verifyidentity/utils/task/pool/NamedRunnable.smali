.class public Lcom/alipay/mobile/verifyidentity/utils/task/pool/NamedRunnable;
.super Ljava/lang/Object;
.source "NamedRunnable.java"

# interfaces
.implements Lcom/alipay/mobile/verifyidentity/utils/task/pool/Pool$Poolable;
.implements Ljava/lang/Runnable;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x9
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/verifyidentity/utils/task/pool/NamedRunnable$NamedRunnablePool;
    }
.end annotation


# static fields
.field public static final a:Lcom/alipay/mobile/verifyidentity/utils/task/pool/NamedRunnable$NamedRunnablePool;


# instance fields
.field b:Ljava/lang/String;

.field c:Ljava/lang/Runnable;

.field d:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 84
    new-instance v0, Lcom/alipay/mobile/verifyidentity/utils/task/pool/NamedRunnable$NamedRunnablePool;

    const/16 v1, 0x8

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/verifyidentity/utils/task/pool/NamedRunnable$NamedRunnablePool;-><init>(II)V

    sput-object v0, Lcom/alipay/mobile/verifyidentity/utils/task/pool/NamedRunnable;->a:Lcom/alipay/mobile/verifyidentity/utils/task/pool/NamedRunnable$NamedRunnablePool;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method constructor <init>(Ljava/lang/Runnable;Ljava/lang/String;I)V
    .locals 1

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 90
    iput v0, p0, Lcom/alipay/mobile/verifyidentity/utils/task/pool/NamedRunnable;->d:I

    .line 93
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/utils/task/pool/NamedRunnable;->c:Ljava/lang/Runnable;

    .line 94
    iput-object p2, p0, Lcom/alipay/mobile/verifyidentity/utils/task/pool/NamedRunnable;->b:Ljava/lang/String;

    .line 95
    iput p3, p0, Lcom/alipay/mobile/verifyidentity/utils/task/pool/NamedRunnable;->d:I

    .line 96
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const-class p1, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {p1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "hackbyte "

    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static b()Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "com.alipay.mobile.verifyidentity.common.ExportBeacon"

    const-string v2, "gotThis"

    const/4 v3, 0x0

    .line 156
    invoke-static {v1, v2, v3, v3}, Lcom/alipay/mobile/verifyidentity/utils/ReflectUtils;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 160
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return v0
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    .line 144
    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/utils/task/pool/NamedRunnable;->c:Ljava/lang/Runnable;

    .line 145
    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/utils/task/pool/NamedRunnable;->b:Ljava/lang/String;

    const/4 v0, 0x0

    .line 146
    iput v0, p0, Lcom/alipay/mobile/verifyidentity/utils/task/pool/NamedRunnable;->d:I

    return-void
.end method

.method a(I)V
    .locals 0

    .line 107
    iput p1, p0, Lcom/alipay/mobile/verifyidentity/utils/task/pool/NamedRunnable;->d:I

    return-void
.end method

.method a(Ljava/lang/Runnable;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/utils/task/pool/NamedRunnable;->c:Ljava/lang/Runnable;

    return-void
.end method

.method a(Ljava/lang/String;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/utils/task/pool/NamedRunnable;->b:Ljava/lang/String;

    return-void
.end method

.method public run()V
    .locals 15

    const-string v0, "NamedRunable.run(set ThreadName back to:"

    const-string v1, "NamedRunnable.run()->finish(TASK_POOL.free(this)): pool.size="

    const-string v2, " ms"

    const-string v3, "] cost "

    const-string v4, "["

    .line 113
    iget-object v5, p0, Lcom/alipay/mobile/verifyidentity/utils/task/pool/NamedRunnable;->b:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const-string v6, ")"

    const-string v7, "AsyncTaskExecutor"

    if-nez v5, :cond_0

    .line 114
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v5

    .line 115
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/log/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/verifyidentity/log/VITraceLogger;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "NamedRunable.run(set ThreadName to:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/alipay/mobile/verifyidentity/utils/task/pool/NamedRunnable;->b:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v7, v9}, Lcom/alipay/mobile/verifyidentity/log/VITraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/alipay/mobile/verifyidentity/utils/task/pool/NamedRunnable;->b:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    .line 118
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 120
    :try_start_0
    iget-object v10, p0, Lcom/alipay/mobile/verifyidentity/utils/task/pool/NamedRunnable;->c:Ljava/lang/Runnable;

    invoke-interface {v10}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Lcom/alipay/mobile/verifyidentity/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 130
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/log/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/verifyidentity/log/VITraceLogger;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/alipay/mobile/verifyidentity/utils/task/pool/NamedRunnable;->b:Ljava/lang/String;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v10, v8

    invoke-virtual {v13, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v7, v2}, Lcom/alipay/mobile/verifyidentity/log/VITraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    iget-object v2, p0, Lcom/alipay/mobile/verifyidentity/utils/task/pool/NamedRunnable;->b:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 132
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/log/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/verifyidentity/log/VITraceLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v7, v0}, Lcom/alipay/mobile/verifyidentity/log/VITraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 136
    :cond_1
    sget-object v0, Lcom/alipay/mobile/verifyidentity/utils/task/pool/NamedRunnable;->a:Lcom/alipay/mobile/verifyidentity/utils/task/pool/NamedRunnable$NamedRunnablePool;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/verifyidentity/utils/task/pool/NamedRunnable$NamedRunnablePool;->a(Lcom/alipay/mobile/verifyidentity/utils/task/pool/NamedRunnable;)V

    .line 137
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/log/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/verifyidentity/log/VITraceLogger;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/alipay/mobile/verifyidentity/utils/task/pool/NamedRunnable;->a:Lcom/alipay/mobile/verifyidentity/utils/task/pool/NamedRunnable$NamedRunnablePool;

    iget-object v1, v1, Lcom/alipay/mobile/verifyidentity/utils/task/pool/NamedRunnable$NamedRunnablePool;->c:Ljava/util/ArrayDeque;

    .line 138
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->size()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 137
    invoke-virtual {v0, v7, v1}, Lcom/alipay/mobile/verifyidentity/log/VITraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :catchall_0
    move-exception v10

    goto/16 :goto_3

    :catch_0
    move-exception v10

    .line 127
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/log/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/verifyidentity/log/VITraceLogger;

    move-result-object v11

    iget-object v12, p0, Lcom/alipay/mobile/verifyidentity/utils/task/pool/NamedRunnable;->b:Ljava/lang/String;

    invoke-virtual {v11, v7, v12, v10}, Lcom/alipay/mobile/verifyidentity/log/VITraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 129
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 130
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/log/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/verifyidentity/log/VITraceLogger;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/alipay/mobile/verifyidentity/utils/task/pool/NamedRunnable;->b:Ljava/lang/String;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v10, v8

    invoke-virtual {v13, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v7, v2}, Lcom/alipay/mobile/verifyidentity/log/VITraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    iget-object v2, p0, Lcom/alipay/mobile/verifyidentity/utils/task/pool/NamedRunnable;->b:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 132
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/log/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/verifyidentity/log/VITraceLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v7, v0}, Lcom/alipay/mobile/verifyidentity/log/VITraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 136
    :cond_2
    sget-object v0, Lcom/alipay/mobile/verifyidentity/utils/task/pool/NamedRunnable;->a:Lcom/alipay/mobile/verifyidentity/utils/task/pool/NamedRunnable$NamedRunnablePool;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/verifyidentity/utils/task/pool/NamedRunnable$NamedRunnablePool;->a(Lcom/alipay/mobile/verifyidentity/utils/task/pool/NamedRunnable;)V

    .line 137
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/log/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/verifyidentity/log/VITraceLogger;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_1

    :catch_1
    move-exception v10

    .line 122
    :try_start_2
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/log/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/verifyidentity/log/VITraceLogger;

    move-result-object v11

    iget-object v12, p0, Lcom/alipay/mobile/verifyidentity/utils/task/pool/NamedRunnable;->b:Ljava/lang/String;

    invoke-virtual {v11, v7, v12, v10}, Lcom/alipay/mobile/verifyidentity/log/VITraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 123
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/utils/task/pool/NamedRunnable;->b()Z

    move-result v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v11, :cond_4

    .line 129
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 130
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/log/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/verifyidentity/log/VITraceLogger;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/alipay/mobile/verifyidentity/utils/task/pool/NamedRunnable;->b:Ljava/lang/String;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v10, v8

    invoke-virtual {v13, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v7, v2}, Lcom/alipay/mobile/verifyidentity/log/VITraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    iget-object v2, p0, Lcom/alipay/mobile/verifyidentity/utils/task/pool/NamedRunnable;->b:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 132
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/log/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/verifyidentity/log/VITraceLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v7, v0}, Lcom/alipay/mobile/verifyidentity/log/VITraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 136
    :cond_3
    sget-object v0, Lcom/alipay/mobile/verifyidentity/utils/task/pool/NamedRunnable;->a:Lcom/alipay/mobile/verifyidentity/utils/task/pool/NamedRunnable$NamedRunnablePool;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/verifyidentity/utils/task/pool/NamedRunnable$NamedRunnablePool;->a(Lcom/alipay/mobile/verifyidentity/utils/task/pool/NamedRunnable;)V

    .line 137
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/log/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/verifyidentity/log/VITraceLogger;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_1

    :goto_2
    return-void

    .line 124
    :cond_4
    :try_start_3
    throw v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 129
    :goto_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 130
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/log/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/verifyidentity/log/VITraceLogger;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/alipay/mobile/verifyidentity/utils/task/pool/NamedRunnable;->b:Ljava/lang/String;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v11, v8

    invoke-virtual {v14, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v7, v2}, Lcom/alipay/mobile/verifyidentity/log/VITraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    iget-object v2, p0, Lcom/alipay/mobile/verifyidentity/utils/task/pool/NamedRunnable;->b:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 132
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/log/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/verifyidentity/log/VITraceLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v7, v0}, Lcom/alipay/mobile/verifyidentity/log/VITraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 136
    :cond_5
    sget-object v0, Lcom/alipay/mobile/verifyidentity/utils/task/pool/NamedRunnable;->a:Lcom/alipay/mobile/verifyidentity/utils/task/pool/NamedRunnable$NamedRunnablePool;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/verifyidentity/utils/task/pool/NamedRunnable$NamedRunnablePool;->a(Lcom/alipay/mobile/verifyidentity/utils/task/pool/NamedRunnable;)V

    .line 137
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/log/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/verifyidentity/log/VITraceLogger;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/alipay/mobile/verifyidentity/utils/task/pool/NamedRunnable;->a:Lcom/alipay/mobile/verifyidentity/utils/task/pool/NamedRunnable$NamedRunnablePool;

    iget-object v1, v1, Lcom/alipay/mobile/verifyidentity/utils/task/pool/NamedRunnable$NamedRunnablePool;->c:Ljava/util/ArrayDeque;

    .line 138
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->size()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 137
    invoke-virtual {v0, v7, v1}, Lcom/alipay/mobile/verifyidentity/log/VITraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    goto :goto_5

    :goto_4
    throw v10

    :goto_5
    goto :goto_4
.end method
