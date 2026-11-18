.class public Lcom/aliyun/oss/model/DownloadFileResult;
.super Ljava/lang/Object;
.source "DownloadFileResult.java"


# instance fields
.field private objectMetadata:Lcom/aliyun/oss/model/ObjectMetadata;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getObjectMetadata()Lcom/aliyun/oss/model/ObjectMetadata;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/aliyun/oss/model/DownloadFileResult;->objectMetadata:Lcom/aliyun/oss/model/ObjectMetadata;

    return-object v0
.end method

.method public setObjectMetadata(Lcom/aliyun/oss/model/ObjectMetadata;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/aliyun/oss/model/DownloadFileResult;->objectMetadata:Lcom/aliyun/oss/model/ObjectMetadata;

    return-void
.end method
