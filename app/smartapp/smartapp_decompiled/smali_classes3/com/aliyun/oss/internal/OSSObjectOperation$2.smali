.class Lcom/aliyun/oss/internal/OSSObjectOperation$2;
.super Ljava/lang/Object;
.source "OSSObjectOperation.java"

# interfaces
.implements Lcom/aliyun/oss/common/comm/ResponseHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aliyun/oss/internal/OSSObjectOperation;->getObjectMetadata(Lcom/aliyun/oss/model/GenericRequest;)Lcom/aliyun/oss/model/ObjectMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aliyun/oss/internal/OSSObjectOperation;


# direct methods
.method constructor <init>(Lcom/aliyun/oss/internal/OSSObjectOperation;)V
    .locals 0

    .line 382
    iput-object p1, p0, Lcom/aliyun/oss/internal/OSSObjectOperation$2;->this$0:Lcom/aliyun/oss/internal/OSSObjectOperation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handle(Lcom/aliyun/oss/common/comm/ResponseMessage;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/ServiceException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    .line 387
    invoke-virtual {p1}, Lcom/aliyun/oss/common/comm/ResponseMessage;->getStatusCode()I

    move-result v0

    const/16 v1, 0x194

    if-eq v0, v1, :cond_0

    return-void

    .line 388
    :cond_0
    invoke-static {p1}, Lcom/aliyun/oss/internal/OSSUtils;->safeCloseResponse(Lcom/aliyun/oss/common/comm/ResponseMessage;)V

    .line 389
    invoke-virtual {p1}, Lcom/aliyun/oss/common/comm/ResponseMessage;->getHeaders()Ljava/util/Map;

    move-result-object p1

    const-string v0, "x-oss-request-id"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    sget-object v0, Lcom/aliyun/oss/internal/OSSUtils;->OSS_RESOURCE_MANAGER:Lcom/aliyun/oss/common/utils/ResourceManager;

    const-string v1, "NoSuchKey"

    invoke-virtual {v0, v1}, Lcom/aliyun/oss/common/utils/ResourceManager;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v1, v0}, Lcom/aliyun/oss/common/utils/ExceptionFactory;->createOSSException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/aliyun/oss/OSSException;

    move-result-object p1

    throw p1
.end method
