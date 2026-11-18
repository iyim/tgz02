.class Lcom/uc/rmbsdk/export/RmbDetector$TraceInfo;
.super Ljava/lang/Object;
.source "RmbDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uc/rmbsdk/export/RmbDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TraceInfo"
.end annotation


# instance fields
.field appState:Ljava/lang/String;

.field connectCount:I

.field connectingCount:I

.field disconnectCount:I

.field netState:I

.field recvCount:I

.field result:Lcom/uc/rmbsdk/export/RmbDetector$IDetectResult;

.field sendCount:I

.field startTime:J

.field unknownCount:I

.field upaasFgState:I

.field upaasNetState:I

.field upaasState:I


# direct methods
.method constructor <init>(ILcom/uc/rmbsdk/export/RmbDetector$IDetectResult;)V
    .locals 2

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    invoke-static {}, Lcom/uc/rmbsdk/export/RmbDetector;->access$200()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uc/rmbsdk/export/RmbDetector$TraceInfo;->appState:Ljava/lang/String;

    .line 118
    invoke-static {}, Lcom/uc/rmbsdk/export/RmbStatsHelper;->isNetworkConnected()Z

    move-result v0

    iput v0, p0, Lcom/uc/rmbsdk/export/RmbDetector$TraceInfo;->netState:I

    .line 119
    invoke-static {}, Lcom/uc/rmbsdk/export/RmbManager;->getInstance()Lcom/uc/rmbsdk/export/RmbManager;

    move-result-object v0

    const-string v1, "state"

    invoke-virtual {v0, v1}, Lcom/uc/rmbsdk/export/RmbManager;->getUpaasState(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/uc/rmbsdk/export/RmbDetector$TraceInfo;->upaasState:I

    .line 120
    invoke-static {}, Lcom/uc/rmbsdk/export/RmbManager;->getInstance()Lcom/uc/rmbsdk/export/RmbManager;

    move-result-object v0

    const-string v1, "fg"

    invoke-virtual {v0, v1}, Lcom/uc/rmbsdk/export/RmbManager;->getUpaasState(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/uc/rmbsdk/export/RmbDetector$TraceInfo;->upaasFgState:I

    .line 121
    invoke-static {}, Lcom/uc/rmbsdk/export/RmbManager;->getInstance()Lcom/uc/rmbsdk/export/RmbManager;

    move-result-object v0

    const-string v1, "net"

    invoke-virtual {v0, v1}, Lcom/uc/rmbsdk/export/RmbManager;->getUpaasState(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/uc/rmbsdk/export/RmbDetector$TraceInfo;->upaasNetState:I

    .line 122
    iput p1, p0, Lcom/uc/rmbsdk/export/RmbDetector$TraceInfo;->sendCount:I

    .line 123
    iput-object p2, p0, Lcom/uc/rmbsdk/export/RmbDetector$TraceInfo;->result:Lcom/uc/rmbsdk/export/RmbDetector$IDetectResult;

    const/4 p1, 0x0

    .line 124
    iput p1, p0, Lcom/uc/rmbsdk/export/RmbDetector$TraceInfo;->recvCount:I

    .line 125
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/uc/rmbsdk/export/RmbDetector$TraceInfo;->startTime:J

    return-void
.end method
