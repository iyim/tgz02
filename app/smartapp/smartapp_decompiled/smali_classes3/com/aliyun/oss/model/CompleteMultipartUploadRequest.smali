.class public Lcom/aliyun/oss/model/CompleteMultipartUploadRequest;
.super Lcom/aliyun/oss/model/GenericRequest;
.source "CompleteMultipartUploadRequest.java"


# instance fields
.field private callback:Lcom/aliyun/oss/model/Callback;

.field private cannedACL:Lcom/aliyun/oss/model/CannedAccessControlList;

.field private partETags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/aliyun/oss/model/PartETag;",
            ">;"
        }
    .end annotation
.end field

.field private process:Ljava/lang/String;

.field private uploadId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/aliyun/oss/model/PartETag;",
            ">;)V"
        }
    .end annotation

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/aliyun/oss/model/GenericRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/aliyun/oss/model/CompleteMultipartUploadRequest;->partETags:Ljava/util/List;

    .line 61
    iput-object p3, p0, Lcom/aliyun/oss/model/CompleteMultipartUploadRequest;->uploadId:Ljava/lang/String;

    .line 62
    iput-object p4, p0, Lcom/aliyun/oss/model/CompleteMultipartUploadRequest;->partETags:Ljava/util/List;

    const/4 p1, 0x0

    .line 63
    invoke-virtual {p0, p1}, Lcom/aliyun/oss/model/CompleteMultipartUploadRequest;->setObjectACL(Lcom/aliyun/oss/model/CannedAccessControlList;)V

    return-void
.end method


# virtual methods
.method public getCallback()Lcom/aliyun/oss/model/Callback;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/aliyun/oss/model/CompleteMultipartUploadRequest;->callback:Lcom/aliyun/oss/model/Callback;

    return-object v0
.end method

.method public getObjectACL()Lcom/aliyun/oss/model/CannedAccessControlList;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/aliyun/oss/model/CompleteMultipartUploadRequest;->cannedACL:Lcom/aliyun/oss/model/CannedAccessControlList;

    return-object v0
.end method

.method public getPartETags()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/aliyun/oss/model/PartETag;",
            ">;"
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lcom/aliyun/oss/model/CompleteMultipartUploadRequest;->partETags:Ljava/util/List;

    return-object v0
.end method

.method public getProcess()Ljava/lang/String;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/aliyun/oss/model/CompleteMultipartUploadRequest;->process:Ljava/lang/String;

    return-object v0
.end method

.method public getUploadId()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/aliyun/oss/model/CompleteMultipartUploadRequest;->uploadId:Ljava/lang/String;

    return-object v0
.end method

.method public setCallback(Lcom/aliyun/oss/model/Callback;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/aliyun/oss/model/CompleteMultipartUploadRequest;->callback:Lcom/aliyun/oss/model/Callback;

    return-void
.end method

.method public setObjectACL(Lcom/aliyun/oss/model/CannedAccessControlList;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/aliyun/oss/model/CompleteMultipartUploadRequest;->cannedACL:Lcom/aliyun/oss/model/CannedAccessControlList;

    return-void
.end method

.method public setPartETags(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/aliyun/oss/model/PartETag;",
            ">;)V"
        }
    .end annotation

    .line 97
    iput-object p1, p0, Lcom/aliyun/oss/model/CompleteMultipartUploadRequest;->partETags:Ljava/util/List;

    return-void
.end method

.method public setProcess(Ljava/lang/String;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/aliyun/oss/model/CompleteMultipartUploadRequest;->process:Ljava/lang/String;

    return-void
.end method

.method public setUploadId(Ljava/lang/String;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/aliyun/oss/model/CompleteMultipartUploadRequest;->uploadId:Ljava/lang/String;

    return-void
.end method
