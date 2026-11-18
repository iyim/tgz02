.class public Lcom/alibaba/ailabs/genie/router/bean/RouterBean;
.super Ljava/lang/Object;
.source "RouterBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean;
    }
.end annotation


# instance fields
.field private loadingPageData:Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean;

.field private routerNoIpcUriList:Ljava/lang/String;

.field private routerUploadOpenDataBlackList:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getLoadingPageData()Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/router/bean/RouterBean;->loadingPageData:Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean;

    return-object v0
.end method

.method public getRouterNoIpcUriList()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/router/bean/RouterBean;->routerNoIpcUriList:Ljava/lang/String;

    return-object v0
.end method

.method public getRouterUploadOpenDataBlackList()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/router/bean/RouterBean;->routerUploadOpenDataBlackList:Ljava/lang/String;

    return-object v0
.end method

.method public setLoadingPageData(Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/router/bean/RouterBean;->loadingPageData:Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean;

    return-void
.end method

.method public setRouterNoIpcUriList(Ljava/lang/String;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/router/bean/RouterBean;->routerNoIpcUriList:Ljava/lang/String;

    return-void
.end method

.method public setRouterUploadOpenDataBlackList(Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/router/bean/RouterBean;->routerUploadOpenDataBlackList:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 335
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RouterBean{loadingPageData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/router/bean/RouterBean;->loadingPageData:Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean;

    if-eqz v1, :cond_0

    .line 336
    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "null"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", routerUploadOpenDataBlackList=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/router/bean/RouterBean;->routerUploadOpenDataBlackList:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
