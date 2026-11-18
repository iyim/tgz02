.class Lcom/aliyun/ccp/api/response/file/GetFileSignedUrlResponse$Headers;
.super Ljava/lang/Object;
.source "GetFileSignedUrlResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aliyun/ccp/api/response/file/GetFileSignedUrlResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Headers"
.end annotation


# instance fields
.field private contentMd5:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "Content-Md5"
    .end annotation
.end field

.field private contentType:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "Content-Type"
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getContentMd5()Ljava/lang/String;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/aliyun/ccp/api/response/file/GetFileSignedUrlResponse$Headers;->contentMd5:Ljava/lang/String;

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/aliyun/ccp/api/response/file/GetFileSignedUrlResponse$Headers;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public setContentMd5(Ljava/lang/String;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/aliyun/ccp/api/response/file/GetFileSignedUrlResponse$Headers;->contentMd5:Ljava/lang/String;

    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/aliyun/ccp/api/response/file/GetFileSignedUrlResponse$Headers;->contentType:Ljava/lang/String;

    return-void
.end method
