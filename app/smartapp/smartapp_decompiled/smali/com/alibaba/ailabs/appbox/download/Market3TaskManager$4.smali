.class Lcom/alibaba/ailabs/appbox/download/Market3TaskManager$4;
.super Ljava/lang/Object;
.source "Market3TaskManager.java"

# interfaces
.implements Lcom/alibaba/genie/market/task/MarketDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;->downloadApk(Ljava/lang/String;ILjava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;

.field final synthetic val$size:I

.field final synthetic val$uninstallAble:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;

.field final synthetic val$userClick:Z


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 0

    .line 235
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager$4;->this$0:Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;

    iput-object p2, p0, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager$4;->val$url:Ljava/lang/String;

    iput p3, p0, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager$4;->val$size:I

    iput-object p4, p0, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager$4;->val$uninstallAble:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager$4;->val$userClick:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadFailed(ZLjava/lang/String;ILjava/lang/String;)V
    .locals 7

    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "downloadApk  onDownloadFailed finish:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ",url:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",errCode:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",errMsg:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Market3TaskManager-tag"

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager$4;->this$0:Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;

    const-string/jumbo v0, "\u4e0b\u8f7d\u5931\u8d25"

    const v1, -0x186d3

    invoke-static {p1, v0, v1, p2}, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;->access$300(Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;Ljava/lang/String;ILjava/lang/String;)V

    .line 266
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, p0, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager$4;->val$size:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager$4;->val$uninstallAble:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean p3, p0, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager$4;->val$userClick:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v1, p2

    move-object v3, p4

    invoke-static/range {v1 .. v6}, Lcom/alibaba/ailabs/base/util/ReportUtil;->reportInstallDownloadFailedEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDownloadProgress(I)V
    .locals 2

    .line 239
    rem-int/lit8 v0, p1, 0xa

    if-nez v0, :cond_0

    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "downloadApk onDownloadProgress -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " , url == "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager$4;->val$url:Ljava/lang/String;

    invoke-static {v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Market3TaskManager-tag"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager$4;->this$0:Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager$4;->val$url:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;->access$000(Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;ILjava/lang/String;)V

    return-void
.end method

.method public onDownloadSuccess(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "downloadApk  onDownloadSuccess finish:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ",url:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",path:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Market3TaskManager-tag"

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager$4;->this$0:Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;

    const/4 v0, 0x2

    invoke-virtual {p1, p2, v0}, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;->setDownloadState(Ljava/lang/String;I)V

    .line 249
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager$4;->this$0:Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;

    invoke-static {p1}, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;->access$100(Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/appbox/download/DownloadBean;

    invoke-virtual {p1, p3}, Lcom/alibaba/ailabs/appbox/download/DownloadBean;->setDownPath(Ljava/lang/String;)V

    .line 250
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager$4;->this$0:Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;

    iget v2, p0, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager$4;->val$size:I

    iget-object v4, p0, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager$4;->val$uninstallAble:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager$4;->val$userClick:Z

    move-object v1, p2

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;->access$200(Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
