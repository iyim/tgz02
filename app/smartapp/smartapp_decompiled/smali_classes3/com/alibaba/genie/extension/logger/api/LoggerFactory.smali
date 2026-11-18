.class public Lcom/alibaba/genie/extension/logger/api/LoggerFactory;
.super Ljava/lang/Object;
.source "LoggerFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/genie/extension/logger/api/LoggerFactory$NullMonitorLogger;,
        Lcom/alibaba/genie/extension/logger/api/LoggerFactory$NullBehaviorLogger;,
        Lcom/alibaba/genie/extension/logger/api/LoggerFactory$NullTraceLogger;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LoggerFactory"

.field private static sBehaviorLogger:Lcom/alibaba/genie/extension/logger/api/behavior/BehaviorLogger;

.field private static sMonitorLogger:Lcom/alibaba/genie/extension/logger/api/monitor/MonitorLogger;

.field private static sTraceLogger:Lcom/alibaba/genie/extension/logger/api/trace/TraceLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    new-instance v0, Lcom/alibaba/genie/extension/logger/api/LoggerFactory$NullTraceLogger;

    invoke-direct {v0}, Lcom/alibaba/genie/extension/logger/api/LoggerFactory$NullTraceLogger;-><init>()V

    sput-object v0, Lcom/alibaba/genie/extension/logger/api/LoggerFactory;->sTraceLogger:Lcom/alibaba/genie/extension/logger/api/trace/TraceLogger;

    .line 19
    new-instance v0, Lcom/alibaba/genie/extension/logger/api/LoggerFactory$NullBehaviorLogger;

    invoke-direct {v0}, Lcom/alibaba/genie/extension/logger/api/LoggerFactory$NullBehaviorLogger;-><init>()V

    sput-object v0, Lcom/alibaba/genie/extension/logger/api/LoggerFactory;->sBehaviorLogger:Lcom/alibaba/genie/extension/logger/api/behavior/BehaviorLogger;

    .line 20
    new-instance v0, Lcom/alibaba/genie/extension/logger/api/LoggerFactory$NullMonitorLogger;

    invoke-direct {v0}, Lcom/alibaba/genie/extension/logger/api/LoggerFactory$NullMonitorLogger;-><init>()V

    sput-object v0, Lcom/alibaba/genie/extension/logger/api/LoggerFactory;->sMonitorLogger:Lcom/alibaba/genie/extension/logger/api/monitor/MonitorLogger;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getBehaviorLogger()Lcom/alibaba/genie/extension/logger/api/behavior/BehaviorLogger;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 27
    sget-object v0, Lcom/alibaba/genie/extension/logger/api/LoggerFactory;->sBehaviorLogger:Lcom/alibaba/genie/extension/logger/api/behavior/BehaviorLogger;

    return-object v0
.end method

.method public static getMonitorLogger()Lcom/alibaba/genie/extension/logger/api/monitor/MonitorLogger;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 31
    sget-object v0, Lcom/alibaba/genie/extension/logger/api/LoggerFactory;->sMonitorLogger:Lcom/alibaba/genie/extension/logger/api/monitor/MonitorLogger;

    return-object v0
.end method

.method public static getTraceLogger()Lcom/alibaba/genie/extension/logger/api/trace/TraceLogger;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 23
    sget-object v0, Lcom/alibaba/genie/extension/logger/api/LoggerFactory;->sTraceLogger:Lcom/alibaba/genie/extension/logger/api/trace/TraceLogger;

    return-object v0
.end method

.method public static setBehaviorLogger(Lcom/alibaba/genie/extension/logger/api/behavior/BehaviorLogger;)V
    .locals 0
    .param p0    # Lcom/alibaba/genie/extension/logger/api/behavior/BehaviorLogger;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 35
    sput-object p0, Lcom/alibaba/genie/extension/logger/api/LoggerFactory;->sBehaviorLogger:Lcom/alibaba/genie/extension/logger/api/behavior/BehaviorLogger;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static setMonitorLogger(Lcom/alibaba/genie/extension/logger/api/monitor/MonitorLogger;)V
    .locals 0
    .param p0    # Lcom/alibaba/genie/extension/logger/api/monitor/MonitorLogger;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 39
    sput-object p0, Lcom/alibaba/genie/extension/logger/api/LoggerFactory;->sMonitorLogger:Lcom/alibaba/genie/extension/logger/api/monitor/MonitorLogger;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static setTraceLogger(Lcom/alibaba/genie/extension/logger/api/trace/TraceLogger;)V
    .locals 0
    .param p0    # Lcom/alibaba/genie/extension/logger/api/trace/TraceLogger;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 43
    sput-object p0, Lcom/alibaba/genie/extension/logger/api/LoggerFactory;->sTraceLogger:Lcom/alibaba/genie/extension/logger/api/trace/TraceLogger;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
