.class public Lcom/alibaba/genie/shopping/mtop/response/TaobaoDetailGetdetailResponseData;
.super Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;
.source "TaobaoDetailGetdetailResponseData.java"


# instance fields
.field private data:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getModel()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/alibaba/genie/shopping/mtop/response/TaobaoDetailGetdetailResponseData;->data:Ljava/lang/String;

    return-object v0
.end method

.method public setModel(Ljava/lang/String;)Lcom/alibaba/genie/shopping/mtop/response/TaobaoDetailGetdetailResponseData;
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/alibaba/genie/shopping/mtop/response/TaobaoDetailGetdetailResponseData;->data:Ljava/lang/String;

    return-object p0
.end method
