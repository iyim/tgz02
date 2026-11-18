.class public Lcom/aliyun/oss/model/PartETag;
.super Ljava/lang/Object;
.source "PartETag.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x224dca243521be6bL


# instance fields
.field private eTag:Ljava/lang/String;

.field private partCRC:Ljava/lang/Long;

.field private partNumber:I

.field private partSize:J


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput p1, p0, Lcom/aliyun/oss/model/PartETag;->partNumber:I

    .line 45
    iput-object p2, p0, Lcom/aliyun/oss/model/PartETag;->eTag:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;JLjava/lang/Long;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput p1, p0, Lcom/aliyun/oss/model/PartETag;->partNumber:I

    .line 61
    iput-object p2, p0, Lcom/aliyun/oss/model/PartETag;->eTag:Ljava/lang/String;

    .line 62
    iput-wide p3, p0, Lcom/aliyun/oss/model/PartETag;->partSize:J

    .line 63
    iput-object p5, p0, Lcom/aliyun/oss/model/PartETag;->partCRC:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public getETag()Ljava/lang/String;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/aliyun/oss/model/PartETag;->eTag:Ljava/lang/String;

    return-object v0
.end method

.method public getPartCRC()Ljava/lang/Long;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/aliyun/oss/model/PartETag;->partCRC:Ljava/lang/Long;

    return-object v0
.end method

.method public getPartNumber()I
    .locals 1

    .line 71
    iget v0, p0, Lcom/aliyun/oss/model/PartETag;->partNumber:I

    return v0
.end method

.method public getPartSize()J
    .locals 2

    .line 101
    iget-wide v0, p0, Lcom/aliyun/oss/model/PartETag;->partSize:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 2

    .line 120
    iget-object v0, p0, Lcom/aliyun/oss/model/PartETag;->eTag:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 121
    iget v1, p0, Lcom/aliyun/oss/model/PartETag;->partNumber:I

    add-int/2addr v0, v1

    return v0
.end method

.method public setETag(Ljava/lang/String;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/aliyun/oss/model/PartETag;->eTag:Ljava/lang/String;

    return-void
.end method

.method public setPartCRC(Ljava/lang/Long;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/aliyun/oss/model/PartETag;->partCRC:Ljava/lang/Long;

    return-void
.end method

.method public setPartNumber(I)V
    .locals 0

    .line 80
    iput p1, p0, Lcom/aliyun/oss/model/PartETag;->partNumber:I

    return-void
.end method

.method public setPartSize(J)V
    .locals 0

    .line 105
    iput-wide p1, p0, Lcom/aliyun/oss/model/PartETag;->partSize:J

    return-void
.end method
