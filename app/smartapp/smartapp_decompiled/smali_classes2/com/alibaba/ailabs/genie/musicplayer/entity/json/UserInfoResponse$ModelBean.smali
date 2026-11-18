.class public Lcom/alibaba/ailabs/genie/musicplayer/entity/json/UserInfoResponse$ModelBean;
.super Ljava/lang/Object;
.source "UserInfoResponse.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/musicplayer/entity/json/UserInfoResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ModelBean"
.end annotation


# instance fields
.field private autoRenew:Ljava/lang/Object;

.field private isBinding:Z

.field private isVip:Z

.field private lifeLongVip:Z

.field private nickName:Ljava/lang/String;

.field private picUri:Ljava/lang/String;

.field private rawId:Ljava/lang/Object;

.field private strVipExpire:Ljava/lang/String;

.field private tbUserId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getAutoRenew()Ljava/lang/Object;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/UserInfoResponse$ModelBean;->autoRenew:Ljava/lang/Object;

    return-object v0
.end method

.method public getIsBinding()Z
    .locals 1

    .line 85
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/UserInfoResponse$ModelBean;->isBinding:Z

    return v0
.end method

.method public getNickName()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/UserInfoResponse$ModelBean;->nickName:Ljava/lang/String;

    return-object v0
.end method

.method public getPicUri()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/UserInfoResponse$ModelBean;->picUri:Ljava/lang/String;

    return-object v0
.end method

.method public getRawId()Ljava/lang/Object;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/UserInfoResponse$ModelBean;->rawId:Ljava/lang/Object;

    return-object v0
.end method

.method public getStrVipExpire()Ljava/lang/String;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/UserInfoResponse$ModelBean;->strVipExpire:Ljava/lang/String;

    return-object v0
.end method

.method public getTbUserId()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/UserInfoResponse$ModelBean;->tbUserId:Ljava/lang/String;

    return-object v0
.end method

.method public isIsVip()Z
    .locals 1

    .line 101
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/UserInfoResponse$ModelBean;->isVip:Z

    return v0
.end method

.method public isLifeLongVip()Z
    .locals 1

    .line 93
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/UserInfoResponse$ModelBean;->lifeLongVip:Z

    return v0
.end method

.method public setAutoRenew(Ljava/lang/Object;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/UserInfoResponse$ModelBean;->autoRenew:Ljava/lang/Object;

    return-void
.end method

.method public setIsBinding(Z)V
    .locals 0

    .line 89
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/UserInfoResponse$ModelBean;->isBinding:Z

    return-void
.end method

.method public setIsVip(Z)V
    .locals 0

    .line 105
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/UserInfoResponse$ModelBean;->isVip:Z

    return-void
.end method

.method public setLifeLongVip(Z)V
    .locals 0

    .line 97
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/UserInfoResponse$ModelBean;->lifeLongVip:Z

    return-void
.end method

.method public setNickName(Ljava/lang/String;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/UserInfoResponse$ModelBean;->nickName:Ljava/lang/String;

    return-void
.end method

.method public setPicUri(Ljava/lang/String;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/UserInfoResponse$ModelBean;->picUri:Ljava/lang/String;

    return-void
.end method

.method public setRawId(Ljava/lang/Object;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/UserInfoResponse$ModelBean;->rawId:Ljava/lang/Object;

    return-void
.end method

.method public setStrVipExpire(Ljava/lang/String;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/UserInfoResponse$ModelBean;->strVipExpire:Ljava/lang/String;

    return-void
.end method

.method public setTbUserId(Ljava/lang/String;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/UserInfoResponse$ModelBean;->tbUserId:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ModelBean{nickName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/UserInfoResponse$ModelBean;->nickName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", picUri=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/UserInfoResponse$ModelBean;->picUri:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", tbUserId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/UserInfoResponse$ModelBean;->tbUserId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", isBinding="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/UserInfoResponse$ModelBean;->isBinding:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", lifeLongVip="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/UserInfoResponse$ModelBean;->lifeLongVip:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isVip="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/UserInfoResponse$ModelBean;->isVip:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", strVipExpire=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/UserInfoResponse$ModelBean;->strVipExpire:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", autoRenew="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/UserInfoResponse$ModelBean;->autoRenew:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", rawId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/UserInfoResponse$ModelBean;->rawId:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
