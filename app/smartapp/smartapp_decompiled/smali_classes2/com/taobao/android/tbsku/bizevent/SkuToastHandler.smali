.class public Lcom/taobao/android/tbsku/bizevent/SkuToastHandler;
.super Ljava/lang/Object;
.source "SkuToastHandler.java"

# interfaces
.implements Lcom/taobao/android/sku/handler/IAliXSkuHandler;


# static fields
.field public static final EVENT_TYPE:Ljava/lang/String; = "sku_toast"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public handleEvent(Lcom/taobao/android/sku/handler/SkuEvent;Lcom/taobao/android/sku/handler/AliXSkuHandlerFeedback;)V
    .locals 5

    .line 24
    invoke-virtual {p1}, Lcom/taobao/android/sku/handler/SkuEvent;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 25
    invoke-virtual {p1}, Lcom/taobao/android/sku/handler/SkuEvent;->getEventData()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 27
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_2

    :cond_0
    const-string v1, "fields"

    .line 30
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 31
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_2

    :cond_1
    const-string v1, "type"

    .line 35
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "text"

    .line 36
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "iconFont"

    .line 38
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "custom"

    .line 39
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 p1, 0x4

    .line 40
    invoke-static {p2, p1, v2, v0}, Lcom/taobao/android/tbsku/utils/SkuToastUtil;->showToast(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    const-string v0, "failed"

    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v3, "extraData"

    const/4 v4, 0x0

    if-eqz v0, :cond_5

    .line 44
    invoke-virtual {p1}, Lcom/taobao/android/sku/handler/SkuEvent;->getUltronEvent()Lcom/alibaba/android/ultron/event/base/UltronEvent;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/alibaba/android/ultron/event/base/UltronEvent;->getExtraData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmtopsdk/mtop/domain/MtopResponse;

    if-eqz p1, :cond_3

    .line 46
    invoke-virtual {p1}, Lmtopsdk/mtop/domain/MtopResponse;->getRetMsg()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_3
    move-object p1, v2

    .line 48
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    move-object p1, v2

    :cond_4
    const/4 v0, 0x3

    .line 51
    invoke-static {p2, v0, p1, v4}, Lcom/taobao/android/tbsku/utils/SkuToastUtil;->showToast(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    const-string v0, "success"

    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 55
    invoke-virtual {p1}, Lcom/taobao/android/sku/handler/SkuEvent;->getUltronEvent()Lcom/alibaba/android/ultron/event/base/UltronEvent;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/alibaba/android/ultron/event/base/UltronEvent;->getExtraData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/fastjson/JSONObject;

    if-eqz p1, :cond_6

    const-string v0, "tip"

    .line 57
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_6
    move-object p1, v2

    .line 59
    :goto_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    move-object p1, v2

    :cond_7
    const/4 v0, 0x2

    .line 62
    invoke-static {p2, v0, p1, v4}, Lcom/taobao/android/tbsku/utils/SkuToastUtil;->showToast(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    const-string p1, "default"

    .line 63
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_9

    .line 64
    invoke-static {p2, v0, v2, v4}, Lcom/taobao/android/tbsku/utils/SkuToastUtil;->showToast(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 66
    :cond_9
    invoke-static {p2, v0, v2, v4}, Lcom/taobao/android/tbsku/utils/SkuToastUtil;->showToast(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    :cond_a
    :goto_2
    return-void
.end method
