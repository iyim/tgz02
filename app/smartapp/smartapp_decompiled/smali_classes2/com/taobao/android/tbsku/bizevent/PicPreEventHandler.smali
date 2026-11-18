.class public Lcom/taobao/android/tbsku/bizevent/PicPreEventHandler;
.super Ljava/lang/Object;
.source "PicPreEventHandler.java"

# interfaces
.implements Lcom/taobao/android/sku/handler/IAliXSkuHandler;


# static fields
.field public static final EVENT_TYPE:Ljava/lang/String; = "click_main_pic_event"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public handleEvent(Lcom/taobao/android/sku/handler/SkuEvent;Lcom/taobao/android/sku/handler/AliXSkuHandlerFeedback;)V
    .locals 5

    .line 21
    invoke-virtual {p1}, Lcom/taobao/android/sku/handler/SkuEvent;->getEventData()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 22
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "fields"

    .line 25
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 26
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 31
    :cond_1
    invoke-virtual {p1}, Lcom/taobao/android/sku/handler/SkuEvent;->getExtraParams()Ljava/util/List;

    move-result-object v1

    const-string v2, "imageInfoList"

    if-eqz v1, :cond_2

    .line 32
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v4, :cond_2

    .line 34
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/JSONObject;

    .line 35
    new-instance v3, Lcom/taobao/android/tbsku/dialog/XSkuSingleScalePopWindow;

    .line 36
    invoke-virtual {p1}, Lcom/taobao/android/sku/handler/SkuEvent;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 38
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    invoke-direct {v3, p1, v1, v0, p2}, Lcom/taobao/android/tbsku/dialog/XSkuSingleScalePopWindow;-><init>(Landroid/content/Context;Lcom/alibaba/fastjson/JSONObject;Lcom/alibaba/fastjson/JSONArray;Lcom/taobao/android/sku/handler/AliXSkuHandlerFeedback;)V

    .line 40
    invoke-virtual {v3}, Lcom/taobao/android/tbsku/dialog/XSkuSingleScalePopWindow;->show()V

    goto :goto_0

    :cond_2
    const-string v1, "mainPic"

    .line 44
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 45
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    return-void

    :cond_3
    const-string v3, "mainDesc"

    .line 49
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 50
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v3, ""

    .line 54
    :cond_4
    new-instance v4, Lcom/taobao/android/tbsku/image/SkuImageVO;

    invoke-direct {v4}, Lcom/taobao/android/tbsku/image/SkuImageVO;-><init>()V

    .line 55
    iput-object v1, v4, Lcom/taobao/android/tbsku/image/SkuImageVO;->mImgUrl:Ljava/lang/String;

    .line 56
    iput-object v3, v4, Lcom/taobao/android/tbsku/image/SkuImageVO;->mDesc:Ljava/lang/String;

    .line 58
    new-instance v1, Lcom/taobao/android/tbsku/dialog/XSkuSingleScalePopWindow;

    .line 59
    invoke-virtual {p1}, Lcom/taobao/android/sku/handler/SkuEvent;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 61
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    invoke-direct {v1, p1, v4, v0, p2}, Lcom/taobao/android/tbsku/dialog/XSkuSingleScalePopWindow;-><init>(Landroid/content/Context;Lcom/taobao/android/tbsku/image/SkuImageVO;Lcom/alibaba/fastjson/JSONArray;Lcom/taobao/android/sku/handler/AliXSkuHandlerFeedback;)V

    .line 63
    invoke-virtual {v1}, Lcom/taobao/android/tbsku/dialog/XSkuSingleScalePopWindow;->show()V

    :cond_5
    :goto_0
    return-void
.end method
