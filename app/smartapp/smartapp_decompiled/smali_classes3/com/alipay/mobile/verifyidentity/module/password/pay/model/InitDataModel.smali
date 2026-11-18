.class public Lcom/alipay/mobile/verifyidentity/module/password/pay/model/InitDataModel;
.super Ljava/lang/Object;
.source "InitDataModel.java"


# instance fields
.field public PASS:Ljava/lang/String;

.field public action:Ljava/lang/String;

.field public bodyContent:Ljava/lang/String;

.field public completePPWUrl:Ljava/lang/String;

.field public isExistPPW:Z

.field public isFindPPW:Z

.field public isPluginMode:Z

.field public isSimplePPW:Z

.field public keyFootRemark:Ljava/lang/String;

.field public keyHeadline:Ljava/lang/String;

.field public loadingTip:Ljava/lang/String;

.field public logonId:Ljava/lang/String;

.field public other:Ljava/lang/String;

.field public pageStyle:Ljava/lang/String;

.field public predata:Ljava/lang/String;

.field public pubKey:Ljava/lang/String;

.field public pwdTopTip:Ljava/lang/String;

.field public refer:Ljava/lang/String;

.field public sourcePluginName:Ljava/lang/String;

.field public sourceToPwd:Ljava/lang/String;

.field public timestamp:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 20
    iput-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/model/InitDataModel;->isExistPPW:Z

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
