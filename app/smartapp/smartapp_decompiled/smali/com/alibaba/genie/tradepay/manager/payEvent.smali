.class public Lcom/alibaba/genie/tradepay/manager/payEvent;
.super Ljava/lang/Object;
.source "payEvent.java"


# instance fields
.field private code:I

.field private isSuccess:Z

.field private model:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .line 22
    iget v0, p0, Lcom/alibaba/genie/tradepay/manager/payEvent;->code:I

    return v0
.end method

.method public getModel()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/alibaba/genie/tradepay/manager/payEvent;->model:Ljava/lang/String;

    return-object v0
.end method

.method public isSuccess()Z
    .locals 1

    .line 14
    iget-boolean v0, p0, Lcom/alibaba/genie/tradepay/manager/payEvent;->isSuccess:Z

    return v0
.end method

.method public setCode(I)V
    .locals 0

    .line 26
    iput p1, p0, Lcom/alibaba/genie/tradepay/manager/payEvent;->code:I

    return-void
.end method

.method public setModel(Ljava/lang/String;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/alibaba/genie/tradepay/manager/payEvent;->model:Ljava/lang/String;

    return-void
.end method

.method public setSuccess(Z)V
    .locals 0

    .line 18
    iput-boolean p1, p0, Lcom/alibaba/genie/tradepay/manager/payEvent;->isSuccess:Z

    return-void
.end method
