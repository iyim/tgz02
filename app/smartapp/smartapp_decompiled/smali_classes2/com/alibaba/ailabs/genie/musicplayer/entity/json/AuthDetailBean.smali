.class public Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AuthDetailBean;
.super Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;
.source "AuthDetailBean.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AuthDetailBean$ProtocolContractsBean;,
        Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AuthDetailBean$ProtocolBean;,
        Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AuthDetailBean$AuthDetail;
    }
.end annotation


# instance fields
.field private model:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AuthDetailBean$AuthDetail;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getModel()Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AuthDetailBean$AuthDetail;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AuthDetailBean;->model:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AuthDetailBean$AuthDetail;

    return-object v0
.end method

.method public setModel(Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AuthDetailBean$AuthDetail;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AuthDetailBean;->model:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AuthDetailBean$AuthDetail;

    return-void
.end method
