.class public Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CanReceiveRightByIdBean;
.super Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;
.source "CanReceiveRightByIdBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CanReceiveRightByIdBean$ModelBean;
    }
.end annotation


# instance fields
.field private code:I

.field private model:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CanReceiveRightByIdBean$ModelBean;

.field private statusCode:Ljava/lang/String;

.field private traceId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .line 27
    iget v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CanReceiveRightByIdBean;->code:I

    return v0
.end method

.method public getModel()Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CanReceiveRightByIdBean$ModelBean;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CanReceiveRightByIdBean;->model:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CanReceiveRightByIdBean$ModelBean;

    return-object v0
.end method

.method public getStatusCode()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CanReceiveRightByIdBean;->statusCode:Ljava/lang/String;

    return-object v0
.end method

.method public getTraceId()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CanReceiveRightByIdBean;->traceId:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(I)V
    .locals 0

    .line 31
    iput p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CanReceiveRightByIdBean;->code:I

    return-void
.end method

.method public setModel(Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CanReceiveRightByIdBean$ModelBean;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CanReceiveRightByIdBean;->model:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CanReceiveRightByIdBean$ModelBean;

    return-void
.end method

.method public setStatusCode(Ljava/lang/String;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CanReceiveRightByIdBean;->statusCode:Ljava/lang/String;

    return-void
.end method

.method public setTraceId(Ljava/lang/String;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CanReceiveRightByIdBean;->traceId:Ljava/lang/String;

    return-void
.end method
