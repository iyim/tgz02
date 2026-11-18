.class public Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListDbBean;
.super Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;
.source "ChildAppListDbBean.java"


# annotations
.annotation build Landroidx/room/Entity;
    tableName = "child_app_list"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static newBean(Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;)Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListDbBean;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 50
    :cond_0
    new-instance v0, Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListDbBean;

    invoke-direct {v0}, Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListDbBean;-><init>()V

    .line 51
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;->getAppid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListDbBean;->setAppid(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListDbBean;->setId(I)V

    .line 53
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;->getActionValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListDbBean;->setActionValue(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;->getAppName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListDbBean;->setAppName(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;->getAppVersionCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListDbBean;->setAppVersionCode(I)V

    .line 56
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;->getAppVersionName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListDbBean;->setAppVersionName(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;->getBusinessType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListDbBean;->setBusinessType(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;->getDeleteType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListDbBean;->setDeleteType(I)V

    .line 59
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;->getDownloadSize()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListDbBean;->setDownloadSize(I)V

    .line 60
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;->getDownloadUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListDbBean;->setDownloadUrl(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;->getFromType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListDbBean;->setFromType(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;->getIcon()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListDbBean;->setIcon(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;->getInstallSize()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListDbBean;->setInstallSize(I)V

    .line 64
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;->getIsOffline()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListDbBean;->setIsOffline(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListDbBean;->setPackageName(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 17
    instance-of v0, p1, Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListDbBean;

    if-eqz v0, :cond_0

    .line 18
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListDbBean;->appid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 19
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListDbBean;->appid:Ljava/lang/String;

    nop

    nop

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListDbBean;->getAppid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 22
    :cond_0
    invoke-super {p0, p1}, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ChildAppListDbBean{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListDbBean;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", appid=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListDbBean;->appid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", actionValue=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListDbBean;->actionValue:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", appName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListDbBean;->appName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", businessType=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListDbBean;->businessType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", appVersionCode="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListDbBean;->appVersionCode:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", appVersionName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListDbBean;->appVersionName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", downloadUrl=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListDbBean;->downloadUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", downloadSize="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListDbBean;->downloadSize:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", installSize="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListDbBean;->installSize:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", packageName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListDbBean;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", icon=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListDbBean;->icon:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", deleteType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListDbBean;->deleteType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", isOffline=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListDbBean;->isOffline:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", fromType=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListDbBean;->fromType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
