.class final Lcom/alibaba/android/umbrella/link/AppMonitorAlarm;
.super Ljava/lang/Object;
.source "AppMonitorAlarm.java"


# static fields
.field private static final PURCHASE_MODULE:Ljava/lang/String; = "Page_Trade_Govern"

.field private static final PURCHASE_POINT_POST:Ljava/lang/String; = "_Service"

.field private static final PURCHASE_POINT_PRE:Ljava/lang/String; = "Monitor_"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static commitFailureStability(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 35
    new-instance v6, Lcom/alibaba/android/umbrella/trace/UmbrellaInfo$UmbrellaBuilder;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p0

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/android/umbrella/trace/UmbrellaInfo$UmbrellaBuilder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    invoke-virtual {v6, p2}, Lcom/alibaba/android/umbrella/trace/UmbrellaInfo$UmbrellaBuilder;->setVersion(Ljava/lang/String;)Lcom/alibaba/android/umbrella/trace/UmbrellaInfo$UmbrellaBuilder;

    move-result-object p0

    invoke-virtual {p0, p5}, Lcom/alibaba/android/umbrella/trace/UmbrellaInfo$UmbrellaBuilder;->setParams(Ljava/util/Map;)Lcom/alibaba/android/umbrella/trace/UmbrellaInfo$UmbrellaBuilder;

    .line 37
    invoke-virtual {v6}, Lcom/alibaba/android/umbrella/trace/UmbrellaInfo$UmbrellaBuilder;->build()Lcom/alibaba/android/umbrella/trace/UmbrellaInfo;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 41
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Monitor_"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/alibaba/android/umbrella/trace/UmbrellaInfo;->mainBizName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "_Service"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 42
    invoke-virtual {p0}, Lcom/alibaba/android/umbrella/trace/UmbrellaInfo;->toJsonString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "Page_Trade_Govern"

    invoke-static {p2, p1, p0, p6, p7}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Alarm;->commitFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static commitSuccessStability(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 25
    new-instance v6, Lcom/alibaba/android/umbrella/trace/UmbrellaInfo$UmbrellaBuilder;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p0

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/android/umbrella/trace/UmbrellaInfo$UmbrellaBuilder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    invoke-virtual {v6, p2}, Lcom/alibaba/android/umbrella/trace/UmbrellaInfo$UmbrellaBuilder;->setVersion(Ljava/lang/String;)Lcom/alibaba/android/umbrella/trace/UmbrellaInfo$UmbrellaBuilder;

    move-result-object p0

    invoke-virtual {p0, p5}, Lcom/alibaba/android/umbrella/trace/UmbrellaInfo$UmbrellaBuilder;->setParams(Ljava/util/Map;)Lcom/alibaba/android/umbrella/trace/UmbrellaInfo$UmbrellaBuilder;

    .line 27
    invoke-virtual {v6}, Lcom/alibaba/android/umbrella/trace/UmbrellaInfo$UmbrellaBuilder;->build()Lcom/alibaba/android/umbrella/trace/UmbrellaInfo;

    move-result-object p0

    .line 28
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Monitor_"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/alibaba/android/umbrella/trace/UmbrellaInfo;->mainBizName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "_Service"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 29
    invoke-virtual {p0}, Lcom/alibaba/android/umbrella/trace/UmbrellaInfo;->toJsonString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "Page_Trade_Govern"

    invoke-static {p2, p1, p0}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Alarm;->commitSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
