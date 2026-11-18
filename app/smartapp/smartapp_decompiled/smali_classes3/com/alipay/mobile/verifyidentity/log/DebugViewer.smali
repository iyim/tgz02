.class public Lcom/alipay/mobile/verifyidentity/log/DebugViewer;
.super Ljava/lang/Object;
.source "DebugViewer.java"


# static fields
.field private static a:Lcom/alipay/mobile/verifyidentity/log/BaseDebugViewer;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 12
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

.method private static a()Lcom/alipay/mobile/verifyidentity/log/BaseDebugViewer;
    .locals 1

    .line 76
    new-instance v0, Lcom/alipay/mobile/verifyidentity/log/DebugViewer$1;

    invoke-direct {v0}, Lcom/alipay/mobile/verifyidentity/log/DebugViewer$1;-><init>()V

    return-object v0
.end method

.method public static getInstance()Lcom/alipay/mobile/verifyidentity/log/BaseDebugViewer;
    .locals 5

    .line 17
    sget-object v0, Lcom/alipay/mobile/verifyidentity/log/DebugViewer;->a:Lcom/alipay/mobile/verifyidentity/log/BaseDebugViewer;

    if-nez v0, :cond_2

    .line 18
    const-class v0, Lcom/alipay/mobile/verifyidentity/log/DebugViewer;

    monitor-enter v0

    .line 19
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/verifyidentity/log/DebugViewer;->a:Lcom/alipay/mobile/verifyidentity/log/BaseDebugViewer;

    if-nez v1, :cond_1

    const-string v1, "com.alipay.mobile.verifyidentity.helper.DebugViewer"

    const-string v2, "getInstance"

    const/4 v3, 0x0

    .line 20
    new-array v4, v3, [Ljava/lang/Class;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v4, v3}, Lcom/alipay/mobile/verifyidentity/utils/ReflectUtils;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 24
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/log/DebugViewer;->a()Lcom/alipay/mobile/verifyidentity/log/BaseDebugViewer;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 26
    :cond_0
    check-cast v1, Lcom/alipay/mobile/verifyidentity/log/BaseDebugViewer;

    sput-object v1, Lcom/alipay/mobile/verifyidentity/log/DebugViewer;->a:Lcom/alipay/mobile/verifyidentity/log/BaseDebugViewer;

    .line 28
    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 30
    :cond_2
    :goto_0
    sget-object v0, Lcom/alipay/mobile/verifyidentity/log/DebugViewer;->a:Lcom/alipay/mobile/verifyidentity/log/BaseDebugViewer;

    return-object v0
.end method
