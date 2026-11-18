.class public Lcom/alibaba/mtl/appmonitor/AppMonitor$OffLineCounter;
.super Ljava/lang/Object;
.source "AppMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/mtl/appmonitor/AppMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OffLineCounter"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 627
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static checkSampled(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public static commit(Ljava/lang/String;Ljava/lang/String;D)V
    .locals 0

    .line 658
    invoke-static {p0, p1, p2, p3}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Counter;->commit(Ljava/lang/String;Ljava/lang/String;D)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static setSampling(I)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static setStatisticsInterval(I)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
