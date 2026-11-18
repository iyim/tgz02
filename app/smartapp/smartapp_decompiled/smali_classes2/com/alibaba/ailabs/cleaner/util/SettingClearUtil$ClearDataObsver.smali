.class Lcom/alibaba/ailabs/cleaner/util/SettingClearUtil$ClearDataObsver;
.super Landroid/content/pm/IPackageDataObserver$Stub;
.source "SettingClearUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/cleaner/util/SettingClearUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ClearDataObsver"
.end annotation


# instance fields
.field onClearCallback:Lcom/alibaba/ailabs/cleaner/util/SettingClearUtil$OnClearCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 197
    invoke-direct {p0}, Landroid/content/pm/IPackageDataObserver$Stub;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Lcom/alibaba/ailabs/cleaner/util/SettingClearUtil$OnClearCallback;)V
    .locals 0

    .line 200
    invoke-direct {p0}, Landroid/content/pm/IPackageDataObserver$Stub;-><init>()V

    .line 201
    iput-object p1, p0, Lcom/alibaba/ailabs/cleaner/util/SettingClearUtil$ClearDataObsver;->onClearCallback:Lcom/alibaba/ailabs/cleaner/util/SettingClearUtil$OnClearCallback;

    return-void
.end method


# virtual methods
.method public onRemoveCompleted(Ljava/lang/String;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRemoveCompleted "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " result -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SettingClearUtil-l"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finish... "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " cache = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    invoke-static {}, Lcom/alibaba/ailabs/appbox/BoxApplication;->getInstance()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/alibaba/ailabs/appbox/utils/AppUtil;->getAppSizeByPkgName(Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/ailabs/appbox/bean/AppSizeInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/ailabs/appbox/bean/AppSizeInfo;->getCahcePrintSize()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " --> "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    invoke-static {}, Lcom/alibaba/ailabs/appbox/BoxApplication;->getInstance()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/alibaba/ailabs/appbox/utils/AppUtil;->getAppSizeByPkgName(Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/ailabs/appbox/bean/AppSizeInfo;

    move-result-object v2

    iget-wide v2, v2, Lcom/alibaba/ailabs/appbox/bean/AppSizeInfo;->cacheBytes:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 207
    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    iget-object v0, p0, Lcom/alibaba/ailabs/cleaner/util/SettingClearUtil$ClearDataObsver;->onClearCallback:Lcom/alibaba/ailabs/cleaner/util/SettingClearUtil$OnClearCallback;

    if-eqz v0, :cond_0

    .line 211
    invoke-interface {v0, p1, p2}, Lcom/alibaba/ailabs/cleaner/util/SettingClearUtil$OnClearCallback;->onClearFinish(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method
