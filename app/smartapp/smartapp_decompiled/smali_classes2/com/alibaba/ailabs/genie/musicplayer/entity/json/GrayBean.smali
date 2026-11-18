.class public Lcom/alibaba/ailabs/genie/musicplayer/entity/json/GrayBean;
.super Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;
.source "GrayBean.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/musicplayer/entity/json/GrayBean$ModelBean;
    }
.end annotation


# instance fields
.field private model:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/GrayBean$ModelBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getModel()Lcom/alibaba/ailabs/genie/musicplayer/entity/json/GrayBean$ModelBean;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/GrayBean;->model:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/GrayBean$ModelBean;

    return-object v0
.end method

.method public setModel(Lcom/alibaba/ailabs/genie/musicplayer/entity/json/GrayBean$ModelBean;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/GrayBean;->model:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/GrayBean$ModelBean;

    return-void
.end method
