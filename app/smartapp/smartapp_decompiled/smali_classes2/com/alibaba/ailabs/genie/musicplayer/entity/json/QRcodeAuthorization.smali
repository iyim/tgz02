.class public Lcom/alibaba/ailabs/genie/musicplayer/entity/json/QRcodeAuthorization;
.super Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;
.source "QRcodeAuthorization.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/musicplayer/entity/json/QRcodeAuthorization$ModelBean;
    }
.end annotation


# instance fields
.field private model:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/QRcodeAuthorization$ModelBean;

.field private statusCode:Ljava/lang/String;


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
.method public getModel()Lcom/alibaba/ailabs/genie/musicplayer/entity/json/QRcodeAuthorization$ModelBean;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/QRcodeAuthorization;->model:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/QRcodeAuthorization$ModelBean;

    return-object v0
.end method

.method public getStatusCode()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/QRcodeAuthorization;->statusCode:Ljava/lang/String;

    return-object v0
.end method

.method public setModel(Lcom/alibaba/ailabs/genie/musicplayer/entity/json/QRcodeAuthorization$ModelBean;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/QRcodeAuthorization;->model:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/QRcodeAuthorization$ModelBean;

    return-void
.end method

.method public setStatusCode(Ljava/lang/String;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/QRcodeAuthorization;->statusCode:Ljava/lang/String;

    return-void
.end method
