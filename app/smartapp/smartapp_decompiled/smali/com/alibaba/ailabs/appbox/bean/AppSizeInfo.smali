.class public Lcom/alibaba/ailabs/appbox/bean/AppSizeInfo;
.super Ljava/lang/Object;
.source "AppSizeInfo.java"


# instance fields
.field public appBytes:J

.field public cacheBytes:J

.field public dataBytes:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(JJJ)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-wide p1, p0, Lcom/alibaba/ailabs/appbox/bean/AppSizeInfo;->appBytes:J

    .line 24
    iput-wide p3, p0, Lcom/alibaba/ailabs/appbox/bean/AppSizeInfo;->cacheBytes:J

    .line 25
    iput-wide p5, p0, Lcom/alibaba/ailabs/appbox/bean/AppSizeInfo;->dataBytes:J

    return-void
.end method


# virtual methods
.method public getAppCountMbs()J
    .locals 4

    .line 34
    iget-wide v0, p0, Lcom/alibaba/ailabs/appbox/bean/AppSizeInfo;->appBytes:J

    iget-wide v2, p0, Lcom/alibaba/ailabs/appbox/bean/AppSizeInfo;->dataBytes:J

    add-long/2addr v0, v2

    const-wide/32 v2, 0x100000

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public getCacheBytes()J
    .locals 2

    .line 38
    iget-wide v0, p0, Lcom/alibaba/ailabs/appbox/bean/AppSizeInfo;->cacheBytes:J

    return-wide v0
.end method

.method public getCahcePrintSize()Ljava/lang/String;
    .locals 7

    .line 51
    iget-wide v0, p0, Lcom/alibaba/ailabs/appbox/bean/AppSizeInfo;->cacheBytes:J

    const-wide/16 v2, 0xa

    mul-long v0, v0, v2

    const-wide/32 v4, 0x100000

    .line 52
    div-long/2addr v0, v4

    .line 53
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    div-long v5, v0, v2

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    rem-long/2addr v0, v2

    .line 54
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrintSize()Ljava/lang/String;
    .locals 7

    .line 43
    iget-wide v0, p0, Lcom/alibaba/ailabs/appbox/bean/AppSizeInfo;->cacheBytes:J

    iget-wide v2, p0, Lcom/alibaba/ailabs/appbox/bean/AppSizeInfo;->dataBytes:J

    add-long/2addr v0, v2

    const-wide/16 v2, 0xa

    mul-long v0, v0, v2

    const-wide/32 v4, 0x100000

    .line 44
    div-long/2addr v0, v4

    .line 45
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    div-long v5, v0, v2

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    rem-long/2addr v0, v2

    .line 46
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
