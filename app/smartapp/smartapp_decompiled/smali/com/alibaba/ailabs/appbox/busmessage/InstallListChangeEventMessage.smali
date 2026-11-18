.class public Lcom/alibaba/ailabs/appbox/busmessage/InstallListChangeEventMessage;
.super Ljava/lang/Object;
.source "InstallListChangeEventMessage.java"


# instance fields
.field private bean:Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;

.field private isInDefaultList:Z

.field private type:I


# direct methods
.method public constructor <init>(ILcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;)V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lcom/alibaba/ailabs/appbox/busmessage/InstallListChangeEventMessage;->isInDefaultList:Z

    .line 19
    iput p1, p0, Lcom/alibaba/ailabs/appbox/busmessage/InstallListChangeEventMessage;->type:I

    .line 20
    iput-object p2, p0, Lcom/alibaba/ailabs/appbox/busmessage/InstallListChangeEventMessage;->bean:Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;

    return-void
.end method


# virtual methods
.method public getBean()Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/busmessage/InstallListChangeEventMessage;->bean:Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 24
    iget v0, p0, Lcom/alibaba/ailabs/appbox/busmessage/InstallListChangeEventMessage;->type:I

    return v0
.end method

.method public isInDefaultList()Z
    .locals 1

    .line 32
    iget-boolean v0, p0, Lcom/alibaba/ailabs/appbox/busmessage/InstallListChangeEventMessage;->isInDefaultList:Z

    return v0
.end method

.method public isInstall()Z
    .locals 2

    .line 48
    iget v0, p0, Lcom/alibaba/ailabs/appbox/busmessage/InstallListChangeEventMessage;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public setBean(Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/busmessage/InstallListChangeEventMessage;->bean:Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;

    return-void
.end method

.method public setInDefaultList(Z)V
    .locals 0

    .line 36
    iput-boolean p1, p0, Lcom/alibaba/ailabs/appbox/busmessage/InstallListChangeEventMessage;->isInDefaultList:Z

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 28
    iput p1, p0, Lcom/alibaba/ailabs/appbox/busmessage/InstallListChangeEventMessage;->type:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InstallListChangeEventMessage{type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alibaba/ailabs/appbox/busmessage/InstallListChangeEventMessage;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bean="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/busmessage/InstallListChangeEventMessage;->bean:Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isInDefaultList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/alibaba/ailabs/appbox/busmessage/InstallListChangeEventMessage;->isInDefaultList:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
