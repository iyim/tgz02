.class public Lcom/aliyun/oss/model/PutBucketImageRequest;
.super Lcom/aliyun/oss/model/GenericRequest;
.source "PutBucketImageRequest.java"


# instance fields
.field private bucketName:Ljava/lang/String;

.field private default404Pic:Ljava/lang/String;

.field private isAutoSetContentType:Z

.field private isForbidOrigPicAccess:Z

.field private isSetAttachName:Z

.field private isUseSrcFormat:Z

.field private isUseStyleOnly:Z

.field private styleDelimiters:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 13
    invoke-direct {p0}, Lcom/aliyun/oss/model/GenericRequest;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/aliyun/oss/model/PutBucketImageRequest;->isForbidOrigPicAccess:Z

    .line 6
    iput-boolean v0, p0, Lcom/aliyun/oss/model/PutBucketImageRequest;->isUseStyleOnly:Z

    .line 7
    iput-boolean v0, p0, Lcom/aliyun/oss/model/PutBucketImageRequest;->isAutoSetContentType:Z

    .line 8
    iput-boolean v0, p0, Lcom/aliyun/oss/model/PutBucketImageRequest;->isUseSrcFormat:Z

    .line 9
    iput-boolean v0, p0, Lcom/aliyun/oss/model/PutBucketImageRequest;->isSetAttachName:Z

    const-string v0, ""

    .line 10
    iput-object v0, p0, Lcom/aliyun/oss/model/PutBucketImageRequest;->default404Pic:Ljava/lang/String;

    const-string v0, "!"

    .line 11
    iput-object v0, p0, Lcom/aliyun/oss/model/PutBucketImageRequest;->styleDelimiters:Ljava/lang/String;

    .line 14
    iput-object p1, p0, Lcom/aliyun/oss/model/PutBucketImageRequest;->bucketName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public GetBucketName()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/aliyun/oss/model/PutBucketImageRequest;->bucketName:Ljava/lang/String;

    return-object v0
.end method

.method public GetDefault404Pic()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/aliyun/oss/model/PutBucketImageRequest;->default404Pic:Ljava/lang/String;

    return-object v0
.end method

.method public GetIsAutoSetContentType()Z
    .locals 1

    .line 46
    iget-boolean v0, p0, Lcom/aliyun/oss/model/PutBucketImageRequest;->isAutoSetContentType:Z

    return v0
.end method

.method public GetIsForbidOrigPicAccess()Z
    .locals 1

    .line 30
    iget-boolean v0, p0, Lcom/aliyun/oss/model/PutBucketImageRequest;->isForbidOrigPicAccess:Z

    return v0
.end method

.method public GetIsSetAttachName()Z
    .locals 1

    .line 62
    iget-boolean v0, p0, Lcom/aliyun/oss/model/PutBucketImageRequest;->isSetAttachName:Z

    return v0
.end method

.method public GetIsUseSrcFormat()Z
    .locals 1

    .line 54
    iget-boolean v0, p0, Lcom/aliyun/oss/model/PutBucketImageRequest;->isUseSrcFormat:Z

    return v0
.end method

.method public GetIsUseStyleOnly()Z
    .locals 1

    .line 38
    iget-boolean v0, p0, Lcom/aliyun/oss/model/PutBucketImageRequest;->isUseStyleOnly:Z

    return v0
.end method

.method public GetStyleDelimiters()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/aliyun/oss/model/PutBucketImageRequest;->styleDelimiters:Ljava/lang/String;

    return-object v0
.end method

.method public SetBucketName(Ljava/lang/String;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/aliyun/oss/model/PutBucketImageRequest;->bucketName:Ljava/lang/String;

    return-void
.end method

.method public SetDefault404Pic(Ljava/lang/String;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/aliyun/oss/model/PutBucketImageRequest;->default404Pic:Ljava/lang/String;

    return-void
.end method

.method public SetIsAutoSetContentType(Z)V
    .locals 0

    .line 42
    iput-boolean p1, p0, Lcom/aliyun/oss/model/PutBucketImageRequest;->isAutoSetContentType:Z

    return-void
.end method

.method public SetIsForbidOrigPicAccess(Z)V
    .locals 0

    .line 26
    iput-boolean p1, p0, Lcom/aliyun/oss/model/PutBucketImageRequest;->isForbidOrigPicAccess:Z

    return-void
.end method

.method public SetIsSetAttachName(Z)V
    .locals 0

    .line 58
    iput-boolean p1, p0, Lcom/aliyun/oss/model/PutBucketImageRequest;->isSetAttachName:Z

    return-void
.end method

.method public SetIsUseSrcFormat(Z)V
    .locals 0

    .line 50
    iput-boolean p1, p0, Lcom/aliyun/oss/model/PutBucketImageRequest;->isUseSrcFormat:Z

    return-void
.end method

.method public SetIsUseStyleOnly(Z)V
    .locals 0

    .line 34
    iput-boolean p1, p0, Lcom/aliyun/oss/model/PutBucketImageRequest;->isUseStyleOnly:Z

    return-void
.end method

.method public SetStyleDelimiters(Ljava/lang/String;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/aliyun/oss/model/PutBucketImageRequest;->styleDelimiters:Ljava/lang/String;

    return-void
.end method
