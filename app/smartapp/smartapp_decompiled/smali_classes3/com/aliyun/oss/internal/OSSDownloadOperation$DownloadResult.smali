.class Lcom/aliyun/oss/internal/OSSDownloadOperation$DownloadResult;
.super Ljava/lang/Object;
.source "OSSDownloadOperation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aliyun/oss/internal/OSSDownloadOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DownloadResult"
.end annotation


# instance fields
.field private objectMetadata:Lcom/aliyun/oss/model/ObjectMetadata;

.field private partResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/aliyun/oss/internal/OSSDownloadOperation$PartResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .line 266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getObjectMetadata()Lcom/aliyun/oss/model/ObjectMetadata;
    .locals 1

    .line 277
    iget-object v0, p0, Lcom/aliyun/oss/internal/OSSDownloadOperation$DownloadResult;->objectMetadata:Lcom/aliyun/oss/model/ObjectMetadata;

    return-object v0
.end method

.method public getPartResults()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/aliyun/oss/internal/OSSDownloadOperation$PartResult;",
            ">;"
        }
    .end annotation

    .line 269
    iget-object v0, p0, Lcom/aliyun/oss/internal/OSSDownloadOperation$DownloadResult;->partResults:Ljava/util/List;

    return-object v0
.end method

.method public setObjectMetadata(Lcom/aliyun/oss/model/ObjectMetadata;)V
    .locals 0

    .line 281
    iput-object p1, p0, Lcom/aliyun/oss/internal/OSSDownloadOperation$DownloadResult;->objectMetadata:Lcom/aliyun/oss/model/ObjectMetadata;

    return-void
.end method

.method public setPartResults(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/aliyun/oss/internal/OSSDownloadOperation$PartResult;",
            ">;)V"
        }
    .end annotation

    .line 273
    iput-object p1, p0, Lcom/aliyun/oss/internal/OSSDownloadOperation$DownloadResult;->partResults:Ljava/util/List;

    return-void
.end method
