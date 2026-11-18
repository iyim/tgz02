.class Lanet/channel/monitor/BandWidthSampler$2;
.super Ljava/lang/Object;
.source "BandWidthSampler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanet/channel/monitor/BandWidthSampler;->onDataReceived(JJJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lanet/channel/monitor/BandWidthSampler;

.field final synthetic val$mRequestDataSize:J

.field final synthetic val$mRequestFinishedTime:J

.field final synthetic val$mRequestStartTime:J


# direct methods
.method constructor <init>(Lanet/channel/monitor/BandWidthSampler;JJJ)V
    .locals 0

    .line 103
    iput-object p1, p0, Lanet/channel/monitor/BandWidthSampler$2;->this$0:Lanet/channel/monitor/BandWidthSampler;

    iput-wide p2, p0, Lanet/channel/monitor/BandWidthSampler$2;->val$mRequestDataSize:J

    iput-wide p4, p0, Lanet/channel/monitor/BandWidthSampler$2;->val$mRequestFinishedTime:J

    iput-wide p6, p0, Lanet/channel/monitor/BandWidthSampler$2;->val$mRequestStartTime:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .line 106
    sget v0, Lanet/channel/monitor/BandWidthSampler;->mReceivedDataCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    sput v0, Lanet/channel/monitor/BandWidthSampler;->mReceivedDataCount:I

    .line 107
    sget-wide v2, Lanet/channel/monitor/BandWidthSampler;->mKalmanDataSize:J

    iget-wide v4, p0, Lanet/channel/monitor/BandWidthSampler$2;->val$mRequestDataSize:J

    add-long/2addr v2, v4

    sput-wide v2, Lanet/channel/monitor/BandWidthSampler;->mKalmanDataSize:J

    .line 109
    sget v0, Lanet/channel/monitor/BandWidthSampler;->mReceivedDataCount:I

    if-ne v0, v1, :cond_0

    .line 110
    iget-wide v2, p0, Lanet/channel/monitor/BandWidthSampler$2;->val$mRequestFinishedTime:J

    iget-wide v4, p0, Lanet/channel/monitor/BandWidthSampler$2;->val$mRequestStartTime:J

    sub-long/2addr v2, v4

    sput-wide v2, Lanet/channel/monitor/BandWidthSampler;->mKalmanTimeUsed:J

    .line 113
    :cond_0
    sget v0, Lanet/channel/monitor/BandWidthSampler;->mReceivedDataCount:I

    const/4 v2, 0x2

    const/4 v3, 0x3

    if-lt v0, v2, :cond_2

    sget v0, Lanet/channel/monitor/BandWidthSampler;->mReceivedDataCount:I

    if-gt v0, v3, :cond_2

    .line 115
    iget-wide v4, p0, Lanet/channel/monitor/BandWidthSampler$2;->val$mRequestStartTime:J

    sget-wide v6, Lanet/channel/monitor/BandWidthSampler;->mReceivedRequestFinishedTimePre:J

    cmp-long v0, v4, v6

    if-ltz v0, :cond_1

    .line 116
    sget-wide v4, Lanet/channel/monitor/BandWidthSampler;->mKalmanTimeUsed:J

    iget-wide v6, p0, Lanet/channel/monitor/BandWidthSampler$2;->val$mRequestFinishedTime:J

    iget-wide v8, p0, Lanet/channel/monitor/BandWidthSampler$2;->val$mRequestStartTime:J

    sub-long/2addr v6, v8

    add-long/2addr v4, v6

    sput-wide v4, Lanet/channel/monitor/BandWidthSampler;->mKalmanTimeUsed:J

    goto :goto_0

    .line 119
    :cond_1
    iget-wide v4, p0, Lanet/channel/monitor/BandWidthSampler$2;->val$mRequestStartTime:J

    sget-wide v6, Lanet/channel/monitor/BandWidthSampler;->mReceivedRequestFinishedTimePre:J

    cmp-long v0, v4, v6

    if-gez v0, :cond_2

    iget-wide v4, p0, Lanet/channel/monitor/BandWidthSampler$2;->val$mRequestFinishedTime:J

    sget-wide v6, Lanet/channel/monitor/BandWidthSampler;->mReceivedRequestFinishedTimePre:J

    cmp-long v0, v4, v6

    if-ltz v0, :cond_2

    .line 120
    sget-wide v4, Lanet/channel/monitor/BandWidthSampler;->mKalmanTimeUsed:J

    iget-wide v6, p0, Lanet/channel/monitor/BandWidthSampler$2;->val$mRequestFinishedTime:J

    iget-wide v8, p0, Lanet/channel/monitor/BandWidthSampler$2;->val$mRequestStartTime:J

    sub-long/2addr v6, v8

    add-long/2addr v4, v6

    sput-wide v4, Lanet/channel/monitor/BandWidthSampler;->mKalmanTimeUsed:J

    .line 121
    sget-wide v4, Lanet/channel/monitor/BandWidthSampler;->mKalmanTimeUsed:J

    sget-wide v6, Lanet/channel/monitor/BandWidthSampler;->mReceivedRequestFinishedTimePre:J

    iget-wide v8, p0, Lanet/channel/monitor/BandWidthSampler$2;->val$mRequestStartTime:J

    sub-long/2addr v6, v8

    sub-long/2addr v4, v6

    sput-wide v4, Lanet/channel/monitor/BandWidthSampler;->mKalmanTimeUsed:J

    .line 129
    :cond_2
    :goto_0
    iget-wide v4, p0, Lanet/channel/monitor/BandWidthSampler$2;->val$mRequestStartTime:J

    sput-wide v4, Lanet/channel/monitor/BandWidthSampler;->mReceivedRequestStartTimePre:J

    .line 130
    iget-wide v4, p0, Lanet/channel/monitor/BandWidthSampler$2;->val$mRequestFinishedTime:J

    sput-wide v4, Lanet/channel/monitor/BandWidthSampler;->mReceivedRequestFinishedTimePre:J

    .line 132
    sget v0, Lanet/channel/monitor/BandWidthSampler;->mReceivedDataCount:I

    if-ne v0, v3, :cond_a

    .line 133
    iget-object v0, p0, Lanet/channel/monitor/BandWidthSampler$2;->this$0:Lanet/channel/monitor/BandWidthSampler;

    invoke-static {v0}, Lanet/channel/monitor/BandWidthSampler;->access$100(Lanet/channel/monitor/BandWidthSampler;)Lanet/channel/monitor/NetWorkKalmanFilter;

    move-result-object v0

    sget-wide v4, Lanet/channel/monitor/BandWidthSampler;->mKalmanDataSize:J

    long-to-double v4, v4

    sget-wide v6, Lanet/channel/monitor/BandWidthSampler;->mKalmanTimeUsed:J

    long-to-double v6, v6

    invoke-virtual {v0, v4, v5, v6, v7}, Lanet/channel/monitor/NetWorkKalmanFilter;->addMeasurement(DD)D

    move-result-wide v4

    double-to-long v4, v4

    long-to-double v4, v4

    sput-wide v4, Lanet/channel/monitor/BandWidthSampler;->speed:D

    .line 135
    sget-wide v4, Lanet/channel/monitor/BandWidthSampler;->mSpeedKalmanCount:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    sput-wide v4, Lanet/channel/monitor/BandWidthSampler;->mSpeedKalmanCount:J

    .line 136
    iget-object v0, p0, Lanet/channel/monitor/BandWidthSampler$2;->this$0:Lanet/channel/monitor/BandWidthSampler;

    invoke-static {v0}, Lanet/channel/monitor/BandWidthSampler;->access$208(Lanet/channel/monitor/BandWidthSampler;)I

    .line 139
    sget-wide v4, Lanet/channel/monitor/BandWidthSampler;->mSpeedKalmanCount:J

    const-wide/16 v6, 0x1e

    cmp-long v0, v4, v6

    if-lez v0, :cond_3

    .line 140
    iget-object v0, p0, Lanet/channel/monitor/BandWidthSampler$2;->this$0:Lanet/channel/monitor/BandWidthSampler;

    invoke-static {v0}, Lanet/channel/monitor/BandWidthSampler;->access$100(Lanet/channel/monitor/BandWidthSampler;)Lanet/channel/monitor/NetWorkKalmanFilter;

    move-result-object v0

    invoke-virtual {v0}, Lanet/channel/monitor/NetWorkKalmanFilter;->ResetKalmanParams()V

    const-wide/16 v4, 0x3

    .line 141
    sput-wide v4, Lanet/channel/monitor/BandWidthSampler;->mSpeedKalmanCount:J

    .line 145
    :cond_3
    sget-wide v4, Lanet/channel/monitor/BandWidthSampler;->speed:D

    const-wide v6, 0x3fe5c28f5c28f5c3L    # 0.68

    mul-double v4, v4, v6

    sget-wide v6, Lanet/channel/monitor/BandWidthSampler;->speedPre:D

    const-wide v8, 0x3fd147ae147ae148L    # 0.27

    mul-double v6, v6, v8

    add-double/2addr v4, v6

    sget-wide v6, Lanet/channel/monitor/BandWidthSampler;->speedPrePre:D

    const-wide v8, 0x3fa999999999999aL    # 0.05

    mul-double v6, v6, v8

    add-double/2addr v4, v6

    .line 147
    sget-wide v6, Lanet/channel/monitor/BandWidthSampler;->speedPre:D

    sput-wide v6, Lanet/channel/monitor/BandWidthSampler;->speedPrePre:D

    .line 148
    sget-wide v6, Lanet/channel/monitor/BandWidthSampler;->speed:D

    sput-wide v6, Lanet/channel/monitor/BandWidthSampler;->speedPre:D

    .line 151
    sget-wide v6, Lanet/channel/monitor/BandWidthSampler;->speed:D

    const-wide v8, 0x3fe4cccccccccccdL    # 0.65

    sget-wide v10, Lanet/channel/monitor/BandWidthSampler;->speedPrePre:D

    mul-double v10, v10, v8

    cmpg-double v0, v6, v10

    if-ltz v0, :cond_4

    sget-wide v6, Lanet/channel/monitor/BandWidthSampler;->speed:D

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    sget-wide v10, Lanet/channel/monitor/BandWidthSampler;->speedPrePre:D

    mul-double v10, v10, v8

    cmpl-double v0, v6, v10

    if-lez v0, :cond_5

    .line 152
    :cond_4
    sput-wide v4, Lanet/channel/monitor/BandWidthSampler;->speed:D

    .line 155
    :cond_5
    invoke-static {v1}, Lanet/channel/util/ALog;->isPrintLog(I)Z

    move-result v0

    const/4 v4, 0x0

    const-string v5, "awcn.BandWidthSampler"

    const/4 v6, 0x5

    const/4 v7, 0x0

    if-eqz v0, :cond_6

    const/16 v0, 0x8

    .line 156
    new-array v0, v0, [Ljava/lang/Object;

    const-string v8, "mKalmanDataSize"

    aput-object v8, v0, v7

    sget-wide v8, Lanet/channel/monitor/BandWidthSampler;->mKalmanDataSize:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v0, v1

    const-string v8, "mKalmanTimeUsed"

    aput-object v8, v0, v2

    sget-wide v8, Lanet/channel/monitor/BandWidthSampler;->mKalmanTimeUsed:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v3

    const/4 v2, 0x4

    const-string/jumbo v3, "speed"

    aput-object v3, v0, v2

    sget-wide v2, Lanet/channel/monitor/BandWidthSampler;->speed:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v0, v6

    const/4 v2, 0x6

    const-string v3, "mSpeedKalmanCount"

    aput-object v3, v0, v2

    const/4 v2, 0x7

    sget-wide v8, Lanet/channel/monitor/BandWidthSampler;->mSpeedKalmanCount:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v0, v2

    const-string v2, "NetworkSpeed"

    invoke-static {v5, v2, v4, v0}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 162
    :cond_6
    iget-object v0, p0, Lanet/channel/monitor/BandWidthSampler$2;->this$0:Lanet/channel/monitor/BandWidthSampler;

    invoke-static {v0}, Lanet/channel/monitor/BandWidthSampler;->access$200(Lanet/channel/monitor/BandWidthSampler;)I

    move-result v0

    if-gt v0, v6, :cond_7

    sget-wide v2, Lanet/channel/monitor/BandWidthSampler;->mSpeedKalmanCount:J

    const-wide/16 v8, 0x2

    cmp-long v0, v2, v8

    if-nez v0, :cond_9

    .line 163
    :cond_7
    invoke-static {}, Lanet/channel/monitor/BandWidthListenerHelper;->getInstance()Lanet/channel/monitor/BandWidthListenerHelper;

    move-result-object v0

    sget-wide v2, Lanet/channel/monitor/BandWidthSampler;->speed:D

    invoke-virtual {v0, v2, v3}, Lanet/channel/monitor/BandWidthListenerHelper;->onNetworkSpeedValueNotify(D)V

    .line 164
    iget-object v0, p0, Lanet/channel/monitor/BandWidthSampler$2;->this$0:Lanet/channel/monitor/BandWidthSampler;

    invoke-static {v0, v7}, Lanet/channel/monitor/BandWidthSampler;->access$202(Lanet/channel/monitor/BandWidthSampler;I)I

    .line 165
    iget-object v0, p0, Lanet/channel/monitor/BandWidthSampler$2;->this$0:Lanet/channel/monitor/BandWidthSampler;

    sget-wide v2, Lanet/channel/monitor/BandWidthSampler;->speed:D

    sget-wide v8, Lanet/channel/monitor/BandWidthSampler;->speedThreshold:D

    cmpg-double v10, v2, v8

    if-gez v10, :cond_8

    const/4 v6, 0x1

    :cond_8
    invoke-static {v0, v6}, Lanet/channel/monitor/BandWidthSampler;->access$302(Lanet/channel/monitor/BandWidthSampler;I)I

    .line 166
    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "Send Network quality notification."

    aput-object v1, v0, v7

    const-string v1, "NetworkSpeed notification!"

    invoke-static {v5, v1, v4, v0}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_9
    const-wide/16 v0, 0x0

    .line 168
    sput-wide v0, Lanet/channel/monitor/BandWidthSampler;->mKalmanTimeUsed:J

    .line 169
    sput-wide v0, Lanet/channel/monitor/BandWidthSampler;->mKalmanDataSize:J

    .line 170
    sput v7, Lanet/channel/monitor/BandWidthSampler;->mReceivedDataCount:I

    :cond_a
    return-void
.end method
