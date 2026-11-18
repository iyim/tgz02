.class public Lcom/taobao/orange/util/OrangeMonitor;
.super Ljava/lang/Object;
.source "OrangeMonitor.java"


# static fields
.field public static mAppMonitorValid:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 1

    :try_start_0
    const-string v0, "com.alibaba.mtl.appmonitor.AppMonitor"

    .line 19
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    const/4 v0, 0x1

    .line 20
    sput-boolean v0, Lcom/taobao/orange/util/OrangeMonitor;->mAppMonitorValid:Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    .line 22
    sput-boolean v0, Lcom/taobao/orange/util/OrangeMonitor;->mAppMonitorValid:Z

    :goto_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static commitCount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V
    .locals 1

    .line 39
    sget-boolean v0, Lcom/taobao/orange/util/OrangeMonitor;->mAppMonitorValid:Z

    if-eqz v0, :cond_0

    .line 40
    invoke-static {p0, p1, p2, p3, p4}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Counter;->commit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static commitFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 33
    sget-boolean v0, Lcom/taobao/orange/util/OrangeMonitor;->mAppMonitorValid:Z

    if-eqz v0, :cond_0

    .line 34
    invoke-static {p0, p1, p2, p3, p4}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Alarm;->commitFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static commitStat(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V
    .locals 1

    .line 51
    sget-boolean v0, Lcom/taobao/orange/util/OrangeMonitor;->mAppMonitorValid:Z

    if-eqz v0, :cond_0

    .line 52
    invoke-static {p0, p1, p2, p3}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Stat;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V

    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static commitSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 27
    sget-boolean v0, Lcom/taobao/orange/util/OrangeMonitor;->mAppMonitorValid:Z

    if-eqz v0, :cond_0

    .line 28
    invoke-static {p0, p1, p2}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Alarm;->commitSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;Z)V
    .locals 1

    .line 45
    sget-boolean v0, Lcom/taobao/orange/util/OrangeMonitor;->mAppMonitorValid:Z

    if-eqz v0, :cond_0

    .line 46
    invoke-static {p0, p1, p2, p3, p4}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;Z)V

    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
