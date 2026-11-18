.class public Lcom/taobao/android/ultron/utils/DebugUtils;
.super Ljava/lang/Object;
.source "DebugUtils.java"


# static fields
.field private static sDebuggable:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static declared-synchronized isDebuggable(Landroid/content/Context;)Z
    .locals 2

    const-class v0, Lcom/taobao/android/ultron/utils/DebugUtils;

    monitor-enter v0

    .line 17
    :try_start_0
    sget-object v1, Lcom/taobao/android/ultron/utils/DebugUtils;->sDebuggable:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    const/4 v1, 0x0

    .line 21
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 22
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    const/4 v1, 0x1

    .line 27
    :catch_0
    :cond_0
    :try_start_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/taobao/android/ultron/utils/DebugUtils;->sDebuggable:Ljava/lang/Boolean;

    .line 29
    :cond_1
    sget-object p0, Lcom/taobao/android/ultron/utils/DebugUtils;->sDebuggable:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
