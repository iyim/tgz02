.class public Lcom/alibaba/ailabs/genie/musicplayer/entity/json/UserInfoResponse;
.super Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;
.source "UserInfoResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/musicplayer/entity/json/UserInfoResponse$ModelBean;
    }
.end annotation


# instance fields
.field private model:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/UserInfoResponse$ModelBean;

.field private statusCode:Ljava/lang/String;


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
.method public getModel()Lcom/alibaba/ailabs/genie/musicplayer/entity/json/UserInfoResponse$ModelBean;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/UserInfoResponse;->model:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/UserInfoResponse$ModelBean;

    return-object v0
.end method

.method public getStatusCode()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/UserInfoResponse;->statusCode:Ljava/lang/String;

    return-object v0
.end method

.method public setModel(Lcom/alibaba/ailabs/genie/musicplayer/entity/json/UserInfoResponse$ModelBean;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/UserInfoResponse;->model:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/UserInfoResponse$ModelBean;

    return-void
.end method

.method public setStatusCode(Ljava/lang/String;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/UserInfoResponse;->statusCode:Ljava/lang/String;

    return-void
.end method
