.class public Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;
.super Ljava/lang/Object;
.source "ApplistDbBean.java"


# annotations
.annotation build Landroidx/room/Entity;
    tableName = "applist"
.end annotation


# instance fields
.field protected actionValue:Ljava/lang/String;

.field protected appName:Ljava/lang/String;

.field protected appVersionCode:I

.field protected appVersionName:Ljava/lang/String;

.field protected appid:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/room/PrimaryKey;
    .end annotation
.end field

.field protected businessType:Ljava/lang/String;

.field protected deleteType:I

.field protected downloadSize:I

.field protected downloadUrl:Ljava/lang/String;

.field protected fromType:Ljava/lang/String;

.field protected icon:Ljava/lang/String;

.field protected id:I

.field protected installSize:I

.field protected isOffline:Ljava/lang/String;

.field protected packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 202
    instance-of v0, p1, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;->appid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;->appid:Ljava/lang/String;

    nop

    nop

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;->getAppid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 207
    :cond_0
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getActionValue()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;->actionValue:Ljava/lang/String;

    return-object v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public getAppVersionCode()I
    .locals 1

    .line 103
    iget v0, p0, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;->appVersionCode:I

    return v0
.end method

.method public getAppVersionName()Ljava/lang/String;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;->appVersionName:Ljava/lang/String;

    return-object v0
.end method

.method public getAppid()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;->appid:Ljava/lang/String;

    return-object v0
.end method

.method public getBusinessType()Ljava/lang/String;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;->businessType:Ljava/lang/String;

    return-object v0
.end method

.method public getDeleteType()I
    .locals 1

    .line 127
    iget v0, p0, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;->deleteType:I

    return v0
.end method

.method public getDownloadSize()I
    .locals 1

    .line 156
    iget v0, p0, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;->downloadSize:I

    return v0
.end method

.method public getDownloadUrl()Ljava/lang/String;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;->downloadUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getFromType()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;->fromType:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Ljava/lang/String;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;->icon:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 55
    iget v0, p0, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;->id:I

    return v0
.end method

.method public getInstallSize()I
    .locals 1

    .line 152
    iget v0, p0, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;->installSize:I

    return v0
.end method

.method public getIsOffline()Ljava/lang/String;
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;->isOffline:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;->appid:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public setActionValue(Ljava/lang/String;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;->actionValue:Ljava/lang/String;

    return-void
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;->appName:Ljava/lang/String;

    return-void
.end method

.method public setAppVersionCode(I)V
    .locals 0

    .line 107
    iput p1, p0, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;->appVersionCode:I

    return-void
.end method

.method public setAppVersionName(Ljava/lang/String;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;->appVersionName:Ljava/lang/String;

    return-void
.end method

.method public setAppid(Ljava/lang/String;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;->appid:Ljava/lang/String;

    return-void
.end method

.method public setBusinessType(Ljava/lang/String;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;->businessType:Ljava/lang/String;

    return-void
.end method

.method public setDeleteType(I)V
    .locals 0

    .line 131
    iput p1, p0, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;->deleteType:I

    return-void
.end method

.method public setDownloadSize(I)V
    .locals 0

    .line 160
    iput p1, p0, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;->downloadSize:I

    return-void
.end method

.method public setDownloadUrl(Ljava/lang/String;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;->downloadUrl:Ljava/lang/String;

    return-void
.end method

.method public setFromType(Ljava/lang/String;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;->fromType:Ljava/lang/String;

    return-void
.end method

.method public setIcon(Ljava/lang/String;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;->icon:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 67
    iput p1, p0, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;->id:I

    return-void
.end method

.method public setInstallSize(I)V
    .locals 0

    .line 148
    iput p1, p0, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;->installSize:I

    return-void
.end method

.method public setIsOffline(Ljava/lang/String;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;->isOffline:Ljava/lang/String;

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;->packageName:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ApplistDbBean{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", appid=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;->appid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", actionValue=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;->actionValue:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", appName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;->appName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", businessType=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;->businessType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", appVersionCode="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;->appVersionCode:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", appVersionName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;->appVersionName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", downloadUrl=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;->downloadUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", downloadSize="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;->downloadSize:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", installSize="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;->installSize:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", packageName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", icon=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;->icon:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", deleteType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;->deleteType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", isOffline=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;->isOffline:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", fromType=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;->fromType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
