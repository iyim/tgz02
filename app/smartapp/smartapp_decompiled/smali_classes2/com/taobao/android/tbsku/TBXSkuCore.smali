.class public Lcom/taobao/android/tbsku/TBXSkuCore;
.super Ljava/lang/Object;
.source "TBXSkuCore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/android/tbsku/TBXSkuCore$SkuAsyncTaskInput;
    }
.end annotation


# static fields
.field private static final JS_WRAPPER_FILE_MD5:Ljava/lang/String; = "ca9dc2ca9d64afa4cd24fa587a88ea1f"

.field private static final JS_WRAPPER_FILE_PATH:Ljava/lang/String; = "file:///android_asset/script/skuCore.js"

.field private static final OPEN_BUS_JS_MAOCHAO_CPU:Ljava/lang/String; = "file:///android_asset/script/maochao_cpu.js"

.field private static final OPEN_BUS_JS_MAOCHAO_CPU_MD5:Ljava/lang/String; = "c07981e4afbcd60faec02bd52994657b"

.field private static final OPEN_BUS_ULTRON_MAOCHAO_CPU:Ljava/lang/String; = "file:///android_asset/ultron/maochao_cpu.json"

.field private static final SKU_BIZ_TYPE:Ljava/lang/String; = "taobao_sku"

.field private static final ULTRON_TEMPLATE_FILE_MD5:Ljava/lang/String; = "c7f4f0e74e54a504e9997c744c7afecb"

.field private static final ULTRON_TEMPLATE_FILE_PATH:Ljava/lang/String; = "file:///android_asset/ultron/originalUltronData.json"


# instance fields
.field private mAboveComponents:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mBelowComponents:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDowngrade:Lcom/taobao/android/tbsku/downgrade/IDowngrade;

.field private mIsBroken:Z

.field private mLogics:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRelatedAuctionsData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alibaba/fastjson/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private mSkuCore:Lcom/taobao/android/sku/AliXSkuCore;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 67
    invoke-direct {p0, p1, v0}, Lcom/taobao/android/tbsku/TBXSkuCore;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 68
    iput-object p1, p0, Lcom/taobao/android/tbsku/TBXSkuCore;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/android/tbsku/TBXSkuCore;->mRelatedAuctionsData:Ljava/util/Map;

    .line 62
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/android/tbsku/TBXSkuCore;->mAboveComponents:Ljava/util/Map;

    .line 63
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/android/tbsku/TBXSkuCore;->mBelowComponents:Ljava/util/Map;

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/android/tbsku/TBXSkuCore;->mLogics:Ljava/util/Map;

    if-eqz p1, :cond_0

    .line 76
    new-instance v0, Lcom/taobao/android/sku/AliXSkuCore;

    const-string v1, "taobao_sku"

    invoke-direct {v0, p1, v1, p2}, Lcom/taobao/android/sku/AliXSkuCore;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/taobao/android/tbsku/TBXSkuCore;->mSkuCore:Lcom/taobao/android/sku/AliXSkuCore;

    .line 77
    iput-object p1, p0, Lcom/taobao/android/tbsku/TBXSkuCore;->mContext:Landroid/content/Context;

    return-void

    .line 73
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "params context can not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000(Lcom/taobao/android/tbsku/TBXSkuCore;)Lcom/taobao/android/sku/AliXSkuCore;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/taobao/android/tbsku/TBXSkuCore;->mSkuCore:Lcom/taobao/android/sku/AliXSkuCore;

    return-object p0
.end method

.method static synthetic access$102(Lcom/taobao/android/tbsku/TBXSkuCore;Z)Z
    .locals 0

    .line 38
    iput-boolean p1, p0, Lcom/taobao/android/tbsku/TBXSkuCore;->mIsBroken:Z

    return p1
.end method

.method static synthetic access$200(Lcom/taobao/android/tbsku/TBXSkuCore;)Lcom/taobao/android/tbsku/downgrade/IDowngrade;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/taobao/android/tbsku/TBXSkuCore;->mDowngrade:Lcom/taobao/android/tbsku/downgrade/IDowngrade;

    return-object p0
.end method

.method static synthetic access$300(Lcom/taobao/android/tbsku/TBXSkuCore;)Landroid/content/Context;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/taobao/android/tbsku/TBXSkuCore;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$400(Lcom/taobao/android/tbsku/TBXSkuCore;)Ljava/util/Map;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/taobao/android/tbsku/TBXSkuCore;->mRelatedAuctionsData:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$500(Lcom/taobao/android/tbsku/TBXSkuCore;Ljava/lang/String;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/taobao/android/tbsku/TBXSkuCore;->updateRelatedAuctions(Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private initDowngradeListener()V
    .locals 2

    .line 136
    iget-object v0, p0, Lcom/taobao/android/tbsku/TBXSkuCore;->mSkuCore:Lcom/taobao/android/sku/AliXSkuCore;

    new-instance v1, Lcom/taobao/android/tbsku/TBXSkuCore$2;

    invoke-direct {v1, p0}, Lcom/taobao/android/tbsku/TBXSkuCore$2;-><init>(Lcom/taobao/android/tbsku/TBXSkuCore;)V

    invoke-virtual {v0, v1}, Lcom/taobao/android/sku/AliXSkuCore;->setErrorListener(Lcom/taobao/android/sku/AliXSkuCore$IErrorListener;)V

    return-void
.end method

.method private initMaoChaoCpu()V
    .locals 2

    .line 169
    iget-object v0, p0, Lcom/taobao/android/tbsku/TBXSkuCore;->mContext:Landroid/content/Context;

    const-string v1, "file:///android_asset/script/maochao_cpu.js"

    invoke-static {v0, v1}, Lcom/alibaba/android/ultron/vfw/util/FileUtil;->getFileStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "c07981e4afbcd60faec02bd52994657b"

    invoke-virtual {p0, v0, v1}, Lcom/taobao/android/tbsku/TBXSkuCore;->setComponentLogic(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Lcom/taobao/android/tbsku/TBXSkuCore;->mContext:Landroid/content/Context;

    const-string v1, "file:///android_asset/ultron/maochao_cpu.json"

    invoke-static {v0, v1}, Lcom/alibaba/android/ultron/vfw/util/FileUtil;->getFileStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "id_biz_area"

    invoke-virtual {p0, v0, v1}, Lcom/taobao/android/tbsku/TBXSkuCore;->setComponentViewAbove(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private initTBEventSubscribers(Lcom/taobao/android/sku/AliXSkuCore;)V
    .locals 3

    .line 161
    invoke-virtual {p1}, Lcom/taobao/android/sku/AliXSkuCore;->getHandlerCenter()Lcom/taobao/android/sku/handler/AliXSkuHandlerCenter;

    move-result-object v0

    new-instance v1, Lcom/taobao/android/tbsku/bizevent/PicPreEventHandler;

    invoke-direct {v1}, Lcom/taobao/android/tbsku/bizevent/PicPreEventHandler;-><init>()V

    const-string v2, "click_main_pic_event"

    invoke-virtual {v0, v2, v1}, Lcom/taobao/android/sku/handler/AliXSkuHandlerCenter;->replaceSubscriber(Ljava/lang/String;Lcom/taobao/android/sku/handler/IAliXSkuHandler;)V

    .line 162
    invoke-virtual {p1}, Lcom/taobao/android/sku/AliXSkuCore;->getHandlerCenter()Lcom/taobao/android/sku/handler/AliXSkuHandlerCenter;

    move-result-object v0

    new-instance v1, Lcom/taobao/android/tbsku/bizevent/SkuToastHandler;

    invoke-direct {v1}, Lcom/taobao/android/tbsku/bizevent/SkuToastHandler;-><init>()V

    const-string v2, "sku_toast"

    invoke-virtual {v0, v2, v1}, Lcom/taobao/android/sku/handler/AliXSkuHandlerCenter;->replaceSubscriber(Ljava/lang/String;Lcom/taobao/android/sku/handler/IAliXSkuHandler;)V

    .line 165
    invoke-virtual {p1}, Lcom/taobao/android/sku/AliXSkuCore;->getHandlerCenter()Lcom/taobao/android/sku/handler/AliXSkuHandlerCenter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/android/sku/handler/AliXSkuHandlerCenter;->getUltronEventHandler()Lcom/alibaba/android/ultron/event/base/UltronEventHandler;

    move-result-object p1

    new-instance v0, Lcom/taobao/android/tbsku/bizevent/SkuJHSJoinRequestHandler;

    invoke-direct {v0}, Lcom/taobao/android/tbsku/bizevent/SkuJHSJoinRequestHandler;-><init>()V

    const-string v1, "sku_jhs_join_request"

    invoke-virtual {p1, v1, v0}, Lcom/alibaba/android/ultron/event/base/UltronEventHandler;->replaceSubscriber(Ljava/lang/String;Lcom/alibaba/android/ultron/event/base/ISubscriber;)V

    return-void
.end method

.method private sendRelatedAuctionsData(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 4

    .line 241
    invoke-virtual {p0}, Lcom/taobao/android/tbsku/TBXSkuCore;->getItemId()Ljava/lang/String;

    move-result-object v0

    .line 243
    iget-object v1, p0, Lcom/taobao/android/tbsku/TBXSkuCore;->mRelatedAuctionsData:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v1, :cond_0

    .line 244
    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    const-string v2, "resource"

    .line 250
    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    const-string v2, "relatedAuctions"

    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    const-string v2, "items"

    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    if-eqz v1, :cond_5

    .line 253
    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    .line 256
    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 257
    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONArray;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 258
    instance-of v3, v2, Lcom/alibaba/fastjson/JSONObject;

    if-nez v3, :cond_2

    goto :goto_0

    .line 261
    :cond_2
    nop

    nop

    const-string v3, "itemId"

    .line 262
    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 263
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    .line 266
    :cond_3
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 269
    :cond_4
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 270
    new-instance v1, Lcom/taobao/android/tbsku/network/cross/RelatedAuctionsParams;

    invoke-direct {v1, p1}, Lcom/taobao/android/tbsku/network/cross/RelatedAuctionsParams;-><init>(Ljava/util/List;)V

    .line 271
    new-instance p1, Lcom/taobao/android/tbsku/network/SkuRequestClient;

    iget-object v2, p0, Lcom/taobao/android/tbsku/TBXSkuCore;->mContext:Landroid/content/Context;

    invoke-direct {p1, v2, v1}, Lcom/taobao/android/tbsku/network/SkuRequestClient;-><init>(Landroid/content/Context;Lcom/taobao/android/tbsku/network/ISkuRequestParams;)V

    .line 272
    new-instance v1, Lcom/taobao/android/tbsku/TBXSkuCore$5;

    invoke-direct {v1, p0, v0}, Lcom/taobao/android/tbsku/TBXSkuCore$5;-><init>(Lcom/taobao/android/tbsku/TBXSkuCore;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/taobao/android/tbsku/network/SkuRequestClient;->setResponseListener(Lcom/taobao/tao/remotebusiness/IRemoteBaseListener;)V

    .line 303
    invoke-virtual {p1}, Lcom/taobao/android/tbsku/network/SkuRequestClient;->execute()Z

    :cond_5
    :goto_1
    return-void
.end method

.method private updateRelatedAuctions(Ljava/lang/String;)V
    .locals 2

    .line 224
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/taobao/android/tbsku/TBXSkuCore;->mRelatedAuctionsData:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/fastjson/JSONObject;

    if-eqz p1, :cond_2

    .line 228
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 231
    :cond_1
    iget-object v0, p0, Lcom/taobao/android/tbsku/TBXSkuCore;->mSkuCore:Lcom/taobao/android/sku/AliXSkuCore;

    new-instance v1, Lcom/taobao/android/tbsku/TBXSkuCore$4;

    invoke-direct {v1, p0, p1}, Lcom/taobao/android/tbsku/TBXSkuCore$4;-><init>(Lcom/taobao/android/tbsku/TBXSkuCore;Lcom/alibaba/fastjson/JSONObject;)V

    invoke-virtual {v0, v1}, Lcom/taobao/android/sku/AliXSkuCore;->setStaticExtInput(Lcom/alibaba/fastjson/JSONObject;)V

    .line 236
    iget-object p1, p0, Lcom/taobao/android/tbsku/TBXSkuCore;->mSkuCore:Lcom/taobao/android/sku/AliXSkuCore;

    invoke-virtual {p1}, Lcom/taobao/android/sku/AliXSkuCore;->getOriginalData()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/taobao/android/sku/AliXSkuCore;->updateOriginalData(Lcom/alibaba/fastjson/JSONObject;)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .line 108
    new-instance v0, Lcom/taobao/android/tbsku/TBXSkuCore$1;

    invoke-direct {v0, p0}, Lcom/taobao/android/tbsku/TBXSkuCore$1;-><init>(Lcom/taobao/android/tbsku/TBXSkuCore;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 120
    invoke-virtual {v0, v1}, Lcom/taobao/android/tbsku/TBXSkuCore$1;->execute([Ljava/lang/Object;)Lcom/taobao/android/sku/data/AliXSkuAsyncTask;

    return-void
.end method

.method public getItemId()Ljava/lang/String;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/taobao/android/tbsku/TBXSkuCore;->mSkuCore:Lcom/taobao/android/sku/AliXSkuCore;

    invoke-virtual {v0}, Lcom/taobao/android/sku/AliXSkuCore;->getItemId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSkuCore()Lcom/taobao/android/sku/AliXSkuCore;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/taobao/android/tbsku/TBXSkuCore;->mSkuCore:Lcom/taobao/android/sku/AliXSkuCore;

    return-object v0
.end method

.method public initData(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/taobao/android/tbsku/TBXSkuCore;->mSkuCore:Lcom/taobao/android/sku/AliXSkuCore;

    invoke-virtual {v0}, Lcom/taobao/android/sku/AliXSkuCore;->initPresenterView()V

    .line 93
    iget-object v0, p0, Lcom/taobao/android/tbsku/TBXSkuCore;->mSkuCore:Lcom/taobao/android/sku/AliXSkuCore;

    invoke-virtual {v0, p1}, Lcom/taobao/android/sku/AliXSkuCore;->initDataContext(Lcom/alibaba/fastjson/JSONObject;)V

    .line 95
    invoke-direct {p0}, Lcom/taobao/android/tbsku/TBXSkuCore;->initDowngradeListener()V

    .line 96
    iget-object p1, p0, Lcom/taobao/android/tbsku/TBXSkuCore;->mSkuCore:Lcom/taobao/android/sku/AliXSkuCore;

    invoke-direct {p0, p1}, Lcom/taobao/android/tbsku/TBXSkuCore;->initTBEventSubscribers(Lcom/taobao/android/sku/AliXSkuCore;)V

    return-void
.end method

.method public initData(Ljava/lang/String;)V
    .locals 1

    .line 81
    invoke-static {p1}, Lcom/taobao/android/sku/utils/DynamicMergeUtils;->mergeResponseToJson(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    .line 82
    iget-object v0, p0, Lcom/taobao/android/tbsku/TBXSkuCore;->mSkuCore:Lcom/taobao/android/sku/AliXSkuCore;

    invoke-virtual {v0}, Lcom/taobao/android/sku/AliXSkuCore;->initPresenterView()V

    .line 83
    iget-object v0, p0, Lcom/taobao/android/tbsku/TBXSkuCore;->mSkuCore:Lcom/taobao/android/sku/AliXSkuCore;

    invoke-virtual {v0, p1}, Lcom/taobao/android/sku/AliXSkuCore;->initDataContext(Lcom/alibaba/fastjson/JSONObject;)V

    .line 85
    invoke-direct {p0, p1}, Lcom/taobao/android/tbsku/TBXSkuCore;->sendRelatedAuctionsData(Lcom/alibaba/fastjson/JSONObject;)V

    .line 87
    invoke-direct {p0}, Lcom/taobao/android/tbsku/TBXSkuCore;->initDowngradeListener()V

    .line 88
    iget-object p1, p0, Lcom/taobao/android/tbsku/TBXSkuCore;->mSkuCore:Lcom/taobao/android/sku/AliXSkuCore;

    invoke-direct {p0, p1}, Lcom/taobao/android/tbsku/TBXSkuCore;->initTBEventSubscribers(Lcom/taobao/android/sku/AliXSkuCore;)V

    return-void
.end method

.method public isBroken()Z
    .locals 1

    .line 124
    iget-boolean v0, p0, Lcom/taobao/android/tbsku/TBXSkuCore;->mIsBroken:Z

    return v0
.end method

.method public setComponentLogic(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 330
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/alibaba/android/ultron/engine/utils/MD5Utils;->md5Decode32(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 333
    :cond_0
    iget-object v0, p0, Lcom/taobao/android/tbsku/TBXSkuCore;->mLogics:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    :goto_0
    const-string p1, "setComponentLogic md5 check failed"

    .line 331
    invoke-static {p1}, Lcom/taobao/android/sku/utils/SkuLogUtils;->loge(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public setComponentViewAbove(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 308
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 309
    iget-object v0, p0, Lcom/taobao/android/tbsku/TBXSkuCore;->mAboveComponents:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    .line 311
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 313
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 314
    iget-object p1, p0, Lcom/taobao/android/tbsku/TBXSkuCore;->mAboveComponents:Ljava/util/Map;

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public setComponentViewBelow(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 319
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 320
    iget-object v0, p0, Lcom/taobao/android/tbsku/TBXSkuCore;->mBelowComponents:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    .line 322
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 324
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 325
    iget-object p1, p0, Lcom/taobao/android/tbsku/TBXSkuCore;->mBelowComponents:Ljava/util/Map;

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public setDowngrade(Lcom/taobao/android/tbsku/downgrade/IDowngrade;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/taobao/android/tbsku/TBXSkuCore;->mDowngrade:Lcom/taobao/android/tbsku/downgrade/IDowngrade;

    return-void
.end method

.method public setExtInputData(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/taobao/android/tbsku/TBXSkuCore;->mSkuCore:Lcom/taobao/android/sku/AliXSkuCore;

    invoke-virtual {v0, p1}, Lcom/taobao/android/sku/AliXSkuCore;->setExtInputData(Lcom/alibaba/fastjson/JSONObject;)V

    return-void
.end method

.method public setLogicsExeOrderInExtInput(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 338
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/taobao/android/tbsku/TBXSkuCore;->mSkuCore:Lcom/taobao/android/sku/AliXSkuCore;

    new-instance v1, Lcom/taobao/android/tbsku/TBXSkuCore$6;

    invoke-direct {v1, p0, p1}, Lcom/taobao/android/tbsku/TBXSkuCore$6;-><init>(Lcom/taobao/android/tbsku/TBXSkuCore;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/taobao/android/sku/AliXSkuCore;->setStaticExtInput(Lcom/alibaba/fastjson/JSONObject;)V

    :cond_0
    return-void
.end method

.method public showSku()V
    .locals 11

    .line 174
    new-instance v0, Lcom/taobao/android/tbsku/TBXSkuCore$3;

    invoke-direct {v0, p0}, Lcom/taobao/android/tbsku/TBXSkuCore$3;-><init>(Lcom/taobao/android/tbsku/TBXSkuCore;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/taobao/android/tbsku/TBXSkuCore$SkuAsyncTaskInput;

    new-instance v10, Lcom/taobao/android/tbsku/TBXSkuCore$SkuAsyncTaskInput;

    iget-object v5, p0, Lcom/taobao/android/tbsku/TBXSkuCore;->mAboveComponents:Ljava/util/Map;

    iget-object v6, p0, Lcom/taobao/android/tbsku/TBXSkuCore;->mBelowComponents:Ljava/util/Map;

    iget-object v9, p0, Lcom/taobao/android/tbsku/TBXSkuCore;->mLogics:Ljava/util/Map;

    const-string v3, "file:///android_asset/ultron/originalUltronData.json"

    const-string v4, "c7f4f0e74e54a504e9997c744c7afecb"

    const-string v7, "file:///android_asset/script/skuCore.js"

    const-string v8, "ca9dc2ca9d64afa4cd24fa587a88ea1f"

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lcom/taobao/android/tbsku/TBXSkuCore$SkuAsyncTaskInput;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const/4 v2, 0x0

    aput-object v10, v1, v2

    .line 201
    invoke-virtual {v0, v1}, Lcom/taobao/android/tbsku/TBXSkuCore$3;->execute([Ljava/lang/Object;)Lcom/taobao/android/sku/data/AliXSkuAsyncTask;

    return-void
.end method

.method public updateSku(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/taobao/android/tbsku/TBXSkuCore;->mSkuCore:Lcom/taobao/android/sku/AliXSkuCore;

    invoke-virtual {v0, p1}, Lcom/taobao/android/sku/AliXSkuCore;->updateOriginalData(Lcom/alibaba/fastjson/JSONObject;)V

    return-void
.end method

.method public updateSku(Ljava/lang/String;)V
    .locals 1

    .line 213
    invoke-static {p1}, Lcom/taobao/android/sku/utils/DynamicMergeUtils;->mergeResponseToJson(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    .line 214
    iget-object v0, p0, Lcom/taobao/android/tbsku/TBXSkuCore;->mSkuCore:Lcom/taobao/android/sku/AliXSkuCore;

    invoke-virtual {v0, p1}, Lcom/taobao/android/sku/AliXSkuCore;->updateOriginalData(Lcom/alibaba/fastjson/JSONObject;)V

    .line 216
    invoke-direct {p0, p1}, Lcom/taobao/android/tbsku/TBXSkuCore;->sendRelatedAuctionsData(Lcom/alibaba/fastjson/JSONObject;)V

    return-void
.end method
