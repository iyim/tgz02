.class public Lcom/alibaba/ailabs/genie/pay/mtop/response/PayOrderQueryResponseData;
.super Ljava/lang/Object;
.source "PayOrderQueryResponseData.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private mOrderCurrentProgress:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "orderCurrentProgress"
    .end annotation
.end field

.field private mOrderCurrentProgressFailMsg:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "failMsg"
    .end annotation
.end field

.field private mOrderCurrentProgressSuccess:Z
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "success"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getmOrderCurrentProgress()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/pay/mtop/response/PayOrderQueryResponseData;->mOrderCurrentProgress:Ljava/lang/String;

    return-object v0
.end method

.method public getmOrderCurrentProgressFailMsg()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/pay/mtop/response/PayOrderQueryResponseData;->mOrderCurrentProgressFailMsg:Ljava/lang/String;

    return-object v0
.end method

.method public ismOrderCurrentProgressSuccess()Z
    .locals 1

    .line 29
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/pay/mtop/response/PayOrderQueryResponseData;->mOrderCurrentProgressSuccess:Z

    return v0
.end method

.method public setmOrderCurrentProgress(Ljava/lang/String;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/pay/mtop/response/PayOrderQueryResponseData;->mOrderCurrentProgress:Ljava/lang/String;

    return-void
.end method

.method public setmOrderCurrentProgressFailMsg(Ljava/lang/String;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/pay/mtop/response/PayOrderQueryResponseData;->mOrderCurrentProgressFailMsg:Ljava/lang/String;

    return-void
.end method

.method public setmOrderCurrentProgressSuccess(Z)V
    .locals 0

    .line 33
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/pay/mtop/response/PayOrderQueryResponseData;->mOrderCurrentProgressSuccess:Z

    return-void
.end method
