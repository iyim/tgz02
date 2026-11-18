.class Lcom/alibaba/ailabs/base/util/PreinstallManager$2;
.super Ljava/lang/Object;
.source "PreinstallManager.java"

# interfaces
.implements Lcom/alibaba/genie/market/task/MarketDownloadAndInstallListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/base/util/PreinstallManager;->updateApp(Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;Lcom/alibaba/ailabs/base/util/PreinstallManager$PreinstallAndUploadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/base/util/PreinstallManager;

.field final synthetic val$bean:Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

.field final synthetic val$listener:Lcom/alibaba/ailabs/base/util/PreinstallManager$PreinstallAndUploadListener;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/base/util/PreinstallManager;Lcom/alibaba/ailabs/base/util/PreinstallManager$PreinstallAndUploadListener;Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/alibaba/ailabs/base/util/PreinstallManager$2;->this$0:Lcom/alibaba/ailabs/base/util/PreinstallManager;

    iput-object p2, p0, Lcom/alibaba/ailabs/base/util/PreinstallManager$2;->val$listener:Lcom/alibaba/ailabs/base/util/PreinstallManager$PreinstallAndUploadListener;

    iput-object p3, p0, Lcom/alibaba/ailabs/base/util/PreinstallManager$2;->val$bean:Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadProgress(I)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onInstallFailed(Ljava/lang/String;I)V
    .locals 2

    .line 145
    iget-object v0, p0, Lcom/alibaba/ailabs/base/util/PreinstallManager$2;->val$listener:Lcom/alibaba/ailabs/base/util/PreinstallManager$PreinstallAndUploadListener;

    if-eqz v0, :cond_0

    .line 146
    iget-object v1, p0, Lcom/alibaba/ailabs/base/util/PreinstallManager$2;->val$bean:Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getDownloadUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/alibaba/ailabs/base/util/PreinstallManager$PreinstallAndUploadListener;->uploadFailed(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public onInstallSuccess(Ljava/lang/String;I)V
    .locals 0

    .line 138
    iget-object p1, p0, Lcom/alibaba/ailabs/base/util/PreinstallManager$2;->val$listener:Lcom/alibaba/ailabs/base/util/PreinstallManager$PreinstallAndUploadListener;

    if-eqz p1, :cond_0

    .line 139
    iget-object p2, p0, Lcom/alibaba/ailabs/base/util/PreinstallManager$2;->val$bean:Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    invoke-virtual {p2}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getDownloadUrl()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/alibaba/ailabs/base/util/PreinstallManager$PreinstallAndUploadListener;->uploadSuccess(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
