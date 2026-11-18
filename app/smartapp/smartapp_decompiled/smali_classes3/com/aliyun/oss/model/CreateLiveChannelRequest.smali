.class public Lcom/aliyun/oss/model/CreateLiveChannelRequest;
.super Lcom/aliyun/oss/model/LiveChannelGenericRequest;
.source "CreateLiveChannelRequest.java"


# instance fields
.field private liveChannelDescription:Ljava/lang/String;

.field private status:Lcom/aliyun/oss/model/LiveChannelStatus;

.field private target:Lcom/aliyun/oss/model/LiveChannelTarget;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 25
    sget-object v4, Lcom/aliyun/oss/model/LiveChannelStatus;->Enabled:Lcom/aliyun/oss/model/LiveChannelStatus;

    new-instance v5, Lcom/aliyun/oss/model/LiveChannelTarget;

    invoke-direct {v5}, Lcom/aliyun/oss/model/LiveChannelTarget;-><init>()V

    const-string v3, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/aliyun/oss/model/CreateLiveChannelRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aliyun/oss/model/LiveChannelStatus;Lcom/aliyun/oss/model/LiveChannelTarget;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 29
    sget-object v4, Lcom/aliyun/oss/model/LiveChannelStatus;->Enabled:Lcom/aliyun/oss/model/LiveChannelStatus;

    new-instance v5, Lcom/aliyun/oss/model/LiveChannelTarget;

    invoke-direct {v5}, Lcom/aliyun/oss/model/LiveChannelTarget;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/aliyun/oss/model/CreateLiveChannelRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aliyun/oss/model/LiveChannelStatus;Lcom/aliyun/oss/model/LiveChannelTarget;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aliyun/oss/model/LiveChannelStatus;)V
    .locals 6

    .line 40
    new-instance v5, Lcom/aliyun/oss/model/LiveChannelTarget;

    invoke-direct {v5}, Lcom/aliyun/oss/model/LiveChannelTarget;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/aliyun/oss/model/CreateLiveChannelRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aliyun/oss/model/LiveChannelStatus;Lcom/aliyun/oss/model/LiveChannelTarget;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aliyun/oss/model/LiveChannelStatus;Lcom/aliyun/oss/model/LiveChannelTarget;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/aliyun/oss/model/LiveChannelGenericRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    iput-object p3, p0, Lcom/aliyun/oss/model/CreateLiveChannelRequest;->liveChannelDescription:Ljava/lang/String;

    .line 47
    iput-object p4, p0, Lcom/aliyun/oss/model/CreateLiveChannelRequest;->status:Lcom/aliyun/oss/model/LiveChannelStatus;

    .line 48
    iput-object p5, p0, Lcom/aliyun/oss/model/CreateLiveChannelRequest;->target:Lcom/aliyun/oss/model/LiveChannelTarget;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aliyun/oss/model/LiveChannelTarget;)V
    .locals 6

    .line 35
    sget-object v4, Lcom/aliyun/oss/model/LiveChannelStatus;->Enabled:Lcom/aliyun/oss/model/LiveChannelStatus;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/aliyun/oss/model/CreateLiveChannelRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aliyun/oss/model/LiveChannelStatus;Lcom/aliyun/oss/model/LiveChannelTarget;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getLiveChannelDescription()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/aliyun/oss/model/CreateLiveChannelRequest;->liveChannelDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getLiveChannelStatus()Lcom/aliyun/oss/model/LiveChannelStatus;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/aliyun/oss/model/CreateLiveChannelRequest;->status:Lcom/aliyun/oss/model/LiveChannelStatus;

    return-object v0
.end method

.method public getLiveChannelTarget()Lcom/aliyun/oss/model/LiveChannelTarget;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/aliyun/oss/model/CreateLiveChannelRequest;->target:Lcom/aliyun/oss/model/LiveChannelTarget;

    return-object v0
.end method

.method public setLiveChannelDescription(Ljava/lang/String;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/aliyun/oss/model/CreateLiveChannelRequest;->liveChannelDescription:Ljava/lang/String;

    return-void
.end method

.method public setLiveChannelStatus(Lcom/aliyun/oss/model/LiveChannelStatus;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/aliyun/oss/model/CreateLiveChannelRequest;->status:Lcom/aliyun/oss/model/LiveChannelStatus;

    return-void
.end method

.method public setLiveChannelTarget(Lcom/aliyun/oss/model/LiveChannelTarget;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/aliyun/oss/model/CreateLiveChannelRequest;->target:Lcom/aliyun/oss/model/LiveChannelTarget;

    return-void
.end method
