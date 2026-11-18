.class final Lcom/alibaba/ailabs/tg/alipay/verifyidentity/AlipayVerifyIdentityHelper$1;
.super Ljava/lang/Object;
.source "AlipayVerifyIdentityHelper.java"

# interfaces
.implements Lcom/alipay/mobile/verifyidentity/dataprovider/AppDataProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/tg/alipay/verifyidentity/AlipayVerifyIdentityHelper;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/alibaba/ailabs/tg/alipay/verifyidentity/AlipayVerifyIdentityHelper$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getApdid()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/alibaba/ailabs/tg/alipay/verifyidentity/AlipayVerifyIdentityHelper$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->getInstance(Landroid/content/Context;)Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;

    move-result-object v0

    .line 61
    invoke-virtual {v0}, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->getTokenResult()Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, v0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;->apdid:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public getApdidToken()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/alibaba/ailabs/tg/alipay/verifyidentity/AlipayVerifyIdentityHelper$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->getInstance(Landroid/content/Context;)Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;

    move-result-object v0

    .line 72
    invoke-virtual {v0}, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->getTokenResult()Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, v0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;->apdidToken:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public getAppKey()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/alibaba/ailabs/tg/alipay/verifyidentity/AlipayVerifyIdentityHelper$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/ailabs/tg/utils/AppUtils;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppVersion()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/alibaba/ailabs/tg/alipay/verifyidentity/AlipayVerifyIdentityHelper$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/ailabs/tg/utils/AppUtils;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTid()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getUmidToken()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
