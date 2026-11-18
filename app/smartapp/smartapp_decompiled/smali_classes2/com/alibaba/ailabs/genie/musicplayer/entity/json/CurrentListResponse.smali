.class public Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CurrentListResponse;
.super Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;
.source "CurrentListResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CurrentListResponse$ModelBean;,
        Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CurrentListResponse$Model;
    }
.end annotation


# instance fields
.field private model:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CurrentListResponse$Model;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getModel()Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CurrentListResponse$Model;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CurrentListResponse;->model:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CurrentListResponse$Model;

    return-object v0
.end method

.method public setModel(Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CurrentListResponse$Model;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CurrentListResponse;->model:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CurrentListResponse$Model;

    return-void
.end method
