.class public Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CanReceiveCCBean;
.super Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;
.source "CanReceiveCCBean.java"


# instance fields
.field private code:I

.field private model:Z

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

    .line 26
    iget v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CanReceiveCCBean;->code:I

    return v0
.end method

.method public getStatusCode()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CanReceiveCCBean;->statusCode:Ljava/lang/String;

    return-object v0
.end method

.method public getTraceId()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CanReceiveCCBean;->traceId:Ljava/lang/String;

    return-object v0
.end method

.method public isModel()Z
    .locals 1

    .line 42
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CanReceiveCCBean;->model:Z

    return v0
.end method

.method public setCode(I)V
    .locals 0

    .line 30
    iput p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CanReceiveCCBean;->code:I

    return-void
.end method

.method public setModel(Z)V
    .locals 0

    .line 46
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CanReceiveCCBean;->model:Z

    return-void
.end method

.method public setStatusCode(Ljava/lang/String;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CanReceiveCCBean;->statusCode:Ljava/lang/String;

    return-void
.end method

.method public setTraceId(Ljava/lang/String;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CanReceiveCCBean;->traceId:Ljava/lang/String;

    return-void
.end method
