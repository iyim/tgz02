.class public Lcom/alibaba/genie/alarm/request/GSRBaseRequestData;
.super Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;
.source "GSRBaseRequestData.java"


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation


# instance fields
.field private model:Lcom/alibaba/genie/alarm/request/GSRBaseModel;


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
.method public getModel()Lcom/alibaba/genie/alarm/request/GSRBaseModel;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/alibaba/genie/alarm/request/GSRBaseRequestData;->model:Lcom/alibaba/genie/alarm/request/GSRBaseModel;

    return-object v0
.end method

.method public setModel(Lcom/alibaba/genie/alarm/request/GSRBaseModel;)Lcom/alibaba/genie/alarm/request/GSRBaseRequestData;
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/alibaba/genie/alarm/request/GSRBaseRequestData;->model:Lcom/alibaba/genie/alarm/request/GSRBaseModel;

    return-object p0
.end method
