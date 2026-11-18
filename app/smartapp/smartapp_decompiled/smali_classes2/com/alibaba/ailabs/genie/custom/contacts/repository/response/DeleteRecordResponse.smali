.class public Lcom/alibaba/ailabs/genie/custom/contacts/repository/response/DeleteRecordResponse;
.super Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;
.source "DeleteRecordResponse.java"


# instance fields
.field private model:I
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "model"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getModel()I
    .locals 1

    .line 11
    iget v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/repository/response/DeleteRecordResponse;->model:I

    return v0
.end method

.method public setModel(I)V
    .locals 0

    .line 15
    iput p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/repository/response/DeleteRecordResponse;->model:I

    return-void
.end method
