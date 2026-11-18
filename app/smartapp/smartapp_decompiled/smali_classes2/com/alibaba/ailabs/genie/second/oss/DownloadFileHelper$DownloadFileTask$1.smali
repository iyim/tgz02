.class Lcom/alibaba/ailabs/genie/second/oss/DownloadFileHelper$DownloadFileTask$1;
.super Ljava/lang/Object;
.source "DownloadFileHelper.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/second/utils/RequestManager$onResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/second/oss/DownloadFileHelper$DownloadFileTask;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/second/oss/DownloadFileHelper$DownloadFileTask;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/second/oss/DownloadFileHelper$DownloadFileTask;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/second/oss/DownloadFileHelper$DownloadFileTask$1;->this$0:Lcom/alibaba/ailabs/genie/second/oss/DownloadFileHelper$DownloadFileTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponseFailed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 63
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/second/oss/DownloadFileHelper$DownloadFileTask$1;->this$0:Lcom/alibaba/ailabs/genie/second/oss/DownloadFileHelper$DownloadFileTask;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/second/oss/DownloadFileHelper$DownloadFileTask;->access$300(Lcom/alibaba/ailabs/genie/second/oss/DownloadFileHelper$DownloadFileTask;)Lcom/alibaba/ailabs/genie/second/oss/DownloadFileHelper$DownloadFileListener;

    move-result-object p1

    const/4 v0, -0x1

    invoke-interface {p1, v0, p2}, Lcom/alibaba/ailabs/genie/second/oss/DownloadFileHelper$DownloadFileListener;->onFailed(ILjava/lang/String;)V

    return-void
.end method

.method public onResponseSuccess(Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse<",
            "Lcom/alibaba/ailabs/genie/second/response/OssTokenResponseData;",
            ">;)V"
        }
    .end annotation

    .line 53
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;->getData()Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/second/response/OssTokenResponseData;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/response/OssTokenResponseData;->getOssToken()Lcom/alibaba/ailabs/genie/second/response/OssTokenResponseData$OssToken;

    move-result-object p1

    .line 54
    new-instance v0, Lcom/alibaba/sdk/android/oss/common/auth/OSSStsTokenCredentialProvider;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/response/OssTokenResponseData$OssToken;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 55
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/response/OssTokenResponseData$OssToken;->getSecret()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/response/OssTokenResponseData$OssToken;->getToken()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lcom/alibaba/sdk/android/oss/common/auth/OSSStsTokenCredentialProvider;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/second/oss/DownloadFileHelper$DownloadFileTask$1;->this$0:Lcom/alibaba/ailabs/genie/second/oss/DownloadFileHelper$DownloadFileTask;

    new-instance v1, Lcom/alibaba/sdk/android/oss/OSSClient;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/second/oss/DownloadFileHelper$DownloadFileTask;->access$100(Lcom/alibaba/ailabs/genie/second/oss/DownloadFileHelper$DownloadFileTask;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "http://cn-hangzhou.oss-pub.aliyun-inc.com"

    invoke-direct {v1, v2, v3, v0}, Lcom/alibaba/sdk/android/oss/OSSClient;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/sdk/android/oss/common/auth/OSSCredentialProvider;)V

    invoke-static {p1, v1}, Lcom/alibaba/ailabs/genie/second/oss/DownloadFileHelper$DownloadFileTask;->access$002(Lcom/alibaba/ailabs/genie/second/oss/DownloadFileHelper$DownloadFileTask;Lcom/alibaba/sdk/android/oss/OSS;)Lcom/alibaba/sdk/android/oss/OSS;

    .line 57
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/second/oss/DownloadFileHelper$DownloadFileTask$1;->this$0:Lcom/alibaba/ailabs/genie/second/oss/DownloadFileHelper$DownloadFileTask;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/second/oss/DownloadFileHelper$DownloadFileTask;->access$000(Lcom/alibaba/ailabs/genie/second/oss/DownloadFileHelper$DownloadFileTask;)Lcom/alibaba/sdk/android/oss/OSS;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/second/oss/DownloadFileHelper$DownloadFileTask;->access$200(Lcom/alibaba/ailabs/genie/second/oss/DownloadFileHelper$DownloadFileTask;Lcom/alibaba/sdk/android/oss/OSS;)V

    return-void
.end method
