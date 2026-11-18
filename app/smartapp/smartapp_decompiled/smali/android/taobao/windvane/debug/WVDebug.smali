.class public Landroid/taobao/windvane/debug/WVDebug;
.super Ljava/lang/Object;
.source "WVDebug.java"


# static fields
.field private static isInited:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static declared-synchronized init()V
    .locals 3

    const-class v0, Landroid/taobao/windvane/debug/WVDebug;

    monitor-enter v0

    .line 13
    :try_start_0
    sget-boolean v1, Landroid/taobao/windvane/debug/WVDebug;->isInited:Z

    if-nez v1, :cond_0

    const-string v1, "WVDevelopTool"

    .line 14
    const-class v2, Landroid/taobao/windvane/jsbridge/api/WVDevelopTool;

    invoke-static {v1, v2}, Landroid/taobao/windvane/jsbridge/WVPluginManager;->registerPlugin(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v1, 0x1

    .line 15
    sput-boolean v1, Landroid/taobao/windvane/debug/WVDebug;->isInited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    :cond_0
    monitor-exit v0

    #disallowed odex opcode
    #return-void-no-barrier
    nop

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
