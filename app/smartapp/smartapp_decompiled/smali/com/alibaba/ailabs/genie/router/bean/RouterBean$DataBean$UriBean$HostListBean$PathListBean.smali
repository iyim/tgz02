.class public Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean$HostListBean$PathListBean;
.super Ljava/lang/Object;
.source "RouterBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean$HostListBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PathListBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean$HostListBean$PathListBean$NewConfig;
    }
.end annotation


# instance fields
.field private delay:I

.field private isNeedLoading:Z

.field private launchMode:I

.field public newurl:Ljava/lang/String;

.field private packageName:Ljava/lang/String;

.field private path:Ljava/lang/String;

.field private showProgress:Z

.field private versionCode:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean$HostListBean$PathListBean$NewConfig;",
            ">;"
        }
    .end annotation
.end field

.field private voiceParameter:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getDelay()I
    .locals 1

    .line 244
    iget v0, p0, Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean$HostListBean$PathListBean;->delay:I

    return v0
.end method

.method public getIsNeedLoading()Z
    .locals 1

    .line 252
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean$HostListBean$PathListBean;->isNeedLoading:Z

    return v0
.end method

.method public getLaunchMode()I
    .locals 1

    .line 275
    iget v0, p0, Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean$HostListBean$PathListBean;->launchMode:I

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 267
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean$HostListBean$PathListBean;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean$HostListBean$PathListBean;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getShowProgress()Z
    .locals 1

    .line 260
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean$HostListBean$PathListBean;->showProgress:Z

    return v0
.end method

.method public getVersionCode()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean$HostListBean$PathListBean$NewConfig;",
            ">;"
        }
    .end annotation

    .line 283
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean$HostListBean$PathListBean;->versionCode:Ljava/util/List;

    return-object v0
.end method

.method public getVoiceParameter()Ljava/lang/String;
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean$HostListBean$PathListBean;->voiceParameter:Ljava/lang/String;

    return-object v0
.end method

.method public setDelay(I)V
    .locals 0

    .line 248
    iput p1, p0, Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean$HostListBean$PathListBean;->delay:I

    return-void
.end method

.method public setIsNeedLoading(Z)V
    .locals 0

    .line 256
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean$HostListBean$PathListBean;->isNeedLoading:Z

    return-void
.end method

.method public setLaunchMode(I)V
    .locals 0

    .line 279
    iput p1, p0, Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean$HostListBean$PathListBean;->launchMode:I

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    .line 271
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean$HostListBean$PathListBean;->packageName:Ljava/lang/String;

    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0

    .line 240
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean$HostListBean$PathListBean;->path:Ljava/lang/String;

    return-void
.end method

.method public setShowProgress(Z)V
    .locals 0

    .line 264
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean$HostListBean$PathListBean;->showProgress:Z

    return-void
.end method

.method public setVersionCode(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean$HostListBean$PathListBean$NewConfig;",
            ">;)V"
        }
    .end annotation

    .line 287
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean$HostListBean$PathListBean;->versionCode:Ljava/util/List;

    return-void
.end method

.method public setVoiceParameter(Ljava/lang/String;)V
    .locals 0

    .line 232
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean$HostListBean$PathListBean;->voiceParameter:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 293
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PathListBean{newurl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean$HostListBean$PathListBean;->newurl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", path=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean$HostListBean$PathListBean;->path:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", delay="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean$HostListBean$PathListBean;->delay:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", isNeedLoading="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean$HostListBean$PathListBean;->isNeedLoading:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", showProgress="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean$HostListBean$PathListBean;->showProgress:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", launchMode="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean$HostListBean$PathListBean;->launchMode:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", packageName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean$HostListBean$PathListBean;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", voiceParameter=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean$HostListBean$PathListBean;->voiceParameter:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", versionCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean$HostListBean$PathListBean;->versionCode:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
