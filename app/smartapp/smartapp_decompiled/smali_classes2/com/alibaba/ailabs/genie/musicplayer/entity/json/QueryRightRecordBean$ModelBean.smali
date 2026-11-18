.class public Lcom/alibaba/ailabs/genie/musicplayer/entity/json/QueryRightRecordBean$ModelBean;
.super Ljava/lang/Object;
.source "QueryRightRecordBean.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/musicplayer/entity/json/QueryRightRecordBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ModelBean"
.end annotation


# instance fields
.field private appId:Ljava/lang/String;

.field private isBinding:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getAppId()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/QueryRightRecordBean$ModelBean;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public getIsBinding()Z
    .locals 1

    .line 75
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/QueryRightRecordBean$ModelBean;->isBinding:Z

    return v0
.end method

.method public isBinding()Z
    .locals 1

    .line 71
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/QueryRightRecordBean$ModelBean;->isBinding:Z

    return v0
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/QueryRightRecordBean$ModelBean;->appId:Ljava/lang/String;

    return-void
.end method

.method public setBinding(Z)V
    .locals 0

    .line 79
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/QueryRightRecordBean$ModelBean;->isBinding:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ModelBean{appId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/QueryRightRecordBean$ModelBean;->appId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", isBinding="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/QueryRightRecordBean$ModelBean;->isBinding:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
