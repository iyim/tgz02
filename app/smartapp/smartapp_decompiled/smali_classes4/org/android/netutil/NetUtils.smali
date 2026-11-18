.class public Lorg/android/netutil/NetUtils;
.super Ljava/lang/Object;
.source "NetUtils.java"


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getDefaultGateway(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 26
    invoke-static {p0}, Lorg/android/netutil/NetUtils;->native_GetDefaultGateway(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getPreferNextHop(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    .line 30
    invoke-static {p0, v0}, Lorg/android/netutil/NetUtils;->getPreferNextHop(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getPreferNextHop(Ljava/lang/String;I)Ljava/lang/String;
    .locals 8

    .line 35
    new-instance v7, Lorg/android/netutil/PingTask;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p0

    move v5, p1

    invoke-direct/range {v0 .. v6}, Lorg/android/netutil/PingTask;-><init>(Ljava/lang/String;IIIILorg/android/netutil/PingTaskWatcher;)V

    .line 36
    invoke-virtual {v7}, Lorg/android/netutil/PingTask;->get()[Lorg/android/netutil/PingResult;

    .line 37
    invoke-virtual {v7}, Lorg/android/netutil/PingTask;->release()V

    .line 39
    invoke-virtual {v7}, Lorg/android/netutil/PingTask;->getLocalIPStr()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 40
    invoke-virtual {v7}, Lorg/android/netutil/PingTask;->getLastHopIPStr()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static native native_CreateAndRegister(JLorg/android/netutil/NetListener;)J
.end method

.method private static native native_GetDefaultGateway(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private static native native_UnRegister(J)V
.end method

.method public static registerNetListener(Lorg/android/netutil/NetListener;)Z
    .locals 4

    if-eqz p0, :cond_0

    .line 10
    iget-object v0, p0, Lorg/android/netutil/NetListener;->netListenerType:Lorg/android/netutil/NetListenerType;

    invoke-virtual {v0}, Lorg/android/netutil/NetListenerType;->getValue()J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lorg/android/netutil/NetUtils;->native_CreateAndRegister(JLorg/android/netutil/NetListener;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/android/netutil/NetListener;->native_ptr:J

    .line 11
    iget-wide v0, p0, Lorg/android/netutil/NetListener;->native_ptr:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static unRegisterNetListener(Lorg/android/netutil/NetListener;)V
    .locals 5

    if-eqz p0, :cond_0

    .line 20
    iget-wide v0, p0, Lorg/android/netutil/NetListener;->native_ptr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 21
    iget-wide v0, p0, Lorg/android/netutil/NetListener;->native_ptr:J

    invoke-static {v0, v1}, Lorg/android/netutil/NetUtils;->native_UnRegister(J)V

    :cond_0
    return-void
.end method
