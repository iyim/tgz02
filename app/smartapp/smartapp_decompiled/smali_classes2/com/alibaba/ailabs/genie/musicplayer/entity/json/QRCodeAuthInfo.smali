.class public Lcom/alibaba/ailabs/genie/musicplayer/entity/json/QRCodeAuthInfo;
.super Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;
.source "QRCodeAuthInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/musicplayer/entity/json/QRCodeAuthInfo$AuthInfo;
    }
.end annotation


# instance fields
.field private model:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/QRCodeAuthInfo$AuthInfo;


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
.method public getModel()Lcom/alibaba/ailabs/genie/musicplayer/entity/json/QRCodeAuthInfo$AuthInfo;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/QRCodeAuthInfo;->model:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/QRCodeAuthInfo$AuthInfo;

    return-object v0
.end method

.method public setModel(Lcom/alibaba/ailabs/genie/musicplayer/entity/json/QRCodeAuthInfo$AuthInfo;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/QRCodeAuthInfo;->model:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/QRCodeAuthInfo$AuthInfo;

    return-void
.end method
