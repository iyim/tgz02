.class public Lcom/taobao/aranger/mit/IPCMonitor;
.super Ljava/lang/Object;
.source "IPCMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/aranger/mit/IPCMonitor$IpcState;
    }
.end annotation


# static fields
.field private static final MODULE_NAME:Ljava/lang/String; = "ARanger"

.field private static final TAG:Ljava/lang/String; = "IPCMonitor"

.field private static isAppMonitorValid:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    :try_start_0
    const-string v0, "com.alibaba.mtl.appmonitor.AppMonitor"

    .line 25
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    const/4 v0, 0x1

    .line 26
    sput-boolean v0, Lcom/taobao/aranger/mit/IPCMonitor;->isAppMonitorValid:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    .line 28
    sput-boolean v0, Lcom/taobao/aranger/mit/IPCMonitor;->isAppMonitorValid:Z

    :goto_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 18
    sget-boolean v0, Lcom/taobao/aranger/mit/IPCMonitor;->isAppMonitorValid:Z

    return v0
.end method
