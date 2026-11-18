.class public Lcom/alipay/mobile/verifyidentity/log/crash/VerifyIdentityCrashHandler;
.super Ljava/lang/Object;
.source "VerifyIdentityCrashHandler.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field private static final a:Ljava/lang/String; = "VerifyIdentityCrashHandler"

.field private static b:Lcom/alipay/mobile/verifyidentity/log/crash/VerifyIdentityCrashHandler;


# instance fields
.field private c:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

.method private a(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 3

    .line 66
    :try_start_0
    invoke-static {p1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->getExceptionMsg(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 67
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 69
    sget-object v1, Lcom/alipay/mobile/verifyidentity/log/crash/VerifyIdentityCrashHandler;->a:Ljava/lang/String;

    const-string v2, "fail to build encodedExceptionMsg\uff1a"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v1, "-"

    .line 71
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "170823-1;20000666;vicrashinfo;"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ";"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static getInstance()Lcom/alipay/mobile/verifyidentity/log/crash/VerifyIdentityCrashHandler;
    .locals 2

    .line 22
    sget-object v0, Lcom/alipay/mobile/verifyidentity/log/crash/VerifyIdentityCrashHandler;->b:Lcom/alipay/mobile/verifyidentity/log/crash/VerifyIdentityCrashHandler;

    if-nez v0, :cond_1

    .line 23
    const-class v0, Lcom/alipay/mobile/verifyidentity/log/crash/VerifyIdentityCrashHandler;

    monitor-enter v0

    .line 24
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/verifyidentity/log/crash/VerifyIdentityCrashHandler;->b:Lcom/alipay/mobile/verifyidentity/log/crash/VerifyIdentityCrashHandler;

    if-nez v1, :cond_0

    .line 25
    new-instance v1, Lcom/alipay/mobile/verifyidentity/log/crash/VerifyIdentityCrashHandler;

    invoke-direct {v1}, Lcom/alipay/mobile/verifyidentity/log/crash/VerifyIdentityCrashHandler;-><init>()V

    sput-object v1, Lcom/alipay/mobile/verifyidentity/log/crash/VerifyIdentityCrashHandler;->b:Lcom/alipay/mobile/verifyidentity/log/crash/VerifyIdentityCrashHandler;

    .line 27
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 29
    :cond_1
    :goto_0
    sget-object v0, Lcom/alipay/mobile/verifyidentity/log/crash/VerifyIdentityCrashHandler;->b:Lcom/alipay/mobile/verifyidentity/log/crash/VerifyIdentityCrashHandler;

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/log/crash/VerifyIdentityCrashHandler;->c:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_0

    .line 59
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/log/crash/VerifyIdentityCrashHandler;->c:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    :cond_0
    return-void
.end method

.method public start()V
    .locals 2

    .line 33
    sget-object v0, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Y"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/log/crash/VerifyIdentityCrashHandler;->c:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 35
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    :cond_0
    return-void
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 2

    .line 42
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/log/crash/VerifyIdentityCrashHandler;->c:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 46
    :try_start_0
    sget-object v0, Lcom/alipay/mobile/verifyidentity/log/crash/VerifyIdentityCrashHandler;->a:Ljava/lang/String;

    const-string v1, "VI uncaughtException"

    invoke-static {v0, v1, p2}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 47
    sget-object v0, Lcom/alipay/mobile/verifyidentity/log/crash/VerifyIdentityCrashHandler;->a:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/alipay/mobile/verifyidentity/log/crash/VerifyIdentityCrashHandler;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;->getInstance()Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;

    move-result-object v0

    invoke-direct {p0, p2}, Lcom/alipay/mobile/verifyidentity/log/crash/VerifyIdentityCrashHandler;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;->writeCrashLog(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 50
    sget-object v1, Lcom/alipay/mobile/verifyidentity/log/crash/VerifyIdentityCrashHandler;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 52
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/log/crash/VerifyIdentityCrashHandler;->c:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_0

    .line 53
    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method
