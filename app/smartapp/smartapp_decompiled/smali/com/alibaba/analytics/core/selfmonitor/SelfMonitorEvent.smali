.class public Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEvent;
.super Ljava/lang/Object;
.source "SelfMonitorEvent.java"


# static fields
.field public static CLEAN_DB:I = 0x0

.field public static CONFIG_ARRIVE:I = 0x0

.field public static DATALEN_OVERFLOW:I = 0x0

.field public static DB_MONITOR:I = 0x0

.field public static INTERFACE:I = 0x0

.field public static LOGS_TIMEOUT:I = 0x0

.field public static TNET_CREATE_SESSION:I = 0x0

.field public static TNET_REQUEST_ERROR:I = 0x0

.field public static TNET_REQUEST_SEND:I = 0x0

.field public static final TNET_REQUEST_SEND_OFFLINE:Ljava/lang/String; = "tnet_request_send"

.field public static TNET_REQUEST_TIMEOUT:I = 0x0

.field public static UPLOAD_FAILED:I = 0x0

.field public static UPLOAD_TRAFFIC:I = 0x0

.field public static final UPLOAD_TRAFFIC_OFFLINE:Ljava/lang/String; = "upload_traffic"

.field private static mMonitorPoints:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final module:Ljava/lang/String; = "AppMonitor"


# instance fields
.field public arg:Ljava/lang/String;

.field public dvs:Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

.field public monitorPoint:Ljava/lang/String;

.field public mvs:Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

.field public type:Lcom/alibaba/appmonitor/event/EventType;

.field public value:Ljava/lang/Double;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 13
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEvent;->mMonitorPoints:Ljava/util/HashMap;

    const/4 v0, 0x1

    .line 14
    sput v0, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEvent;->INTERFACE:I

    const/4 v0, 0x2

    .line 15
    sput v0, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEvent;->CLEAN_DB:I

    const/4 v0, 0x3

    .line 16
    sput v0, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEvent;->UPLOAD_FAILED:I

    const/4 v0, 0x4

    .line 17
    sput v0, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEvent;->UPLOAD_TRAFFIC:I

    const/4 v0, 0x5

    .line 18
    sput v0, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEvent;->DB_MONITOR:I

    const/4 v0, 0x6

    .line 20
    sput v0, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEvent;->CONFIG_ARRIVE:I

    const/4 v0, 0x7

    .line 21
    sput v0, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEvent;->TNET_REQUEST_SEND:I

    const/16 v0, 0x8

    .line 22
    sput v0, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEvent;->TNET_CREATE_SESSION:I

    const/16 v0, 0x9

    .line 23
    sput v0, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEvent;->TNET_REQUEST_TIMEOUT:I

    const/16 v0, 0xa

    .line 24
    sput v0, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEvent;->TNET_REQUEST_ERROR:I

    const/16 v0, 0xb

    .line 25
    sput v0, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEvent;->DATALEN_OVERFLOW:I

    const/16 v0, 0xc

    .line 26
    sput v0, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEvent;->LOGS_TIMEOUT:I

    .line 34
    sget-object v0, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEvent;->mMonitorPoints:Ljava/util/HashMap;

    sget v1, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEvent;->INTERFACE:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "sampling_monitor"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v0, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEvent;->mMonitorPoints:Ljava/util/HashMap;

    sget v1, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEvent;->CLEAN_DB:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "db_clean"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v0, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEvent;->mMonitorPoints:Ljava/util/HashMap;

    sget v1, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEvent;->DB_MONITOR:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "db_monitor"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v0, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEvent;->mMonitorPoints:Ljava/util/HashMap;

    sget v1, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEvent;->UPLOAD_FAILED:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "upload_failed"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v0, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEvent;->mMonitorPoints:Ljava/util/HashMap;

    sget v1, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEvent;->UPLOAD_TRAFFIC:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "upload_traffic"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEvent;->mMonitorPoints:Ljava/util/HashMap;

    sget v1, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEvent;->CONFIG_ARRIVE:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "config_arrive"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEvent;->mMonitorPoints:Ljava/util/HashMap;

    sget v1, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEvent;->TNET_REQUEST_SEND:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "tnet_request_send"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEvent;->mMonitorPoints:Ljava/util/HashMap;

    sget v1, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEvent;->TNET_CREATE_SESSION:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "tnet_create_session"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEvent;->mMonitorPoints:Ljava/util/HashMap;

    sget v1, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEvent;->TNET_REQUEST_TIMEOUT:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "tnet_request_timeout"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEvent;->mMonitorPoints:Ljava/util/HashMap;

    sget v1, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEvent;->TNET_REQUEST_ERROR:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "tent_request_error"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEvent;->mMonitorPoints:Ljava/util/HashMap;

    sget v1, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEvent;->DATALEN_OVERFLOW:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "datalen_overflow"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEvent;->mMonitorPoints:Ljava/util/HashMap;

    sget v1, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEvent;->LOGS_TIMEOUT:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "logs_timeout"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V
    .locals 1

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 58
    iput-object v0, p0, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEvent;->monitorPoint:Ljava/lang/String;

    const/4 v0, 0x0

    .line 59
    iput-object v0, p0, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEvent;->type:Lcom/alibaba/appmonitor/event/EventType;

    .line 73
    iput-object p1, p0, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEvent;->monitorPoint:Ljava/lang/String;

    .line 74
    iput-object p2, p0, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEvent;->dvs:Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 75
    iput-object p3, p0, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEvent;->mvs:Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 76
    sget-object p1, Lcom/alibaba/appmonitor/event/EventType;->STAT:Lcom/alibaba/appmonitor/event/EventType;

    iput-object p1, p0, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEvent;->type:Lcom/alibaba/appmonitor/event/EventType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;)V
    .locals 1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 58
    iput-object v0, p0, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEvent;->monitorPoint:Ljava/lang/String;

    const/4 v0, 0x0

    .line 59
    iput-object v0, p0, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEvent;->type:Lcom/alibaba/appmonitor/event/EventType;

    .line 66
    iput-object p1, p0, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEvent;->monitorPoint:Ljava/lang/String;

    .line 67
    iput-object p2, p0, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEvent;->arg:Ljava/lang/String;

    .line 68
    iput-object p3, p0, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEvent;->value:Ljava/lang/Double;

    .line 69
    sget-object p1, Lcom/alibaba/appmonitor/event/EventType;->COUNTER:Lcom/alibaba/appmonitor/event/EventType;

    iput-object p1, p0, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEvent;->type:Lcom/alibaba/appmonitor/event/EventType;

    return-void
.end method

.method public static buildCountEvent(ILjava/lang/String;Ljava/lang/Double;)Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEvent;
    .locals 1

    .line 50
    new-instance v0, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEvent;

    invoke-static {p0}, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEvent;->getMonitorPoint(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1, p2}, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;)V

    return-object v0
.end method

.method public static buildStatEvent(ILcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEvent;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 55
    new-instance v0, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEvent;

    invoke-static {p0}, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEvent;->getMonitorPoint(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1, p2}, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEvent;-><init>(Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V

    return-object v0
.end method

.method private static getMonitorPoint(I)Ljava/lang/String;
    .locals 1

    .line 93
    sget-object v0, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEvent;->mMonitorPoints:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SelfMonitorEvent{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "arg=\'"

    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEvent;->arg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", monitorPoint=\'"

    .line 83
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEvent;->monitorPoint:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEvent;->type:Lcom/alibaba/appmonitor/event/EventType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", value="

    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEvent;->value:Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", dvs="

    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEvent;->dvs:Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mvs="

    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEvent;->mvs:Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
