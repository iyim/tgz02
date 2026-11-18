.class Lcom/aliyun/oss/internal/OSSMultipartOperation$1;
.super Ljava/lang/Object;
.source "OSSMultipartOperation.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aliyun/oss/internal/OSSMultipartOperation;->completeMultipartUpload(Lcom/aliyun/oss/model/CompleteMultipartUploadRequest;)Lcom/aliyun/oss/model/CompleteMultipartUploadResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/aliyun/oss/model/PartETag;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aliyun/oss/internal/OSSMultipartOperation;


# direct methods
.method constructor <init>(Lcom/aliyun/oss/internal/OSSMultipartOperation;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/aliyun/oss/internal/OSSMultipartOperation$1;->this$0:Lcom/aliyun/oss/internal/OSSMultipartOperation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/aliyun/oss/model/PartETag;Lcom/aliyun/oss/model/PartETag;)I
    .locals 0

    .line 165
    invoke-virtual {p1}, Lcom/aliyun/oss/model/PartETag;->getPartNumber()I

    move-result p1

    invoke-virtual {p2}, Lcom/aliyun/oss/model/PartETag;->getPartNumber()I

    move-result p2

    sub-int/2addr p1, p2

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 162
    check-cast p1, Lcom/aliyun/oss/model/PartETag;

    check-cast p2, Lcom/aliyun/oss/model/PartETag;

    invoke-virtual {p0, p1, p2}, Lcom/aliyun/oss/internal/OSSMultipartOperation$1;->compare(Lcom/aliyun/oss/model/PartETag;Lcom/aliyun/oss/model/PartETag;)I

    move-result p1

    return p1
.end method
