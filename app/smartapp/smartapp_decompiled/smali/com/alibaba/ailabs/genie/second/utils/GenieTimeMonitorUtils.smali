.class public Lcom/alibaba/ailabs/genie/second/utils/GenieTimeMonitorUtils;
.super Ljava/lang/Object;
.source "GenieTimeMonitorUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GenieTimeMonitorUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static beginTimeCalculate(Ljava/lang/String;)V
    .locals 0

    .line 25
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/second/utils/GenieTimeUtils;->beginTimeCalculate(Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static clearTimeCalculate(Ljava/lang/String;)V
    .locals 0

    .line 78
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/second/utils/GenieTimeUtils;->clearTimeCalculate(Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getTimeCalculate(Ljava/lang/String;)J
    .locals 2

    .line 35
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/second/utils/GenieTimeUtils;->getTimeCalculate(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static stopTimeCalculate(Ljava/lang/String;)J
    .locals 3

    .line 44
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/second/utils/GenieTimeUtils;->getTimeCalculate(Ljava/lang/String;)J

    move-result-wide v0

    .line 45
    new-instance v2, Lcom/alibaba/ailabs/genie/second/utils/GenieTimeMonitorUtils$1;

    invoke-direct {v2, p0, v0, v1}, Lcom/alibaba/ailabs/genie/second/utils/GenieTimeMonitorUtils$1;-><init>(Ljava/lang/String;J)V

    invoke-static {v2}, Lcom/alibaba/ailabs/genie/taskpool/GenieThreadManager;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-wide v0
.end method

.method public static stopTimeCalculate(Ljava/lang/String;Ljava/lang/String;)J
    .locals 3

    .line 58
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/second/utils/GenieTimeUtils;->getTimeCalculate(Ljava/lang/String;)J

    move-result-wide v0

    .line 59
    new-instance v2, Lcom/alibaba/ailabs/genie/second/utils/GenieTimeMonitorUtils$2;

    invoke-direct {v2, p0, v0, v1, p1}, Lcom/alibaba/ailabs/genie/second/utils/GenieTimeMonitorUtils$2;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v2}, Lcom/alibaba/ailabs/genie/taskpool/GenieThreadManager;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-wide v0
.end method
