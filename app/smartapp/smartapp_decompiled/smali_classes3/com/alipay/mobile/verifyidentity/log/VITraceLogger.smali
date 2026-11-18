.class public Lcom/alipay/mobile/verifyidentity/log/VITraceLogger;
.super Ljava/lang/Object;
.source "VITraceLogger.java"


# static fields
.field private static c:Lcom/alipay/mobile/verifyidentity/log/VITraceLogger;


# instance fields
.field private a:Z

.field private b:Ljava/lang/StringBuffer;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/log/VITraceLogger;->a:Z

    .line 16
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/log/VITraceLogger;->b:Ljava/lang/StringBuffer;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hackbyte "

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 128
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/log/VITraceLogger;->b:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 129
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/log/VITraceLogger;->b:Ljava/lang/StringBuffer;

    const/16 v1, 0x5b

    .line 130
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 131
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "] "

    .line 132
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 133
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 134
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x2

    .line 165
    new-array v1, v0, [Ljava/lang/Class;

    const-class v2, Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-class v2, Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p2, v0, v3

    aput-object p3, v0, v4

    invoke-direct {p0, p1, v1, v0}, Lcom/alipay/mobile/verifyidentity/log/VITraceLogger;->a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z
    .locals 6

    const/4 v0, 0x3

    .line 175
    new-array v1, v0, [Ljava/lang/Class;

    const-class v2, Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-class v2, Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-class v2, Ljava/lang/Throwable;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p2, v0, v3

    aput-object p3, v0, v4

    aput-object p4, v0, v5

    invoke-direct {p0, p1, v1, v0}, Lcom/alipay/mobile/verifyidentity/log/VITraceLogger;->a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z
    .locals 5

    const/4 v0, 0x2

    .line 170
    new-array v1, v0, [Ljava/lang/Class;

    const-class v2, Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-class v2, Ljava/lang/Throwable;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p2, v0, v3

    aput-object p3, v0, v4

    invoke-direct {p0, p1, v1, v0}, Lcom/alipay/mobile/verifyidentity/log/VITraceLogger;->a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public static declared-synchronized getInstance()Lcom/alipay/mobile/verifyidentity/log/VITraceLogger;
    .locals 2

    const-class v0, Lcom/alipay/mobile/verifyidentity/log/VITraceLogger;

    monitor-enter v0

    .line 25
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/verifyidentity/log/VITraceLogger;->c:Lcom/alipay/mobile/verifyidentity/log/VITraceLogger;

    if-nez v1, :cond_0

    .line 26
    new-instance v1, Lcom/alipay/mobile/verifyidentity/log/VITraceLogger;

    invoke-direct {v1}, Lcom/alipay/mobile/verifyidentity/log/VITraceLogger;-><init>()V

    sput-object v1, Lcom/alipay/mobile/verifyidentity/log/VITraceLogger;->c:Lcom/alipay/mobile/verifyidentity/log/VITraceLogger;

    .line 28
    :cond_0
    sget-object v1, Lcom/alipay/mobile/verifyidentity/log/VITraceLogger;->c:Lcom/alipay/mobile/verifyidentity/log/VITraceLogger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static throwableToString(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 4

    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    .line 141
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 142
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 144
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-nez v3, :cond_1

    .line 146
    invoke-virtual {p0, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    :cond_1
    :goto_0
    if-eqz v3, :cond_2

    .line 150
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 151
    invoke-virtual {v3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    goto :goto_0

    .line 153
    :cond_2
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    .line 154
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v0
.end method


# virtual methods
.method public debug(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "debug"

    .line 50
    invoke-direct {p0, v0, p1, p2}, Lcom/alipay/mobile/verifyidentity/log/VITraceLogger;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 53
    :cond_0
    iget-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/log/VITraceLogger;->a:Z

    if-eqz v0, :cond_1

    .line 54
    invoke-direct {p0, p2}, Lcom/alipay/mobile/verifyidentity/log/VITraceLogger;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "error"

    .line 80
    invoke-direct {p0, v0, p1, p2}, Lcom/alipay/mobile/verifyidentity/log/VITraceLogger;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 83
    :cond_0
    iget-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/log/VITraceLogger;->a:Z

    if-eqz v0, :cond_1

    .line 84
    invoke-direct {p0, p2}, Lcom/alipay/mobile/verifyidentity/log/VITraceLogger;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "error"

    .line 100
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/alipay/mobile/verifyidentity/log/VITraceLogger;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 103
    :cond_0
    invoke-static {p3}, Lcom/alipay/mobile/verifyidentity/log/VITraceLogger;->throwableToString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p3

    .line 104
    iget-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/log/VITraceLogger;->a:Z

    if-eqz v0, :cond_2

    if-eqz p2, :cond_1

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p3}, Lcom/alipay/mobile/verifyidentity/log/VITraceLogger;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    invoke-direct {p0, p3}, Lcom/alipay/mobile/verifyidentity/log/VITraceLogger;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "error"

    .line 89
    invoke-direct {p0, v0, p1, p2}, Lcom/alipay/mobile/verifyidentity/log/VITraceLogger;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 92
    :cond_0
    invoke-static {p2}, Lcom/alipay/mobile/verifyidentity/log/VITraceLogger;->throwableToString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    .line 94
    iget-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/log/VITraceLogger;->a:Z

    if-eqz v0, :cond_1

    .line 95
    invoke-direct {p0, p2}, Lcom/alipay/mobile/verifyidentity/log/VITraceLogger;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public info(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "info"

    .line 32
    invoke-direct {p0, v0, p1, p2}, Lcom/alipay/mobile/verifyidentity/log/VITraceLogger;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 35
    :cond_0
    iget-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/log/VITraceLogger;->a:Z

    if-eqz v0, :cond_1

    .line 36
    invoke-direct {p0, p2}, Lcom/alipay/mobile/verifyidentity/log/VITraceLogger;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public print(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "print"

    .line 110
    invoke-direct {p0, v0, p1, p2}, Lcom/alipay/mobile/verifyidentity/log/VITraceLogger;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 113
    :cond_0
    iget-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/log/VITraceLogger;->a:Z

    if-eqz v0, :cond_1

    .line 114
    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public print(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "print"

    .line 119
    invoke-direct {p0, v0, p1, p2}, Lcom/alipay/mobile/verifyidentity/log/VITraceLogger;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 122
    :cond_0
    iget-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/log/VITraceLogger;->a:Z

    if-eqz v0, :cond_1

    const-string v0, ""

    .line 123
    invoke-static {p1, v0, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return-void
.end method

.method public setDebug(Z)V
    .locals 0

    .line 21
    iput-boolean p1, p0, Lcom/alipay/mobile/verifyidentity/log/VITraceLogger;->a:Z

    return-void
.end method

.method public verbose(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "verbose"

    .line 41
    invoke-direct {p0, v0, p1, p2}, Lcom/alipay/mobile/verifyidentity/log/VITraceLogger;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 44
    :cond_0
    iget-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/log/VITraceLogger;->a:Z

    if-eqz v0, :cond_1

    .line 45
    invoke-direct {p0, p2}, Lcom/alipay/mobile/verifyidentity/log/VITraceLogger;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public warn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "warn"

    .line 59
    invoke-direct {p0, v0, p1, p2}, Lcom/alipay/mobile/verifyidentity/log/VITraceLogger;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 62
    :cond_0
    iget-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/log/VITraceLogger;->a:Z

    if-eqz v0, :cond_1

    .line 63
    invoke-direct {p0, p2}, Lcom/alipay/mobile/verifyidentity/log/VITraceLogger;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "warn"

    .line 68
    invoke-direct {p0, v0, p1, p2}, Lcom/alipay/mobile/verifyidentity/log/VITraceLogger;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 71
    :cond_0
    invoke-static {p2}, Lcom/alipay/mobile/verifyidentity/log/VITraceLogger;->throwableToString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    .line 73
    iget-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/log/VITraceLogger;->a:Z

    if-eqz v0, :cond_1

    .line 74
    invoke-direct {p0, p2}, Lcom/alipay/mobile/verifyidentity/log/VITraceLogger;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method
