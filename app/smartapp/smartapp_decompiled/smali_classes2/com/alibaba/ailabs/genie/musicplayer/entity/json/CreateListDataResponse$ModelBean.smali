.class public Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CreateListDataResponse$ModelBean;
.super Ljava/lang/Object;
.source "CreateListDataResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CreateListDataResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ModelBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CreateListDataResponse$ModelBean$PayloadBean;
    }
.end annotation


# instance fields
.field private name:Ljava/lang/String;

.field private namespace:Ljava/lang/String;

.field private payload:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CreateListDataResponse$ModelBean$PayloadBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CreateListDataResponse$ModelBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CreateListDataResponse$ModelBean;->namespace:Ljava/lang/String;

    return-object v0
.end method

.method public getPayload()Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CreateListDataResponse$ModelBean$PayloadBean;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CreateListDataResponse$ModelBean;->payload:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CreateListDataResponse$ModelBean$PayloadBean;

    return-object v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CreateListDataResponse$ModelBean;->name:Ljava/lang/String;

    return-void
.end method

.method public setNamespace(Ljava/lang/String;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CreateListDataResponse$ModelBean;->namespace:Ljava/lang/String;

    return-void
.end method

.method public setPayload(Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CreateListDataResponse$ModelBean$PayloadBean;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CreateListDataResponse$ModelBean;->payload:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CreateListDataResponse$ModelBean$PayloadBean;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ModelBean{namespace=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CreateListDataResponse$ModelBean;->namespace:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", name=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CreateListDataResponse$ModelBean;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", payload="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CreateListDataResponse$ModelBean;->payload:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CreateListDataResponse$ModelBean$PayloadBean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
