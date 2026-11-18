.class public Lcom/aliyun/oss/model/UploadFileResult;
.super Ljava/lang/Object;
.source "UploadFileResult.java"


# instance fields
.field private multipartUploadResult:Lcom/aliyun/oss/model/CompleteMultipartUploadResult;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getMultipartUploadResult()Lcom/aliyun/oss/model/CompleteMultipartUploadResult;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/aliyun/oss/model/UploadFileResult;->multipartUploadResult:Lcom/aliyun/oss/model/CompleteMultipartUploadResult;

    return-object v0
.end method

.method public setMultipartUploadResult(Lcom/aliyun/oss/model/CompleteMultipartUploadResult;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/aliyun/oss/model/UploadFileResult;->multipartUploadResult:Lcom/aliyun/oss/model/CompleteMultipartUploadResult;

    return-void
.end method
