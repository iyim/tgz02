.class public Lcom/alibaba/ailabs/genie/commonpay/mtop/response/PayOrderCreateResponse;
.super Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;
.source "PayOrderCreateResponse.java"


# instance fields
.field private model:Lcom/alibaba/ailabs/genie/commonpay/mtop/response/PayOrderCreateResponseData;


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
.method public getModel()Lcom/alibaba/ailabs/genie/commonpay/mtop/response/PayOrderCreateResponseData;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/commonpay/mtop/response/PayOrderCreateResponse;->model:Lcom/alibaba/ailabs/genie/commonpay/mtop/response/PayOrderCreateResponseData;

    return-object v0
.end method

.method public setModel(Lcom/alibaba/ailabs/genie/commonpay/mtop/response/PayOrderCreateResponseData;)Lcom/alibaba/ailabs/genie/commonpay/mtop/response/PayOrderCreateResponse;
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/commonpay/mtop/response/PayOrderCreateResponse;->model:Lcom/alibaba/ailabs/genie/commonpay/mtop/response/PayOrderCreateResponseData;

    return-object p0
.end method
