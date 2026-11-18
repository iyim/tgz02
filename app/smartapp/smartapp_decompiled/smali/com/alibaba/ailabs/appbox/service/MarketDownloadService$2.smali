.class Lcom/alibaba/ailabs/appbox/service/MarketDownloadService$2;
.super Ljava/lang/Object;
.source "MarketDownloadService.java"

# interfaces
.implements Lcom/alibaba/ailabs/base/util/PreinstallManager$PreinstallAndUploadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/appbox/service/MarketDownloadService;->onDataLoaded(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/appbox/service/MarketDownloadService;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/appbox/service/MarketDownloadService;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/service/MarketDownloadService$2;->this$0:Lcom/alibaba/ailabs/appbox/service/MarketDownloadService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public preinstallFailed(Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 0

    .line 168
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/service/MarketDownloadService$2;->this$0:Lcom/alibaba/ailabs/appbox/service/MarketDownloadService;

    invoke-static {p1}, Lcom/alibaba/ailabs/appbox/service/MarketDownloadService;->access$300(Lcom/alibaba/ailabs/appbox/service/MarketDownloadService;)V

    return-void
.end method

.method public preinstallSuccess(Ljava/lang/String;)V
    .locals 0

    .line 163
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/service/MarketDownloadService$2;->this$0:Lcom/alibaba/ailabs/appbox/service/MarketDownloadService;

    invoke-static {p1}, Lcom/alibaba/ailabs/appbox/service/MarketDownloadService;->access$300(Lcom/alibaba/ailabs/appbox/service/MarketDownloadService;)V

    return-void
.end method

.method public startPreinstall(Ljava/lang/String;)V
    .locals 1

    .line 155
    invoke-static {}, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;->getInstance()Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;->isUrlInDownload(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 156
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/service/MarketDownloadService$2;->this$0:Lcom/alibaba/ailabs/appbox/service/MarketDownloadService;

    iget v0, p1, Lcom/alibaba/ailabs/appbox/service/MarketDownloadService;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/alibaba/ailabs/appbox/service/MarketDownloadService;->count:I

    .line 157
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "installOrUpdateApp count++ ==  "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/service/MarketDownloadService$2;->this$0:Lcom/alibaba/ailabs/appbox/service/MarketDownloadService;

    iget v0, v0, Lcom/alibaba/ailabs/appbox/service/MarketDownloadService;->count:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MarketDownloadService"

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public startUpload(Ljava/lang/String;)V
    .locals 1

    .line 173
    invoke-static {}, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;->getInstance()Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;->isUrlInDownload(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 174
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/service/MarketDownloadService$2;->this$0:Lcom/alibaba/ailabs/appbox/service/MarketDownloadService;

    iget v0, p1, Lcom/alibaba/ailabs/appbox/service/MarketDownloadService;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/alibaba/ailabs/appbox/service/MarketDownloadService;->count:I

    .line 175
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "installOrUpdateApp count++ ==  "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/service/MarketDownloadService$2;->this$0:Lcom/alibaba/ailabs/appbox/service/MarketDownloadService;

    iget v0, v0, Lcom/alibaba/ailabs/appbox/service/MarketDownloadService;->count:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MarketDownloadService"

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public uploadFailed(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 186
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/service/MarketDownloadService$2;->this$0:Lcom/alibaba/ailabs/appbox/service/MarketDownloadService;

    invoke-static {p1}, Lcom/alibaba/ailabs/appbox/service/MarketDownloadService;->access$300(Lcom/alibaba/ailabs/appbox/service/MarketDownloadService;)V

    return-void
.end method

.method public uploadSuccess(Ljava/lang/String;)V
    .locals 0

    .line 181
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/service/MarketDownloadService$2;->this$0:Lcom/alibaba/ailabs/appbox/service/MarketDownloadService;

    invoke-static {p1}, Lcom/alibaba/ailabs/appbox/service/MarketDownloadService;->access$300(Lcom/alibaba/ailabs/appbox/service/MarketDownloadService;)V

    return-void
.end method
