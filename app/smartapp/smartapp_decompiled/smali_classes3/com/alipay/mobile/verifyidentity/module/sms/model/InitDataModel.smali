.class public Lcom/alipay/mobile/verifyidentity/module/sms/model/InitDataModel;
.super Ljava/lang/Object;
.source "InitDataModel.java"


# instance fields
.field public code:Ljava/lang/String;

.field public codeCount:I

.field public countDown:I

.field public highlightTxt:[Ljava/lang/String;

.field public keyHeadline:Ljava/lang/String;

.field public mobile_no:Ljava/lang/String;

.field public success:Z

.field public verifyAction:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3c

    .line 16
    iput v0, p0, Lcom/alipay/mobile/verifyidentity/module/sms/model/InitDataModel;->countDown:I

    const/4 v0, 0x6

    .line 17
    iput v0, p0, Lcom/alipay/mobile/verifyidentity/module/sms/model/InitDataModel;->codeCount:I

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hackbyte "

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
