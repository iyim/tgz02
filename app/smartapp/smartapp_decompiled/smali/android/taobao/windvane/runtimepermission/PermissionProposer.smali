.class public final Landroid/taobao/windvane/runtimepermission/PermissionProposer;
.super Ljava/lang/Object;
.source "PermissionProposer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/taobao/windvane/runtimepermission/PermissionProposer$PermissionRequestTask;
    }
.end annotation


# static fields
.field private static sCurrentPermissionRequestTask:Landroid/taobao/windvane/runtimepermission/PermissionProposer$PermissionRequestTask;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$202(Landroid/taobao/windvane/runtimepermission/PermissionProposer$PermissionRequestTask;)Landroid/taobao/windvane/runtimepermission/PermissionProposer$PermissionRequestTask;
    .locals 0

    .line 39
    sput-object p0, Landroid/taobao/windvane/runtimepermission/PermissionProposer;->sCurrentPermissionRequestTask:Landroid/taobao/windvane/runtimepermission/PermissionProposer$PermissionRequestTask;

    return-object p0
.end method

.method public static declared-synchronized buildPermissionTask(Landroid/content/Context;[Ljava/lang/String;)Landroid/taobao/windvane/runtimepermission/PermissionProposer$PermissionRequestTask;
    .locals 2

    const-class v0, Landroid/taobao/windvane/runtimepermission/PermissionProposer;

    monitor-enter v0

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    .line 54
    :try_start_0
    array-length v1, p1

    if-eqz v1, :cond_0

    .line 57
    new-instance v1, Landroid/taobao/windvane/runtimepermission/PermissionProposer$PermissionRequestTask;

    invoke-direct {v1}, Landroid/taobao/windvane/runtimepermission/PermissionProposer$PermissionRequestTask;-><init>()V

    .line 58
    invoke-static {v1, p0}, Landroid/taobao/windvane/runtimepermission/PermissionProposer$PermissionRequestTask;->access$002(Landroid/taobao/windvane/runtimepermission/PermissionProposer$PermissionRequestTask;Landroid/content/Context;)Landroid/content/Context;

    .line 59
    invoke-static {v1, p1}, Landroid/taobao/windvane/runtimepermission/PermissionProposer$PermissionRequestTask;->access$102(Landroid/taobao/windvane/runtimepermission/PermissionProposer$PermissionRequestTask;[Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    monitor-exit v0

    return-object v1

    .line 55
    :cond_0
    :try_start_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "permissions can not be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 51
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "context can not be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized buildSystemAlertPermissionTask(Landroid/app/Activity;)Landroid/taobao/windvane/runtimepermission/PermissionProposer$PermissionRequestTask;
    .locals 2

    const-class v0, Landroid/taobao/windvane/runtimepermission/PermissionProposer;

    monitor-enter v0

    :try_start_0
    const-string v1, "android.permission.SYSTEM_ALERT_WINDOW"

    .line 65
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/taobao/windvane/runtimepermission/PermissionProposer;->buildPermissionTask(Landroid/content/Context;[Ljava/lang/String;)Landroid/taobao/windvane/runtimepermission/PermissionProposer$PermissionRequestTask;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 78
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p1, 0x17

    if-lt p0, p1, :cond_0

    .line 79
    sget-object p0, Landroid/taobao/windvane/runtimepermission/PermissionProposer;->sCurrentPermissionRequestTask:Landroid/taobao/windvane/runtimepermission/PermissionProposer$PermissionRequestTask;

    .line 80
    invoke-virtual {p0}, Landroid/taobao/windvane/runtimepermission/PermissionProposer$PermissionRequestTask;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result p1

    .line 79
    invoke-virtual {p0, p1}, Landroid/taobao/windvane/runtimepermission/PermissionProposer$PermissionRequestTask;->onPermissionGranted(Z)V

    :cond_0
    const/4 p0, 0x0

    .line 82
    sput-object p0, Landroid/taobao/windvane/runtimepermission/PermissionProposer;->sCurrentPermissionRequestTask:Landroid/taobao/windvane/runtimepermission/PermissionProposer$PermissionRequestTask;

    return-void
.end method

.method static onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    .line 71
    sget-object p0, Landroid/taobao/windvane/runtimepermission/PermissionProposer;->sCurrentPermissionRequestTask:Landroid/taobao/windvane/runtimepermission/PermissionProposer$PermissionRequestTask;

    if-eqz p0, :cond_0

    .line 72
    invoke-static {p2}, Landroid/taobao/windvane/runtimepermission/PermissionProposer;->verifyPermissions([I)Z

    move-result p1

    invoke-virtual {p0, p1}, Landroid/taobao/windvane/runtimepermission/PermissionProposer$PermissionRequestTask;->onPermissionGranted(Z)V

    const/4 p0, 0x0

    .line 73
    sput-object p0, Landroid/taobao/windvane/runtimepermission/PermissionProposer;->sCurrentPermissionRequestTask:Landroid/taobao/windvane/runtimepermission/PermissionProposer$PermissionRequestTask;

    :cond_0
    return-void
.end method

.method private static verifyPermissions([I)Z
    .locals 5

    .line 87
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    return v1

    .line 90
    :cond_0
    array-length v0, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    aget v4, p0, v3

    if-eqz v4, :cond_1

    return v1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method
