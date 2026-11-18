.class Lcom/alibaba/ailabs/tg/alipay/verifyidentity/AlipayVerifyIdentityHelper$AlipayVerifyTask;
.super Ljava/lang/Object;
.source "AlipayVerifyIdentityHelper.java"

# interfaces
.implements Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/tg/alipay/verifyidentity/AlipayVerifyIdentityHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AlipayVerifyTask"
.end annotation


# static fields
.field static final FLAG_GET_VERIFY_ID:I = 0x1


# instance fields
.field callback:Lcom/alibaba/ailabs/tg/alipay/verifyidentity/AlipayVerifyIdentityHelper$AlipayVerifyIdentityResultCallback;

.field context:Landroid/content/Context;

.field flag:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/alibaba/ailabs/tg/alipay/verifyidentity/AlipayVerifyIdentityHelper$AlipayVerifyIdentityResultCallback;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/alibaba/ailabs/tg/alipay/verifyidentity/AlipayVerifyIdentityHelper$AlipayVerifyIdentityResultCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    invoke-static {p1}, Lcom/alibaba/ailabs/tg/alipay/verifyidentity/AlipayVerifyIdentityHelper;->access$000(Landroid/content/Context;)V

    .line 112
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/tg/alipay/verifyidentity/AlipayVerifyIdentityHelper$AlipayVerifyTask;->context:Landroid/content/Context;

    .line 114
    iput-object p2, p0, Lcom/alibaba/ailabs/tg/alipay/verifyidentity/AlipayVerifyIdentityHelper$AlipayVerifyTask;->callback:Lcom/alibaba/ailabs/tg/alipay/verifyidentity/AlipayVerifyIdentityHelper$AlipayVerifyIdentityResultCallback;

    .line 115
    iput p3, p0, Lcom/alibaba/ailabs/tg/alipay/verifyidentity/AlipayVerifyIdentityHelper$AlipayVerifyTask;->flag:I

    return-void
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/tg/alipay/verifyidentity/AlipayVerifyIdentityHelper$AlipayVerifyTask;)V
    .locals 0

    .line 97
    invoke-direct {p0}, Lcom/alibaba/ailabs/tg/alipay/verifyidentity/AlipayVerifyIdentityHelper$AlipayVerifyTask;->callbackSuccess()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$200(Lcom/alibaba/ailabs/tg/alipay/verifyidentity/AlipayVerifyIdentityHelper$AlipayVerifyTask;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 97
    invoke-direct {p0, p1, p2}, Lcom/alibaba/ailabs/tg/alipay/verifyidentity/AlipayVerifyIdentityHelper$AlipayVerifyTask;->callbackFailed(Ljava/lang/String;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private callbackFailed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 268
    iget-object v0, p0, Lcom/alibaba/ailabs/tg/alipay/verifyidentity/AlipayVerifyIdentityHelper$AlipayVerifyTask;->callback:Lcom/alibaba/ailabs/tg/alipay/verifyidentity/AlipayVerifyIdentityHelper$AlipayVerifyIdentityResultCallback;

    if-eqz v0, :cond_0

    .line 269
    iget v1, p0, Lcom/alibaba/ailabs/tg/alipay/verifyidentity/AlipayVerifyIdentityHelper$AlipayVerifyTask;->flag:I

    invoke-interface {v0, v1, p1, p2}, Lcom/alibaba/ailabs/tg/alipay/verifyidentity/AlipayVerifyIdentityHelper$AlipayVerifyIdentityResultCallback;->onFailed(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private callbackSuccess()V
    .locals 2

    .line 261
    iget-object v0, p0, Lcom/alibaba/ailabs/tg/alipay/verifyidentity/AlipayVerifyIdentityHelper$AlipayVerifyTask;->callback:Lcom/alibaba/ailabs/tg/alipay/verifyidentity/AlipayVerifyIdentityHelper$AlipayVerifyIdentityResultCallback;

    if-eqz v0, :cond_0

    .line 262
    iget v1, p0, Lcom/alibaba/ailabs/tg/alipay/verifyidentity/AlipayVerifyIdentityHelper$AlipayVerifyTask;->flag:I

    invoke-interface {v0, v1}, Lcom/alibaba/ailabs/tg/alipay/verifyidentity/AlipayVerifyIdentityHelper$AlipayVerifyIdentityResultCallback;->onSuccess(I)V

    :cond_0
    return-void
.end method

.method private startVerifyByVerifyId(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 193
    iget-object p2, p0, Lcom/alibaba/ailabs/tg/alipay/verifyidentity/AlipayVerifyIdentityHelper$AlipayVerifyTask;->context:Landroid/content/Context;

    invoke-static {p2}, Lcom/alibaba/ailabs/tg/alipay/verifyidentity/AlipayVerifyIdentityHelper;->access$000(Landroid/content/Context;)V

    .line 194
    iget-object p2, p0, Lcom/alibaba/ailabs/tg/alipay/verifyidentity/AlipayVerifyIdentityHelper$AlipayVerifyTask;->context:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/alipay/mobile/verifyidentity/engine/VerifyIdentityEngine;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/verifyidentity/engine/VerifyIdentityEngine;

    move-result-object v0

    new-instance v5, Lcom/alibaba/ailabs/tg/alipay/verifyidentity/AlipayVerifyIdentityHelper$AlipayVerifyTask$1;

    invoke-direct {v5, p0}, Lcom/alibaba/ailabs/tg/alipay/verifyidentity/AlipayVerifyIdentityHelper$AlipayVerifyTask$1;-><init>(Lcom/alibaba/ailabs/tg/alipay/verifyidentity/AlipayVerifyIdentityHelper$AlipayVerifyTask;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p1

    .line 195
    invoke-virtual/range {v0 .. v5}, Lcom/alipay/mobile/verifyidentity/engine/VerifyIdentityEngine;->startVerifyByVerifyId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/alipay/mobile/verifyidentity/callback/VIListenerByVerifyId;)V

    return-void
.end method


# virtual methods
.method public getMtopAuthInfo()Ljava/lang/String;
    .locals 3

    .line 119
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "userId"

    .line 121
    iget-object v2, p0, Lcom/alibaba/ailabs/tg/alipay/verifyidentity/AlipayVerifyIdentityHelper$AlipayVerifyTask;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/UserDataProvider;->getUserID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "uuid"

    .line 122
    iget-object v2, p0, Lcom/alibaba/ailabs/tg/alipay/verifyidentity/AlipayVerifyIdentityHelper$AlipayVerifyTask;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/UserDataProvider;->getUUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "token"

    .line 123
    iget-object v2, p0, Lcom/alibaba/ailabs/tg/alipay/verifyidentity/AlipayVerifyIdentityHelper$AlipayVerifyTask;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/UserDataProvider;->getMtopToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 125
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 128
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onResponseFailed(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    const/4 p4, -0x1

    if-eq p1, p4, :cond_0

    .line 182
    invoke-direct {p0, p2, p3}, Lcom/alibaba/ailabs/tg/alipay/verifyidentity/AlipayVerifyIdentityHelper$AlipayVerifyTask;->callbackFailed(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onResponseSuccess(Lmtopsdk/mtop/domain/BaseOutDo;ILjava/lang/Object;)V
    .locals 0

    const/4 p3, 0x1

    if-ne p2, p3, :cond_1

    .line 138
    check-cast p1, Lcom/alibaba/ailabs/tg/alipay/verifyidentity/mtop/response/AlipayVerifyidResponse;

    if-eqz p1, :cond_1

    .line 140
    invoke-virtual {p1}, Lcom/alibaba/ailabs/tg/alipay/verifyidentity/mtop/response/AlipayVerifyidResponse;->getData()Lcom/alibaba/ailabs/tg/alipay/verifyidentity/mtop/data/AlipayVerifyid;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 141
    invoke-virtual {p1}, Lcom/alibaba/ailabs/tg/alipay/verifyidentity/mtop/data/AlipayVerifyid;->getModel()Lcom/alibaba/ailabs/tg/alipay/verifyidentity/mtop/data/AlipayVerifyidModel;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/alibaba/ailabs/tg/alipay/verifyidentity/mtop/data/AlipayVerifyid;->getModel()Lcom/alibaba/ailabs/tg/alipay/verifyidentity/mtop/data/AlipayVerifyidModel;

    move-result-object p2

    invoke-virtual {p2}, Lcom/alibaba/ailabs/tg/alipay/verifyidentity/mtop/data/AlipayVerifyidModel;->getVerifyId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 142
    invoke-virtual {p1}, Lcom/alibaba/ailabs/tg/alipay/verifyidentity/mtop/data/AlipayVerifyid;->getModel()Lcom/alibaba/ailabs/tg/alipay/verifyidentity/mtop/data/AlipayVerifyidModel;

    move-result-object p2

    invoke-virtual {p2}, Lcom/alibaba/ailabs/tg/alipay/verifyidentity/mtop/data/AlipayVerifyidModel;->getVerifyId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/alibaba/ailabs/tg/alipay/verifyidentity/mtop/data/AlipayVerifyid;->getModel()Lcom/alibaba/ailabs/tg/alipay/verifyidentity/mtop/data/AlipayVerifyidModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/tg/alipay/verifyidentity/mtop/data/AlipayVerifyidModel;->getBizId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/alibaba/ailabs/tg/alipay/verifyidentity/AlipayVerifyIdentityHelper$AlipayVerifyTask;->startVerifyByVerifyId(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "-1"

    const-string p2, "get verifyId failed."

    .line 144
    invoke-direct {p0, p1, p2}, Lcom/alibaba/ailabs/tg/alipay/verifyidentity/AlipayVerifyIdentityHelper$AlipayVerifyTask;->callbackFailed(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public start()V
    .locals 2

    .line 132
    invoke-virtual {p0}, Lcom/alibaba/ailabs/tg/alipay/verifyidentity/AlipayVerifyIdentityHelper$AlipayVerifyTask;->getMtopAuthInfo()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lcom/alibaba/ailabs/tg/alipay/verifyidentity/mtop/RequestManager;->getAlipayVerifyId(Ljava/lang/String;Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;I)V

    return-void
.end method
