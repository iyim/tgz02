.class Lcom/alibaba/ailabs/appbox/download/Market3TaskManager$6;
.super Ljava/lang/Object;
.source "Market3TaskManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;->onInstallProgress(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;

.field final synthetic val$listeners:Ljava/util/ArrayList;

.field final synthetic val$progress:I


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;Ljava/util/ArrayList;I)V
    .locals 0

    .line 348
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager$6;->this$0:Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;

    iput-object p2, p0, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager$6;->val$listeners:Ljava/util/ArrayList;

    iput p3, p0, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager$6;->val$progress:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 351
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager$6;->val$listeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/genie/market/task/MarketDownloadAndInstallListener;

    .line 352
    iget v2, p0, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager$6;->val$progress:I

    invoke-interface {v1, v2}, Lcom/alibaba/genie/market/task/MarketDownloadAndInstallListener;->onDownloadProgress(I)V

    goto :goto_0

    :cond_0
    return-void
.end method
