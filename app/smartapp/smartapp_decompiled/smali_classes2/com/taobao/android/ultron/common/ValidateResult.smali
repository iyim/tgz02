.class public Lcom/taobao/android/ultron/common/ValidateResult;
.super Ljava/lang/Object;
.source "ValidateResult.java"


# instance fields
.field private mDMComponent:Lcom/taobao/android/ultron/common/model/IDMComponent;

.field private mValidateFailedMsg:Ljava/lang/String;

.field private mValidateState:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Lcom/taobao/android/ultron/common/ValidateResult;->mValidateState:Z

    return-void
.end method


# virtual methods
.method public getValidateFailedComponent()Lcom/taobao/android/ultron/common/model/IDMComponent;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/taobao/android/ultron/common/ValidateResult;->mDMComponent:Lcom/taobao/android/ultron/common/model/IDMComponent;

    return-object v0
.end method

.method public getValidateFailedMsg()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/taobao/android/ultron/common/ValidateResult;->mValidateFailedMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getValidateState()Z
    .locals 1

    .line 25
    iget-boolean v0, p0, Lcom/taobao/android/ultron/common/ValidateResult;->mValidateState:Z

    return v0
.end method

.method public setValidateFailedComponent(Lcom/taobao/android/ultron/common/model/IDMComponent;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/taobao/android/ultron/common/ValidateResult;->mDMComponent:Lcom/taobao/android/ultron/common/model/IDMComponent;

    return-void
.end method

.method public setValidateFailedMsg(Ljava/lang/String;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/taobao/android/ultron/common/ValidateResult;->mValidateFailedMsg:Ljava/lang/String;

    return-void
.end method

.method public setValidateState(Z)V
    .locals 0

    .line 29
    iput-boolean p1, p0, Lcom/taobao/android/ultron/common/ValidateResult;->mValidateState:Z

    return-void
.end method
