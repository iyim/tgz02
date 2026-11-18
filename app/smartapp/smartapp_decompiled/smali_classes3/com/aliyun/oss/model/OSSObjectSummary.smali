.class public Lcom/aliyun/oss/model/OSSObjectSummary;
.super Ljava/lang/Object;
.source "OSSObjectSummary.java"


# instance fields
.field private bucketName:Ljava/lang/String;

.field private eTag:Ljava/lang/String;

.field private key:Ljava/lang/String;

.field private lastModified:Ljava/util/Date;

.field private owner:Lcom/aliyun/oss/model/Owner;

.field private size:J

.field private storageClass:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getBucketName()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/aliyun/oss/model/OSSObjectSummary;->bucketName:Ljava/lang/String;

    return-object v0
.end method

.method public getETag()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/aliyun/oss/model/OSSObjectSummary;->eTag:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/aliyun/oss/model/OSSObjectSummary;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getLastModified()Ljava/util/Date;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/aliyun/oss/model/OSSObjectSummary;->lastModified:Ljava/util/Date;

    return-object v0
.end method

.method public getOwner()Lcom/aliyun/oss/model/Owner;
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/aliyun/oss/model/OSSObjectSummary;->owner:Lcom/aliyun/oss/model/Owner;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .line 112
    iget-wide v0, p0, Lcom/aliyun/oss/model/OSSObjectSummary;->size:J

    return-wide v0
.end method

.method public getStorageClass()Ljava/lang/String;
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/aliyun/oss/model/OSSObjectSummary;->storageClass:Ljava/lang/String;

    return-object v0
.end method

.method public setBucketName(Ljava/lang/String;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/aliyun/oss/model/OSSObjectSummary;->bucketName:Ljava/lang/String;

    return-void
.end method

.method public setETag(Ljava/lang/String;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/aliyun/oss/model/OSSObjectSummary;->eTag:Ljava/lang/String;

    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/aliyun/oss/model/OSSObjectSummary;->key:Ljava/lang/String;

    return-void
.end method

.method public setLastModified(Ljava/util/Date;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/aliyun/oss/model/OSSObjectSummary;->lastModified:Ljava/util/Date;

    return-void
.end method

.method public setOwner(Lcom/aliyun/oss/model/Owner;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/aliyun/oss/model/OSSObjectSummary;->owner:Lcom/aliyun/oss/model/Owner;

    return-void
.end method

.method public setSize(J)V
    .locals 0

    .line 121
    iput-wide p1, p0, Lcom/aliyun/oss/model/OSSObjectSummary;->size:J

    return-void
.end method

.method public setStorageClass(Ljava/lang/String;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lcom/aliyun/oss/model/OSSObjectSummary;->storageClass:Ljava/lang/String;

    return-void
.end method
