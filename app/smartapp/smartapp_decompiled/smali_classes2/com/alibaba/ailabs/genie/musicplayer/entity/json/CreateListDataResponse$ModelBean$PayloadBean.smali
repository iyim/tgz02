.class public Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CreateListDataResponse$ModelBean$PayloadBean;
.super Ljava/lang/Object;
.source "CreateListDataResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CreateListDataResponse$ModelBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PayloadBean"
.end annotation


# instance fields
.field private data:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;

.field private launchModel:Ljava/lang/String;

.field private packageName:Ljava/lang/String;

.field private pageType:Ljava/lang/String;

.field private uri:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getData()Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CreateListDataResponse$ModelBean$PayloadBean;->data:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;

    return-object v0
.end method

.method public getLaunchModel()Ljava/lang/String;
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CreateListDataResponse$ModelBean$PayloadBean;->launchModel:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CreateListDataResponse$ModelBean$PayloadBean;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPageType()Ljava/lang/String;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CreateListDataResponse$ModelBean$PayloadBean;->pageType:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CreateListDataResponse$ModelBean$PayloadBean;->uri:Ljava/lang/String;

    return-object v0
.end method

.method public setData(Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CreateListDataResponse$ModelBean$PayloadBean;->data:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;

    return-void
.end method

.method public setLaunchModel(Ljava/lang/String;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CreateListDataResponse$ModelBean$PayloadBean;->launchModel:Ljava/lang/String;

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CreateListDataResponse$ModelBean$PayloadBean;->packageName:Ljava/lang/String;

    return-void
.end method

.method public setPageType(Ljava/lang/String;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CreateListDataResponse$ModelBean$PayloadBean;->pageType:Ljava/lang/String;

    return-void
.end method

.method public setUri(Ljava/lang/String;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CreateListDataResponse$ModelBean$PayloadBean;->uri:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PayloadBean{pageType=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CreateListDataResponse$ModelBean$PayloadBean;->pageType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", packageName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CreateListDataResponse$ModelBean$PayloadBean;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", data="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CreateListDataResponse$ModelBean$PayloadBean;->data:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", uri=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CreateListDataResponse$ModelBean$PayloadBean;->uri:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", launchModel=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CreateListDataResponse$ModelBean$PayloadBean;->launchModel:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
