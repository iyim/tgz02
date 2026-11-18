.class public Lcom/alibaba/ailabs/genie/musicplayer/entity/json/SaveAccountBindBean;
.super Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;
.source "SaveAccountBindBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/musicplayer/entity/json/SaveAccountBindBean$ModelBean;
    }
.end annotation


# instance fields
.field private model:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/SaveAccountBindBean$ModelBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getModel()Lcom/alibaba/ailabs/genie/musicplayer/entity/json/SaveAccountBindBean$ModelBean;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/SaveAccountBindBean;->model:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/SaveAccountBindBean$ModelBean;

    return-object v0
.end method

.method public setModel(Lcom/alibaba/ailabs/genie/musicplayer/entity/json/SaveAccountBindBean$ModelBean;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/SaveAccountBindBean;->model:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/SaveAccountBindBean$ModelBean;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SaveAccountBindBean{model="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/SaveAccountBindBean;->model:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/SaveAccountBindBean$ModelBean;

    .line 65
    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/SaveAccountBindBean$ModelBean;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
