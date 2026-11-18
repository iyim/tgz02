.class Lcom/alibaba/ailabs/genie/second/oss/DownloadFileHelper$DownloadFileTask$2;
.super Ljava/lang/Object;
.source "DownloadFileHelper.java"

# interfaces
.implements Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/second/oss/DownloadFileHelper$DownloadFileTask;->downloadFileToOss(Lcom/alibaba/sdk/android/oss/OSS;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<",
        "Lcom/alibaba/sdk/android/oss/model/GetObjectRequest;",
        "Lcom/alibaba/sdk/android/oss/model/GetObjectResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/second/oss/DownloadFileHelper$DownloadFileTask;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/second/oss/DownloadFileHelper$DownloadFileTask;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/second/oss/DownloadFileHelper$DownloadFileTask$2;->this$0:Lcom/alibaba/ailabs/genie/second/oss/DownloadFileHelper$DownloadFileTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/alibaba/sdk/android/oss/model/GetObjectRequest;Lcom/alibaba/sdk/android/oss/ClientException;Lcom/alibaba/sdk/android/oss/ServiceException;)V
    .locals 0

    .line 84
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/second/oss/DownloadFileHelper$DownloadFileTask$2;->this$0:Lcom/alibaba/ailabs/genie/second/oss/DownloadFileHelper$DownloadFileTask;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/second/oss/DownloadFileHelper$DownloadFileTask;->access$300(Lcom/alibaba/ailabs/genie/second/oss/DownloadFileHelper$DownloadFileTask;)Lcom/alibaba/ailabs/genie/second/oss/DownloadFileHelper$DownloadFileListener;

    move-result-object p1

    const/4 p2, -0x3

    const-string p3, "DOWNLOAD TO OSS THROW EXCEPTION!"

    invoke-interface {p1, p2, p3}, Lcom/alibaba/ailabs/genie/second/oss/DownloadFileHelper$DownloadFileListener;->onFailed(ILjava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onFailure(Lcom/alibaba/sdk/android/oss/model/OSSRequest;Lcom/alibaba/sdk/android/oss/ClientException;Lcom/alibaba/sdk/android/oss/ServiceException;)V
    .locals 0

    .line 74
    check-cast p1, Lcom/alibaba/sdk/android/oss/model/GetObjectRequest;

    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/ailabs/genie/second/oss/DownloadFileHelper$DownloadFileTask$2;->onFailure(Lcom/alibaba/sdk/android/oss/model/GetObjectRequest;Lcom/alibaba/sdk/android/oss/ClientException;Lcom/alibaba/sdk/android/oss/ServiceException;)V

    return-void
.end method

.method public onSuccess(Lcom/alibaba/sdk/android/oss/model/GetObjectRequest;Lcom/alibaba/sdk/android/oss/model/GetObjectResult;)V
    .locals 0

    .line 78
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/second/oss/DownloadFileHelper$DownloadFileTask$2;->this$0:Lcom/alibaba/ailabs/genie/second/oss/DownloadFileHelper$DownloadFileTask;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/second/oss/DownloadFileHelper$DownloadFileTask;->access$300(Lcom/alibaba/ailabs/genie/second/oss/DownloadFileHelper$DownloadFileTask;)Lcom/alibaba/ailabs/genie/second/oss/DownloadFileHelper$DownloadFileListener;

    move-result-object p1

    invoke-virtual {p2}, Lcom/alibaba/sdk/android/oss/model/GetObjectResult;->getObjectContent()Ljava/io/InputStream;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/alibaba/ailabs/genie/second/oss/DownloadFileHelper$DownloadFileListener;->onSuccess(Ljava/io/InputStream;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Lcom/alibaba/sdk/android/oss/model/OSSRequest;Lcom/alibaba/sdk/android/oss/model/OSSResult;)V
    .locals 0

    .line 74
    check-cast p1, Lcom/alibaba/sdk/android/oss/model/GetObjectRequest;

    check-cast p2, Lcom/alibaba/sdk/android/oss/model/GetObjectResult;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/ailabs/genie/second/oss/DownloadFileHelper$DownloadFileTask$2;->onSuccess(Lcom/alibaba/sdk/android/oss/model/GetObjectRequest;Lcom/alibaba/sdk/android/oss/model/GetObjectResult;)V

    return-void
.end method
