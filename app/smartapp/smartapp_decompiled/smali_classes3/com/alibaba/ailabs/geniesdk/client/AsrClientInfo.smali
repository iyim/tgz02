.class public Lcom/alibaba/ailabs/geniesdk/client/AsrClientInfo;
.super Ljava/lang/Object;
.source "AsrClientInfo.java"


# instance fields
.field private className:Ljava/lang/String;

.field private isBackgroundService:Z

.field private isEnable:Z

.field private isShowUI:Z

.field private isWindowType:Z

.field private key:Ljava/lang/String;

.field private packageName:Ljava/lang/String;

.field private pkg:Ljava/lang/String;

.field private resultMode:I

.field private serverMode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/alibaba/ailabs/geniesdk/client/AsrClientInfo;->isShowUI:Z

    .line 9
    iput-boolean v0, p0, Lcom/alibaba/ailabs/geniesdk/client/AsrClientInfo;->isEnable:Z

    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/alibaba/ailabs/geniesdk/client/AsrClientInfo;->isBackgroundService:Z

    .line 11
    iput-boolean v0, p0, Lcom/alibaba/ailabs/geniesdk/client/AsrClientInfo;->isWindowType:Z

    return-void
.end method


# virtual methods
.method public getClassName()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/client/AsrClientInfo;->className:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/client/AsrClientInfo;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/client/AsrClientInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPkg()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/client/AsrClientInfo;->pkg:Ljava/lang/String;

    return-object v0
.end method

.method public getResultMode()I
    .locals 1

    .line 28
    iget v0, p0, Lcom/alibaba/ailabs/geniesdk/client/AsrClientInfo;->resultMode:I

    return v0
.end method

.method public getServerMode()I
    .locals 1

    .line 36
    iget v0, p0, Lcom/alibaba/ailabs/geniesdk/client/AsrClientInfo;->serverMode:I

    return v0
.end method

.method public isBackgroundService()Z
    .locals 1

    .line 52
    iget-boolean v0, p0, Lcom/alibaba/ailabs/geniesdk/client/AsrClientInfo;->isBackgroundService:Z

    return v0
.end method

.method public isEnable()Z
    .locals 1

    .line 44
    iget-boolean v0, p0, Lcom/alibaba/ailabs/geniesdk/client/AsrClientInfo;->isEnable:Z

    return v0
.end method

.method public isShowUI()Z
    .locals 1

    .line 20
    iget-boolean v0, p0, Lcom/alibaba/ailabs/geniesdk/client/AsrClientInfo;->isShowUI:Z

    return v0
.end method

.method public isWindowType()Z
    .locals 1

    .line 60
    iget-boolean v0, p0, Lcom/alibaba/ailabs/geniesdk/client/AsrClientInfo;->isWindowType:Z

    return v0
.end method

.method public setBackgroundService(Z)V
    .locals 0

    .line 56
    iput-boolean p1, p0, Lcom/alibaba/ailabs/geniesdk/client/AsrClientInfo;->isBackgroundService:Z

    return-void
.end method

.method public setClassName(Ljava/lang/String;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/alibaba/ailabs/geniesdk/client/AsrClientInfo;->className:Ljava/lang/String;

    return-void
.end method

.method public setEnable(Z)V
    .locals 0

    .line 48
    iput-boolean p1, p0, Lcom/alibaba/ailabs/geniesdk/client/AsrClientInfo;->isEnable:Z

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/alibaba/ailabs/geniesdk/client/AsrClientInfo;->packageName:Ljava/lang/String;

    return-void
.end method

.method public setPkg(Ljava/lang/String;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/alibaba/ailabs/geniesdk/client/AsrClientInfo;->pkg:Ljava/lang/String;

    return-void
.end method

.method public setResultMode(I)V
    .locals 0

    .line 32
    iput p1, p0, Lcom/alibaba/ailabs/geniesdk/client/AsrClientInfo;->resultMode:I

    return-void
.end method

.method public setServerMode(I)V
    .locals 0

    .line 40
    iput p1, p0, Lcom/alibaba/ailabs/geniesdk/client/AsrClientInfo;->serverMode:I

    return-void
.end method

.method public setShowUI(Z)V
    .locals 0

    .line 24
    iput-boolean p1, p0, Lcom/alibaba/ailabs/geniesdk/client/AsrClientInfo;->isShowUI:Z

    return-void
.end method

.method public setWindowType(Z)V
    .locals 0

    .line 64
    iput-boolean p1, p0, Lcom/alibaba/ailabs/geniesdk/client/AsrClientInfo;->isWindowType:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AsrClientinfo{isShowUI="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/alibaba/ailabs/geniesdk/client/AsrClientInfo;->isShowUI:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", resultMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alibaba/ailabs/geniesdk/client/AsrClientInfo;->resultMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", serverMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alibaba/ailabs/geniesdk/client/AsrClientInfo;->serverMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isEnable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/alibaba/ailabs/geniesdk/client/AsrClientInfo;->isEnable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isBackgroundService="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/alibaba/ailabs/geniesdk/client/AsrClientInfo;->isBackgroundService:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isWindowType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/alibaba/ailabs/geniesdk/client/AsrClientInfo;->isWindowType:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", packageName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/geniesdk/client/AsrClientInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", pkg=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/geniesdk/client/AsrClientInfo;->pkg:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", className=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/geniesdk/client/AsrClientInfo;->className:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateKey()V
    .locals 4

    .line 96
    invoke-virtual {p0}, Lcom/alibaba/ailabs/geniesdk/client/AsrClientInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 97
    invoke-virtual {p0}, Lcom/alibaba/ailabs/geniesdk/client/AsrClientInfo;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 98
    invoke-virtual {p0}, Lcom/alibaba/ailabs/geniesdk/client/AsrClientInfo;->getPkg()Ljava/lang/String;

    move-result-object v2

    .line 100
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 101
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/geniesdk/client/AsrClientInfo;->key:Ljava/lang/String;

    goto :goto_0

    .line 102
    :cond_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 103
    iput-object v2, p0, Lcom/alibaba/ailabs/geniesdk/client/AsrClientInfo;->key:Ljava/lang/String;

    goto :goto_0

    .line 105
    :cond_1
    iput-object v0, p0, Lcom/alibaba/ailabs/geniesdk/client/AsrClientInfo;->key:Ljava/lang/String;

    :goto_0
    return-void
.end method
