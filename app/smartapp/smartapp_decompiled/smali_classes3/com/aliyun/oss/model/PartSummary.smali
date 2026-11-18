.class public Lcom/aliyun/oss/model/PartSummary;
.super Ljava/lang/Object;
.source "PartSummary.java"


# instance fields
.field private eTag:Ljava/lang/String;

.field private lastModified:Ljava/util/Date;

.field private partNumber:I

.field private size:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getETag()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/aliyun/oss/model/PartSummary;->eTag:Ljava/lang/String;

    return-object v0
.end method

.method public getLastModified()Ljava/util/Date;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/aliyun/oss/model/PartSummary;->lastModified:Ljava/util/Date;

    return-object v0
.end method

.method public getPartNumber()I
    .locals 1

    .line 50
    iget v0, p0, Lcom/aliyun/oss/model/PartSummary;->partNumber:I

    return v0
.end method

.method public getSize()J
    .locals 2

    .line 101
    iget-wide v0, p0, Lcom/aliyun/oss/model/PartSummary;->size:J

    return-wide v0
.end method

.method public setETag(Ljava/lang/String;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/aliyun/oss/model/PartSummary;->eTag:Ljava/lang/String;

    return-void
.end method

.method public setLastModified(Ljava/util/Date;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/aliyun/oss/model/PartSummary;->lastModified:Ljava/util/Date;

    return-void
.end method

.method public setPartNumber(I)V
    .locals 0

    .line 59
    iput p1, p0, Lcom/aliyun/oss/model/PartSummary;->partNumber:I

    return-void
.end method

.method public setSize(J)V
    .locals 0

    .line 110
    iput-wide p1, p0, Lcom/aliyun/oss/model/PartSummary;->size:J

    return-void
.end method
