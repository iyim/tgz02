.class public Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean$HostListBean$PathListBean$NewConfig$Newpath;
.super Ljava/lang/Object;
.source "RouterBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean$HostListBean$PathListBean$NewConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Newpath"
.end annotation


# instance fields
.field private delay:I

.field private isNeedLoading:Z

.field private launchMode:I

.field private packageName:Ljava/lang/String;

.field private showProgress:Z

.field private url:Ljava/lang/String;

.field private voiceParameter:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getDelay()I
    .locals 1

    .line 141
    iget v0, p0, Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean$HostListBean$PathListBean$NewConfig$Newpath;->delay:I

    return v0
.end method

.method public getLaunchMode()I
    .locals 1

    .line 165
    iget v0, p0, Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean$HostListBean$PathListBean$NewConfig$Newpath;->launchMode:I

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean$HostListBean$PathListBean$NewConfig$Newpath;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean$HostListBean$PathListBean$NewConfig$Newpath;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getVoiceParameter()Ljava/lang/String;
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean$HostListBean$PathListBean$NewConfig$Newpath;->voiceParameter:Ljava/lang/String;

    return-object v0
.end method

.method public isNeedLoading()Z
    .locals 1

    .line 149
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean$HostListBean$PathListBean$NewConfig$Newpath;->isNeedLoading:Z

    return v0
.end method

.method public isShowProgress()Z
    .locals 1

    .line 157
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean$HostListBean$PathListBean$NewConfig$Newpath;->showProgress:Z

    return v0
.end method

.method public setDelay(I)V
    .locals 0

    .line 145
    iput p1, p0, Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean$HostListBean$PathListBean$NewConfig$Newpath;->delay:I

    return-void
.end method

.method public setLaunchMode(I)V
    .locals 0

    .line 169
    iput p1, p0, Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean$HostListBean$PathListBean$NewConfig$Newpath;->launchMode:I

    return-void
.end method

.method public setNeedLoading(Z)V
    .locals 0

    .line 153
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean$HostListBean$PathListBean$NewConfig$Newpath;->isNeedLoading:Z

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean$HostListBean$PathListBean$NewConfig$Newpath;->packageName:Ljava/lang/String;

    return-void
.end method

.method public setShowProgress(Z)V
    .locals 0

    .line 161
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean$HostListBean$PathListBean$NewConfig$Newpath;->showProgress:Z

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean$HostListBean$PathListBean$NewConfig$Newpath;->url:Ljava/lang/String;

    return-void
.end method

.method public setVoiceParameter(Ljava/lang/String;)V
    .locals 0

    .line 185
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean$HostListBean$PathListBean$NewConfig$Newpath;->voiceParameter:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Newpath{url=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean$HostListBean$PathListBean$NewConfig$Newpath;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", delay="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean$HostListBean$PathListBean$NewConfig$Newpath;->delay:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", isNeedLoading="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean$HostListBean$PathListBean$NewConfig$Newpath;->isNeedLoading:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", showProgress="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean$HostListBean$PathListBean$NewConfig$Newpath;->showProgress:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", launchMode="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean$HostListBean$PathListBean$NewConfig$Newpath;->launchMode:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", packageName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean$HostListBean$PathListBean$NewConfig$Newpath;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", voiceParameter=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean$HostListBean$PathListBean$NewConfig$Newpath;->voiceParameter:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
