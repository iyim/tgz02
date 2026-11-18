.class public Lcom/taobao/zcache/log/ZLog;
.super Ljava/lang/Object;
.source "ZLog.java"


# static fields
.field private static supportTLog:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    :try_start_0
    const-class v0, Lcom/taobao/tlog/adapter/AdapterForTLog;
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static d(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 42
    :try_start_0
    sget-boolean v0, Lcom/taobao/zcache/log/ZLog;->supportTLog:Z

    if-eqz v0, :cond_0

    .line 43
    invoke-static {p0, p1}, Lcom/taobao/tlog/adapter/AdapterForTLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 45
    :cond_0
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static e(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 86
    :try_start_0
    sget-boolean v0, Lcom/taobao/zcache/log/ZLog;->supportTLog:Z

    if-eqz v0, :cond_0

    .line 87
    invoke-static {p0, p1}, Lcom/taobao/tlog/adapter/AdapterForTLog;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 89
    :cond_0
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static i(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 56
    :try_start_0
    sget-boolean v0, Lcom/taobao/zcache/log/ZLog;->supportTLog:Z

    if-eqz v0, :cond_0

    .line 58
    invoke-static {p0, p1}, Lcom/taobao/tlog/adapter/AdapterForTLog;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 60
    :cond_0
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static init(Landroid/content/Context;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static setLogImpl(Ljava/lang/Object;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static v(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 28
    :try_start_0
    sget-boolean v0, Lcom/taobao/zcache/log/ZLog;->supportTLog:Z

    if-eqz v0, :cond_0

    .line 29
    invoke-static {p0, p1}, Lcom/taobao/tlog/adapter/AdapterForTLog;->logv(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 31
    :cond_0
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static w(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 71
    :try_start_0
    sget-boolean v0, Lcom/taobao/zcache/log/ZLog;->supportTLog:Z

    if-eqz v0, :cond_0

    .line 73
    invoke-static {p0, p1}, Lcom/taobao/tlog/adapter/AdapterForTLog;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 75
    :cond_0
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
