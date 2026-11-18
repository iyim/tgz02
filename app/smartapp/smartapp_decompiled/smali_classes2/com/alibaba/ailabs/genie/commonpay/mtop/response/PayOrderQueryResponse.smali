.class public Lcom/alibaba/ailabs/genie/commonpay/mtop/response/PayOrderQueryResponse;
.super Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;
.source "PayOrderQueryResponse.java"


# instance fields
.field private model:Lcom/alibaba/ailabs/genie/commonpay/mtop/response/PayOrderQueryResponseData;


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
.method public getModel()Lcom/alibaba/ailabs/genie/commonpay/mtop/response/PayOrderQueryResponseData;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/commonpay/mtop/response/PayOrderQueryResponse;->model:Lcom/alibaba/ailabs/genie/commonpay/mtop/response/PayOrderQueryResponseData;

    return-object v0
.end method

.method public setModel(Lcom/alibaba/ailabs/genie/commonpay/mtop/response/PayOrderQueryResponseData;)Lcom/alibaba/ailabs/genie/commonpay/mtop/response/PayOrderQueryResponse;
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/commonpay/mtop/response/PayOrderQueryResponse;->model:Lcom/alibaba/ailabs/genie/commonpay/mtop/response/PayOrderQueryResponseData;

    return-object p0
.end method
