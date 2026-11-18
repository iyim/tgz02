.class public Lcom/taobao/android/ultron/datamodel/util/TimeTrace;
.super Ljava/lang/Object;
.source "TimeTrace.java"


# static fields
.field private static final DBG:Z = true

.field public static final STAGE_BEFORE_NETWORK:Ljava/lang/String; = "beforeRequestTime"

.field public static final STAGE_NETWORK:Ljava/lang/String; = "requestTime"

.field public static final STAGE_PROCESS_DATA:Ljava/lang/String; = "dataParseTime"

.field public static final STAGE_PROCESS_DATA_ULTRON:Ljava/lang/String; = "processData_ultron"

.field public static final STAGE_RENDER:Ljava/lang/String; = "renderTime"

.field public static final STAGE_TOTAL:Ljava/lang/String; = "containerTotalTime"

.field private static final apmTimeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private static final map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static perfApm:Z

.field private static final pid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    sput v0, Lcom/taobao/android/ultron/datamodel/util/TimeTrace;->pid:I

    .line 14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/taobao/android/ultron/datamodel/util/TimeTrace;->map:Ljava/util/Map;

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/taobao/android/ultron/datamodel/util/TimeTrace;->apmTimeMap:Ljava/util/Map;

    const/4 v0, 0x1

    .line 29
    sput-boolean v0, Lcom/taobao/android/ultron/datamodel/util/TimeTrace;->perfApm:Z

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

.method public static beginSection(Ljava/lang/String;)V
    .locals 3

    .line 32
    sget-boolean v0, Lcom/taobao/android/ultron/datamodel/util/TimeTrace;->perfApm:Z

    if-eqz v0, :cond_0

    .line 33
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 34
    sget-object v2, Lcom/taobao/android/ultron/datamodel/util/TimeTrace;->map:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TmqTimeTrace."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/taobao/android/ultron/datamodel/util/TimeTrace;->pid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "beginSection"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static endSection(Ljava/lang/String;)V
    .locals 5

    .line 42
    sget-boolean v0, Lcom/taobao/android/ultron/datamodel/util/TimeTrace;->perfApm:Z

    if-eqz v0, :cond_0

    .line 43
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 44
    sget-object v2, Lcom/taobao/android/ultron/datamodel/util/TimeTrace;->map:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/taobao/android/ultron/datamodel/util/TimeTrace;->map:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 45
    sget-object v2, Lcom/taobao/android/ultron/datamodel/util/TimeTrace;->map:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 46
    sget-object v4, Lcom/taobao/android/ultron/datamodel/util/TimeTrace;->map:Ljava/util/Map;

    invoke-interface {v4, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sub-long/2addr v0, v2

    .line 48
    sget-object v2, Lcom/taobao/android/ultron/datamodel/util/TimeTrace;->apmTimeMap:Ljava/util/Map;

    long-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-interface {v2, p0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TmqTimeTrace."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/taobao/android/ultron/datamodel/util/TimeTrace;->pid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 51
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 50
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static getApmTimeMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 58
    sget-object v0, Lcom/taobao/android/ultron/datamodel/util/TimeTrace;->apmTimeMap:Ljava/util/Map;

    return-object v0
.end method
