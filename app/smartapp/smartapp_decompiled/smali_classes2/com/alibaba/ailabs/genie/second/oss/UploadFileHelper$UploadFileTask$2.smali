.class Lcom/alibaba/ailabs/genie/second/oss/UploadFileHelper$UploadFileTask$2;
.super Ljava/lang/Object;
.source "UploadFileHelper.java"

# interfaces
.implements Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/second/oss/UploadFileHelper$UploadFileTask;->uploadToOss(Lcom/alibaba/sdk/android/oss/OSS;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<",
        "Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;",
        "Lcom/alibaba/sdk/android/oss/model/PutObjectResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/second/oss/UploadFileHelper$UploadFileTask;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/second/oss/UploadFileHelper$UploadFileTask;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/second/oss/UploadFileHelper$UploadFileTask$2;->this$0:Lcom/alibaba/ailabs/genie/second/oss/UploadFileHelper$UploadFileTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onFailure(Lcom/alibaba/sdk/android/oss/model/OSSRequest;Lcom/alibaba/sdk/android/oss/ClientException;Lcom/alibaba/sdk/android/oss/ServiceException;)V
    .locals 0

    .line 80
    check-cast p1, Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;

    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/ailabs/genie/second/oss/UploadFileHelper$UploadFileTask$2;->onFailure(Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;Lcom/alibaba/sdk/android/oss/ClientException;Lcom/alibaba/sdk/android/oss/ServiceException;)V

    return-void
.end method

.method public onFailure(Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;Lcom/alibaba/sdk/android/oss/ClientException;Lcom/alibaba/sdk/android/oss/ServiceException;)V
    .locals 3

    const/4 p1, 0x0

    const-string v0, "oss"

    if-eqz p2, :cond_0

    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ClientException:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/alibaba/sdk/android/oss/ClientException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/second/oss/UploadFileHelper$UploadFileTask$2;->this$0:Lcom/alibaba/ailabs/genie/second/oss/UploadFileHelper$UploadFileTask;

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/second/oss/UploadFileHelper$UploadFileTask;->access$100(Lcom/alibaba/ailabs/genie/second/oss/UploadFileHelper$UploadFileTask;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p2}, Lcom/alibaba/sdk/android/oss/ClientException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    :cond_0
    if-eqz p3, :cond_1

    .line 96
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ServiceException:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/alibaba/sdk/android/oss/ServiceException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/second/oss/UploadFileHelper$UploadFileTask$2;->this$0:Lcom/alibaba/ailabs/genie/second/oss/UploadFileHelper$UploadFileTask;

    invoke-static {p2}, Lcom/alibaba/ailabs/genie/second/oss/UploadFileHelper$UploadFileTask;->access$100(Lcom/alibaba/ailabs/genie/second/oss/UploadFileHelper$UploadFileTask;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p3}, Lcom/alibaba/sdk/android/oss/ServiceException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 99
    :cond_1
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/second/oss/UploadFileHelper$UploadFileTask$2;->this$0:Lcom/alibaba/ailabs/genie/second/oss/UploadFileHelper$UploadFileTask;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/second/oss/UploadFileHelper$UploadFileTask;->access$300(Lcom/alibaba/ailabs/genie/second/oss/UploadFileHelper$UploadFileTask;)Lcom/alibaba/ailabs/genie/second/oss/UploadFileHelper$UploadFileListener;

    move-result-object p1

    const-string p2, "-2"

    const-string p3, "UPLOAD TO OSS THROW EXCEPTION!"

    invoke-interface {p1, p2, p3}, Lcom/alibaba/ailabs/genie/second/oss/UploadFileHelper$UploadFileListener;->onFailed(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Lcom/alibaba/sdk/android/oss/model/OSSRequest;Lcom/alibaba/sdk/android/oss/model/OSSResult;)V
    .locals 0

    .line 80
    check-cast p1, Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;

    check-cast p2, Lcom/alibaba/sdk/android/oss/model/PutObjectResult;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/ailabs/genie/second/oss/UploadFileHelper$UploadFileTask$2;->onSuccess(Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;Lcom/alibaba/sdk/android/oss/model/PutObjectResult;)V

    return-void
.end method

.method public onSuccess(Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;Lcom/alibaba/sdk/android/oss/model/PutObjectResult;)V
    .locals 1

    .line 84
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "putObjectResult:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "oss"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/second/oss/UploadFileHelper$UploadFileTask$2;->this$0:Lcom/alibaba/ailabs/genie/second/oss/UploadFileHelper$UploadFileTask;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/second/oss/UploadFileHelper$UploadFileTask;->access$300(Lcom/alibaba/ailabs/genie/second/oss/UploadFileHelper$UploadFileTask;)Lcom/alibaba/ailabs/genie/second/oss/UploadFileHelper$UploadFileListener;

    move-result-object p1

    iget-object p2, p0, Lcom/alibaba/ailabs/genie/second/oss/UploadFileHelper$UploadFileTask$2;->this$0:Lcom/alibaba/ailabs/genie/second/oss/UploadFileHelper$UploadFileTask;

    invoke-static {p2}, Lcom/alibaba/ailabs/genie/second/oss/UploadFileHelper$UploadFileTask;->access$400(Lcom/alibaba/ailabs/genie/second/oss/UploadFileHelper$UploadFileTask;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/alibaba/ailabs/genie/second/oss/UploadFileHelper$UploadFileListener;->onSuccess(Ljava/lang/String;)V

    return-void
.end method
