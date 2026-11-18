.class public Lcom/alibaba/android/umbrella/trace/UmbrellaTracker;
.super Ljava/lang/Object;
.source "UmbrellaTracker.java"


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation


# static fields
.field public static final ERROR_BUSINESS_TYPE:Ljava/lang/String; = "UMBRELLA_ERROR"

.field public static final PURCHASE_MODULE:Ljava/lang/String; = "Page_Trade_Govern"

.field public static final PURCHASE_POINT_POST:Ljava/lang/String; = "_Service"

.field public static final PURCHASE_POINT_PRE:Ljava/lang/String; = "Monitor_"

.field private static currIndex:I

.field private static identifyMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sHandler:Landroid/os/Handler;

.field private static final sUniformError:Lcom/alibaba/android/umbrella/trace/UMUniformErrorReporter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 24
    new-instance v0, Lcom/alibaba/android/umbrella/trace/UMUniformErrorReporter;

    invoke-direct {v0}, Lcom/alibaba/android/umbrella/trace/UMUniformErrorReporter;-><init>()V

    sput-object v0, Lcom/alibaba/android/umbrella/trace/UmbrellaTracker;->sUniformError:Lcom/alibaba/android/umbrella/trace/UMUniformErrorReporter;

    .line 130
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alibaba/android/umbrella/trace/UmbrellaTracker;->identifyMap:Ljava/util/HashMap;

    const/4 v0, 0x1

    .line 131
    sput v0, Lcom/alibaba/android/umbrella/trace/UmbrellaTracker;->currIndex:I

    .line 132
    new-instance v0, Lcom/alibaba/android/umbrella/trace/UmbrellaTracker$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/android/umbrella/trace/UmbrellaTracker$1;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/alibaba/android/umbrella/trace/UmbrellaTracker;->sHandler:Landroid/os/Handler;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static commitFailureStability(Lcom/alibaba/android/umbrella/trace/UmbrellaInfo;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 73
    invoke-static {}, Lcom/alibaba/android/umbrella/trace/UmbrellaSimple;->isForceCloseFailure()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 76
    :cond_0
    invoke-static {p1}, Lcom/alibaba/android/umbrella/trace/UmbrellaUtils;->isFlowControl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 79
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    if-nez p0, :cond_3

    return-void

    .line 85
    :cond_3
    invoke-static {p0, p1}, Lcom/alibaba/android/umbrella/trace/UmbrellaSimple;->getFailSampleResult(Lcom/alibaba/android/umbrella/trace/UmbrellaInfo;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    return-void

    .line 88
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Monitor_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/android/umbrella/trace/UmbrellaInfo;->mainBizName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_Service"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 89
    invoke-virtual {p0}, Lcom/alibaba/android/umbrella/trace/UmbrellaInfo;->toJsonString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Page_Trade_Govern"

    invoke-static {v2, v0, v1, p1, p2}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Alarm;->commitFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    sget-object v0, Lcom/alibaba/android/umbrella/trace/UmbrellaTracker;->sUniformError:Lcom/alibaba/android/umbrella/trace/UMUniformErrorReporter;

    invoke-virtual {v0, p0, p1, p2}, Lcom/alibaba/android/umbrella/trace/UMUniformErrorReporter;->commit(Lcom/alibaba/android/umbrella/trace/UmbrellaInfo;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static commitFailureStability(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
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

    .line 122
    invoke-static {}, Lcom/alibaba/android/umbrella/trace/UmbrellaSimple;->isForceCloseFailure()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 125
    :cond_0
    new-instance v0, Lcom/alibaba/android/umbrella/trace/UmbrellaInfo$UmbrellaBuilder;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p0

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/alibaba/android/umbrella/trace/UmbrellaInfo$UmbrellaBuilder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    invoke-virtual {v0, p2}, Lcom/alibaba/android/umbrella/trace/UmbrellaInfo$UmbrellaBuilder;->setVersion(Ljava/lang/String;)Lcom/alibaba/android/umbrella/trace/UmbrellaInfo$UmbrellaBuilder;

    move-result-object p0

    invoke-virtual {p0, p5}, Lcom/alibaba/android/umbrella/trace/UmbrellaInfo$UmbrellaBuilder;->setParams(Ljava/util/Map;)Lcom/alibaba/android/umbrella/trace/UmbrellaInfo$UmbrellaBuilder;

    .line 127
    invoke-virtual {v0}, Lcom/alibaba/android/umbrella/trace/UmbrellaInfo$UmbrellaBuilder;->build()Lcom/alibaba/android/umbrella/trace/UmbrellaInfo;

    move-result-object p0

    invoke-static {p0, p6, p7}, Lcom/alibaba/android/umbrella/trace/UmbrellaTracker;->commitFailureStability(Lcom/alibaba/android/umbrella/trace/UmbrellaInfo;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static commitSuccessStability(Lcom/alibaba/android/umbrella/trace/UmbrellaInfo;)V
    .locals 2

    .line 27
    invoke-static {}, Lcom/alibaba/android/umbrella/trace/UmbrellaSimple;->isForceCloseSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p0, :cond_1

    return-void

    .line 33
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/umbrella/trace/UmbrellaInfo;->mainBizName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 36
    :cond_2
    invoke-static {p0}, Lcom/alibaba/android/umbrella/trace/UmbrellaSimple;->getSampleResult(Lcom/alibaba/android/umbrella/trace/UmbrellaInfo;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Monitor_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/android/umbrella/trace/UmbrellaInfo;->mainBizName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_Service"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 38
    invoke-virtual {p0}, Lcom/alibaba/android/umbrella/trace/UmbrellaInfo;->toJsonString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "Page_Trade_Govern"

    invoke-static {v1, v0, p0}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Alarm;->commitSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public static commitSuccessStability(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
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

    .line 43
    invoke-static {}, Lcom/alibaba/android/umbrella/trace/UmbrellaSimple;->isForceCloseSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 46
    :cond_0
    new-instance v0, Lcom/alibaba/android/umbrella/trace/UmbrellaInfo$UmbrellaBuilder;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p0

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/alibaba/android/umbrella/trace/UmbrellaInfo$UmbrellaBuilder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    invoke-virtual {v0, p2}, Lcom/alibaba/android/umbrella/trace/UmbrellaInfo$UmbrellaBuilder;->setVersion(Ljava/lang/String;)Lcom/alibaba/android/umbrella/trace/UmbrellaInfo$UmbrellaBuilder;

    move-result-object p0

    invoke-virtual {p0, p5}, Lcom/alibaba/android/umbrella/trace/UmbrellaInfo$UmbrellaBuilder;->setParams(Ljava/util/Map;)Lcom/alibaba/android/umbrella/trace/UmbrellaInfo$UmbrellaBuilder;

    .line 48
    invoke-virtual {v0}, Lcom/alibaba/android/umbrella/trace/UmbrellaInfo$UmbrellaBuilder;->build()Lcom/alibaba/android/umbrella/trace/UmbrellaInfo;

    move-result-object p0

    invoke-static {p0}, Lcom/alibaba/android/umbrella/trace/UmbrellaTracker;->commitSuccessStability(Lcom/alibaba/android/umbrella/trace/UmbrellaInfo;)V

    return-void
.end method

.method private static getIdentify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, ""

    if-nez p0, :cond_0

    move-object p0, v0

    :cond_0
    if-nez p1, :cond_1

    move-object p1, v0

    :cond_1
    if-nez p2, :cond_2

    move-object p2, v0

    .line 170
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getMessageIndex(Ljava/lang/String;)I
    .locals 3

    .line 150
    sget-object v0, Lcom/alibaba/android/umbrella/trace/UmbrellaTracker;->identifyMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 152
    sget v0, Lcom/alibaba/android/umbrella/trace/UmbrellaTracker;->currIndex:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 153
    sget-object v1, Lcom/alibaba/android/umbrella/trace/UmbrellaTracker;->identifyMap:Ljava/util/HashMap;

    sget v2, Lcom/alibaba/android/umbrella/trace/UmbrellaTracker;->currIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    sget p0, Lcom/alibaba/android/umbrella/trace/UmbrellaTracker;->currIndex:I

    add-int/lit8 p0, p0, 0x1

    sput p0, Lcom/alibaba/android/umbrella/trace/UmbrellaTracker;->currIndex:I

    .line 157
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static traceProcessBegin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 8
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
            "J)V"
        }
    .end annotation

    .line 179
    invoke-static {}, Lcom/alibaba/android/umbrella/trace/UmbrellaSimple;->isForceCloseFailure()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 182
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/alibaba/android/umbrella/trace/UmbrellaTracker;->getIdentify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 183
    invoke-static {v0}, Lcom/alibaba/android/umbrella/trace/UmbrellaTracker;->getMessageIndex(Ljava/lang/String;)I

    move-result v0

    .line 184
    new-instance v7, Lcom/alibaba/android/umbrella/trace/UmbrellaInfo$UmbrellaBuilder;

    move-object v1, v7

    move-object v2, p1

    move-object v3, p2

    move-object v4, p0

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/alibaba/android/umbrella/trace/UmbrellaInfo$UmbrellaBuilder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "errorCode"

    move-object v3, p6

    .line 186
    invoke-interface {v1, v2, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "errorMsg"

    move-object v3, p7

    .line 187
    invoke-interface {v1, v2, p7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    invoke-virtual {v7, v1}, Lcom/alibaba/android/umbrella/trace/UmbrellaInfo$UmbrellaBuilder;->setParams(Ljava/util/Map;)Lcom/alibaba/android/umbrella/trace/UmbrellaInfo$UmbrellaBuilder;

    move-object v1, p2

    .line 189
    invoke-virtual {v7, p2}, Lcom/alibaba/android/umbrella/trace/UmbrellaInfo$UmbrellaBuilder;->setVersion(Ljava/lang/String;)Lcom/alibaba/android/umbrella/trace/UmbrellaInfo$UmbrellaBuilder;

    move-result-object v1

    move-object v2, p5

    invoke-virtual {v1, p5}, Lcom/alibaba/android/umbrella/trace/UmbrellaInfo$UmbrellaBuilder;->setParams(Ljava/util/Map;)Lcom/alibaba/android/umbrella/trace/UmbrellaInfo$UmbrellaBuilder;

    .line 190
    sget-object v1, Lcom/alibaba/android/umbrella/trace/UmbrellaTracker;->sHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 191
    invoke-virtual {v7}, Lcom/alibaba/android/umbrella/trace/UmbrellaInfo$UmbrellaBuilder;->build()Lcom/alibaba/android/umbrella/trace/UmbrellaInfo;

    move-result-object v2

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 192
    sget-object v2, Lcom/alibaba/android/umbrella/trace/UmbrellaTracker;->sHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 193
    sget-object v0, Lcom/alibaba/android/umbrella/trace/UmbrellaTracker;->sHandler:Landroid/os/Handler;

    move-wide/from16 v2, p8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public static traceProcessEnd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 200
    invoke-static {}, Lcom/alibaba/android/umbrella/trace/UmbrellaSimple;->isForceCloseFailure()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 203
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/alibaba/android/umbrella/trace/UmbrellaTracker;->getIdentify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 204
    invoke-static {p0}, Lcom/alibaba/android/umbrella/trace/UmbrellaTracker;->getMessageIndex(Ljava/lang/String;)I

    move-result p0

    .line 205
    sget-object p1, Lcom/alibaba/android/umbrella/trace/UmbrellaTracker;->sHandler:Landroid/os/Handler;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method
