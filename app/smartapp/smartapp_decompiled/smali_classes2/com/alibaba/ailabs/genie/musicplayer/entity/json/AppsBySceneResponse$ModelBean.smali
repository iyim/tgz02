.class public Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$ModelBean;
.super Ljava/lang/Object;
.source "AppsBySceneResponse.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ModelBean"
.end annotation


# instance fields
.field private accountInterChange:Z

.field private appId:Ljava/lang/String;

.field private bindBackGroundUrl:Ljava/lang/String;

.field private extension:Ljava/lang/String;

.field private iconUrl:Ljava/lang/String;

.field private isAuthorized:Z

.field private isVip:Z

.field private name:Ljava/lang/String;

.field private needBindDevice:Z

.field private openPlatFormId:Ljava/lang/String;

.field private order:I

.field private scence:Ljava/lang/Object;

.field private src:Ljava/lang/String;

.field private strVipExpire:Ljava/lang/String;

.field private thirdNick:Ljava/lang/Object;

.field private vipExpireAt:Ljava/lang/String;

.field private vipSell:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getAppId()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$ModelBean;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public getBindBackGroundUrl()Ljava/lang/String;
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$ModelBean;->bindBackGroundUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getExtension()Ljava/lang/String;
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$ModelBean;->extension:Ljava/lang/String;

    return-object v0
.end method

.method public getIconUrl()Ljava/lang/String;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$ModelBean;->iconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$ModelBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOpenPlatFormId()Ljava/lang/String;
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$ModelBean;->openPlatFormId:Ljava/lang/String;

    return-object v0
.end method

.method public getOrder()I
    .locals 1

    .line 174
    iget v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$ModelBean;->order:I

    return v0
.end method

.method public getScence()Ljava/lang/Object;
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$ModelBean;->scence:Ljava/lang/Object;

    return-object v0
.end method

.method public getSrc()Ljava/lang/String;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$ModelBean;->src:Ljava/lang/String;

    return-object v0
.end method

.method public getStrVipExpire()Ljava/lang/String;
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$ModelBean;->strVipExpire:Ljava/lang/String;

    return-object v0
.end method

.method public getThirdNick()Ljava/lang/Object;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$ModelBean;->thirdNick:Ljava/lang/Object;

    return-object v0
.end method

.method public getVipExpireAt()Ljava/lang/String;
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$ModelBean;->vipExpireAt:Ljava/lang/String;

    return-object v0
.end method

.method public getVipSell()Ljava/lang/Object;
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$ModelBean;->vipSell:Ljava/lang/Object;

    return-object v0
.end method

.method public isAccountInterChange()Z
    .locals 1

    .line 118
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$ModelBean;->accountInterChange:Z

    return v0
.end method

.method public isIsAuthorized()Z
    .locals 1

    .line 134
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$ModelBean;->isAuthorized:Z

    return v0
.end method

.method public isIsVip()Z
    .locals 1

    .line 198
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$ModelBean;->isVip:Z

    return v0
.end method

.method public isNeedBindDevice()Z
    .locals 1

    .line 190
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$ModelBean;->needBindDevice:Z

    return v0
.end method

.method public setAccountInterChange(Z)V
    .locals 0

    .line 122
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$ModelBean;->accountInterChange:Z

    return-void
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$ModelBean;->appId:Ljava/lang/String;

    return-void
.end method

.method public setBindBackGroundUrl(Ljava/lang/String;)V
    .locals 0

    .line 186
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$ModelBean;->bindBackGroundUrl:Ljava/lang/String;

    return-void
.end method

.method public setExtension(Ljava/lang/String;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$ModelBean;->extension:Ljava/lang/String;

    return-void
.end method

.method public setIconUrl(Ljava/lang/String;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$ModelBean;->iconUrl:Ljava/lang/String;

    return-void
.end method

.method public setIsAuthorized(Z)V
    .locals 0

    .line 138
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$ModelBean;->isAuthorized:Z

    return-void
.end method

.method public setIsVip(Z)V
    .locals 0

    .line 202
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$ModelBean;->isVip:Z

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$ModelBean;->name:Ljava/lang/String;

    return-void
.end method

.method public setNeedBindDevice(Z)V
    .locals 0

    .line 194
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$ModelBean;->needBindDevice:Z

    return-void
.end method

.method public setOpenPlatFormId(Ljava/lang/String;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$ModelBean;->openPlatFormId:Ljava/lang/String;

    return-void
.end method

.method public setOrder(I)V
    .locals 0

    .line 178
    iput p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$ModelBean;->order:I

    return-void
.end method

.method public setScence(Ljava/lang/Object;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$ModelBean;->scence:Ljava/lang/Object;

    return-void
.end method

.method public setSrc(Ljava/lang/String;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$ModelBean;->src:Ljava/lang/String;

    return-void
.end method

.method public setStrVipExpire(Ljava/lang/String;)V
    .locals 0

    .line 218
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$ModelBean;->strVipExpire:Ljava/lang/String;

    return-void
.end method

.method public setThirdNick(Ljava/lang/Object;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$ModelBean;->thirdNick:Ljava/lang/Object;

    return-void
.end method

.method public setVipExpireAt(Ljava/lang/String;)V
    .locals 0

    .line 210
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$ModelBean;->vipExpireAt:Ljava/lang/String;

    return-void
.end method

.method public setVipSell(Ljava/lang/Object;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$ModelBean;->vipSell:Ljava/lang/Object;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ModelBean{appId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$ModelBean;->appId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", name=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$ModelBean;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", src=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$ModelBean;->src:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", thirdNick="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$ModelBean;->thirdNick:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", isAuthorized="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$ModelBean;->isAuthorized:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", vipExpireAt=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$ModelBean;->vipExpireAt:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", strVipExpire=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$ModelBean;->strVipExpire:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
