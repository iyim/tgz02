.class final Lcom/alibaba/ailabs/appbox/common/installunder9/InstallUnder9$1;
.super Landroid/content/pm/IPackageInstallObserver$Stub;
.source "InstallUnder9.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/appbox/common/installunder9/InstallUnder9;->install(Ljava/lang/String;Lcom/alibaba/ailabs/appbox/common/install/OnInstallListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$fileStr:Ljava/lang/String;

.field final synthetic val$listener:Lcom/alibaba/ailabs/appbox/common/install/OnInstallListener;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/alibaba/ailabs/appbox/common/install/OnInstallListener;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/common/installunder9/InstallUnder9$1;->val$fileStr:Ljava/lang/String;

    iput-object p2, p0, Lcom/alibaba/ailabs/appbox/common/installunder9/InstallUnder9$1;->val$listener:Lcom/alibaba/ailabs/appbox/common/install/OnInstallListener;

    invoke-direct {p0}, Landroid/content/pm/IPackageInstallObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public packageInstalled(Ljava/lang/String;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " has installed. --> path=="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/common/installunder9/InstallUnder9$1;->val$fileStr:Ljava/lang/String;

    invoke-static {v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InstallUnder9"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " has installed. packageName is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " has installed. code is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "null"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/common/installunder9/InstallUnder9$1;->val$listener:Lcom/alibaba/ailabs/appbox/common/install/OnInstallListener;

    if-eqz v0, :cond_1

    .line 49
    invoke-interface {v0, p1, p2}, Lcom/alibaba/ailabs/appbox/common/install/OnInstallListener;->onInstallSuccess(Ljava/lang/String;I)V

    goto :goto_0

    .line 53
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/common/installunder9/InstallUnder9$1;->val$listener:Lcom/alibaba/ailabs/appbox/common/install/OnInstallListener;

    if-eqz p1, :cond_1

    .line 54
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/common/installunder9/InstallUnder9$1;->val$fileStr:Ljava/lang/String;

    invoke-interface {p1, v0, p2}, Lcom/alibaba/ailabs/appbox/common/install/OnInstallListener;->onInstallFailed(Ljava/lang/String;I)V

    :cond_1
    :goto_0
    return-void
.end method
