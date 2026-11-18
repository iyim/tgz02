.class public Lcom/taobao/android/tbsku/TBXSkuActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "TBXSkuActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/android/tbsku/TBXSkuActivity$TBXSkuResponseListener;,
        Lcom/taobao/android/tbsku/TBXSkuActivity$SkuUpdateDataReceiver;,
        Lcom/taobao/android/tbsku/TBXSkuActivity$SkuActionCallback;
    }
.end annotation


# static fields
.field private static final SKU_BIZ_TYPE:Ljava/lang/String; = "taobao_sku"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mIntentData:Lcom/taobao/android/tbsku/model/IntentModel;

.field private mRootContainer:Landroid/view/ViewGroup;

.field private mSkuCallbackReceiver:Lcom/taobao/android/tbsku/TBXSkuActivity$SkuActionCallback;

.field private mSkuUpdateDataReceiver:Lcom/taobao/android/tbsku/TBXSkuActivity$SkuUpdateDataReceiver;

.field private mTBXSkuCore:Lcom/taobao/android/tbsku/TBXSkuCore;

.field private mUniqueId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 39
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 43
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/taobao/android/tbsku/TBXSkuActivity;->mHandler:Landroid/os/Handler;

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/android/tbsku/TBXSkuActivity;->mUniqueId:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/taobao/android/tbsku/TBXSkuActivity;)Ljava/lang/String;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/taobao/android/tbsku/TBXSkuActivity;->mUniqueId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/taobao/android/tbsku/TBXSkuActivity;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/taobao/android/tbsku/TBXSkuActivity;->invokeMSOACallback(Ljava/lang/String;Ljava/util/Map;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$1000(Lcom/taobao/android/tbsku/TBXSkuActivity;Lmtopsdk/mtop/domain/MtopResponse;)Lcom/alibaba/fastjson/JSONObject;
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/taobao/android/tbsku/TBXSkuActivity;->parseResponseString(Lmtopsdk/mtop/domain/MtopResponse;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1200(Lcom/taobao/android/tbsku/TBXSkuActivity;)Ljava/lang/String;
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/taobao/android/tbsku/TBXSkuActivity;->getItemId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1300(Lcom/taobao/android/tbsku/TBXSkuActivity;)Ljava/lang/String;
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/taobao/android/tbsku/TBXSkuActivity;->getOpenUrl()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1400(Lcom/taobao/android/tbsku/TBXSkuActivity;Lcom/alibaba/fastjson/JSONObject;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/taobao/android/tbsku/TBXSkuActivity;->updateSku(Lcom/alibaba/fastjson/JSONObject;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$1500(Lcom/taobao/android/tbsku/TBXSkuActivity;Lcom/alibaba/fastjson/JSONObject;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/taobao/android/tbsku/TBXSkuActivity;->showSku(Lcom/alibaba/fastjson/JSONObject;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$200(Lcom/taobao/android/tbsku/TBXSkuActivity;)Lcom/taobao/android/tbsku/TBXSkuCore;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/taobao/android/tbsku/TBXSkuActivity;->mTBXSkuCore:Lcom/taobao/android/tbsku/TBXSkuCore;

    return-object p0
.end method

.method static synthetic access$300(Lcom/taobao/android/tbsku/TBXSkuActivity;)Lcom/taobao/android/tbsku/model/IntentModel;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/taobao/android/tbsku/TBXSkuActivity;->mIntentData:Lcom/taobao/android/tbsku/model/IntentModel;

    return-object p0
.end method

.method static synthetic access$400(Lcom/taobao/android/tbsku/TBXSkuActivity;Ljava/lang/String;Ljava/util/Map;Z)Z
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/taobao/android/tbsku/TBXSkuActivity;->sendDetailMtopRequest(Ljava/lang/String;Ljava/util/Map;Z)Z

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lcom/taobao/android/tbsku/TBXSkuActivity;)Z
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/taobao/android/tbsku/TBXSkuActivity;->isActivityDestroyed()Z

    move-result p0

    return p0
.end method

.method static synthetic access$800(Lcom/taobao/android/tbsku/TBXSkuActivity;ILandroid/content/Intent;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/taobao/android/tbsku/TBXSkuActivity;->finishAndSetResult(ILandroid/content/Intent;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$900(Lcom/taobao/android/tbsku/TBXSkuActivity;Ljava/lang/String;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/taobao/android/tbsku/TBXSkuActivity;->downgrade2OldMsoaSku(Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private alarmUrlRedirectUrl(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 4

    .line 308
    invoke-direct {p0, p1}, Lcom/taobao/android/tbsku/TBXSkuActivity;->getRedirectUrl(Lcom/alibaba/fastjson/JSONObject;)Ljava/lang/String;

    move-result-object p1

    .line 309
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 310
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5546\u54c1\u51fa\u73b0\u964d\u7ea7 redirectUrl: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/taobao/android/tbsku/TBXSkuActivity;->mIntentData:Lcom/taobao/android/tbsku/model/IntentModel;

    iget-object v0, v0, Lcom/taobao/android/tbsku/model/IntentModel;->mItemId:Ljava/lang/String;

    iget-object v1, p0, Lcom/taobao/android/tbsku/TBXSkuActivity;->mIntentData:Lcom/taobao/android/tbsku/model/IntentModel;

    iget-object v1, v1, Lcom/taobao/android/tbsku/model/IntentModel;->mUrl:Ljava/lang/String;

    const-string v2, "taobao_sku"

    const-string v3, "UME_SKU_URL_004"

    invoke-static {v2, v3, p1, v0, v1}, Lcom/taobao/android/sku/utils/SkuLogUtils;->alarmUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private broadcastSkuCanceled()V
    .locals 3

    .line 418
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "detailSKU"

    .line 419
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "result"

    const-string v2, "cancel"

    .line 420
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 421
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method

.method private downgrade2OldMsoaSku(Ljava/lang/String;)V
    .locals 6

    .line 361
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-string v0, "com.taobao.android.detail.msoa.DetailMSOAImpl"

    .line 367
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "downgrade2OldMsoaSku"

    const/4 v2, 0x1

    .line 369
    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    .line 371
    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 373
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private finishAndSetResult(ILandroid/content/Intent;)V
    .locals 0

    .line 406
    invoke-virtual {p0, p1, p2}, Lcom/taobao/android/tbsku/TBXSkuActivity;->setResult(ILandroid/content/Intent;)V

    const/4 p2, 0x7

    if-ne p1, p2, :cond_0

    .line 411
    invoke-direct {p0}, Lcom/taobao/android/tbsku/TBXSkuActivity;->broadcastSkuCanceled()V

    .line 414
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/android/tbsku/TBXSkuActivity;->finish()V

    return-void
.end method

.method private getItemId()Ljava/lang/String;
    .locals 1

    .line 280
    iget-object v0, p0, Lcom/taobao/android/tbsku/TBXSkuActivity;->mIntentData:Lcom/taobao/android/tbsku/model/IntentModel;

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, v0, Lcom/taobao/android/tbsku/model/IntentModel;->mItemId:Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private getNinetyPercentScreenHeight()I
    .locals 4

    .line 259
    invoke-virtual {p0}, Lcom/taobao/android/tbsku/TBXSkuActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-double v0, v0

    const-wide v2, 0x3feccccccccccccdL    # 0.9

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    double-to-int v0, v0

    return v0
.end method

.method private getOpenUrl()Ljava/lang/String;
    .locals 1

    .line 288
    iget-object v0, p0, Lcom/taobao/android/tbsku/TBXSkuActivity;->mIntentData:Lcom/taobao/android/tbsku/model/IntentModel;

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, v0, Lcom/taobao/android/tbsku/model/IntentModel;->mUrl:Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private getRedirectUrl(Lcom/alibaba/fastjson/JSONObject;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 296
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "trade"

    .line 299
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 300
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "redirectUrl"

    .line 304
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_0
    return-object v0
.end method

.method private invokeMSOACallback(Ljava/lang/String;Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "com.taobao.android.msoa.MSOAClient"

    .line 149
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getInstance"

    .line 151
    new-array v4, v1, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const-string v4, "onRequestSuccess"

    const/4 v5, 0x2

    .line 153
    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Ljava/lang/String;

    aput-object v7, v6, v1

    const-class v7, Ljava/util/Map;

    aput-object v7, v6, v0

    invoke-virtual {v2, v4, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v4, 0x0

    .line 155
    new-array v6, v1, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 157
    new-array v4, v5, [Ljava/lang/Object;

    aput-object p1, v4, v1

    aput-object p2, v4, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 160
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    if-eqz v0, :cond_0

    .line 166
    :try_start_1
    invoke-static {}, Lcom/taobao/android/msoa/MSOAClient;->getInstance()Lcom/taobao/android/msoa/MSOAClient;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/taobao/android/msoa/MSOAClient;->onRequestSuccess(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 168
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_1
    return-void
.end method

.method private isActivityDestroyed()Z
    .locals 3

    .line 378
    invoke-virtual {p0}, Lcom/taobao/android/tbsku/TBXSkuActivity;->isFinishing()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 381
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v0, v2, :cond_1

    .line 382
    invoke-virtual {p0}, Lcom/taobao/android/tbsku/TBXSkuActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private parseResponseString(Lmtopsdk/mtop/domain/MtopResponse;)Lcom/alibaba/fastjson/JSONObject;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 394
    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p1}, Lmtopsdk/mtop/domain/MtopResponse;->getBytedata()[B

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([B)V

    .line 395
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-object v0

    .line 399
    :cond_1
    invoke-static {v1}, Lcom/taobao/android/sku/utils/DynamicMergeUtils;->mergeResponseToJson(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method private registerSkuUpdateReceiver()V
    .locals 4

    .line 217
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.taobao.sku.intent.action.updateData"

    .line 218
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.category.DEFAULT"

    .line 219
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 220
    new-instance v2, Lcom/taobao/android/tbsku/TBXSkuActivity$SkuUpdateDataReceiver;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/taobao/android/tbsku/TBXSkuActivity$SkuUpdateDataReceiver;-><init>(Lcom/taobao/android/tbsku/TBXSkuActivity;Lcom/taobao/android/tbsku/TBXSkuActivity$1;)V

    iput-object v2, p0, Lcom/taobao/android/tbsku/TBXSkuActivity;->mSkuUpdateDataReceiver:Lcom/taobao/android/tbsku/TBXSkuActivity$SkuUpdateDataReceiver;

    .line 221
    iget-object v2, p0, Lcom/taobao/android/tbsku/TBXSkuActivity;->mSkuUpdateDataReceiver:Lcom/taobao/android/tbsku/TBXSkuActivity$SkuUpdateDataReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/taobao/android/tbsku/TBXSkuActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 224
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "com.taobao.sku.intent.action.callback"

    .line 225
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 226
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 227
    new-instance v1, Lcom/taobao/android/tbsku/TBXSkuActivity$SkuActionCallback;

    invoke-direct {v1, p0, v3}, Lcom/taobao/android/tbsku/TBXSkuActivity$SkuActionCallback;-><init>(Lcom/taobao/android/tbsku/TBXSkuActivity;Lcom/taobao/android/tbsku/TBXSkuActivity$1;)V

    iput-object v1, p0, Lcom/taobao/android/tbsku/TBXSkuActivity;->mSkuCallbackReceiver:Lcom/taobao/android/tbsku/TBXSkuActivity$SkuActionCallback;

    .line 228
    iget-object v1, p0, Lcom/taobao/android/tbsku/TBXSkuActivity;->mSkuCallbackReceiver:Lcom/taobao/android/tbsku/TBXSkuActivity$SkuActionCallback;

    invoke-virtual {p0, v1, v0}, Lcom/taobao/android/tbsku/TBXSkuActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private sendDetailMtopRequest(Ljava/lang/String;Ljava/util/Map;Z)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)Z"
        }
    .end annotation

    .line 264
    new-instance v0, Lcom/taobao/android/tbsku/TBXSkuActivity$TBXSkuResponseListener;

    iget-object v1, p0, Lcom/taobao/android/tbsku/TBXSkuActivity;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1, p3}, Lcom/taobao/android/tbsku/TBXSkuActivity$TBXSkuResponseListener;-><init>(Lcom/taobao/android/tbsku/TBXSkuActivity;Landroid/os/Handler;Z)V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/taobao/android/tbsku/TBXSkuActivity;->sendDetailMtopRequest(Ljava/lang/String;Ljava/util/Map;ZLcom/taobao/tao/remotebusiness/IRemoteBaseListener;)Z

    move-result p1

    return p1
.end method

.method private sendDetailMtopRequest(Ljava/lang/String;Ljava/util/Map;ZLcom/taobao/tao/remotebusiness/IRemoteBaseListener;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Lcom/taobao/tao/remotebusiness/IRemoteBaseListener;",
            ")Z"
        }
    .end annotation

    .line 268
    new-instance p3, Lcom/taobao/android/tbsku/network/SkuRequestParams;

    invoke-direct {p3, p1, p2}, Lcom/taobao/android/tbsku/network/SkuRequestParams;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 269
    new-instance p1, Lcom/taobao/android/tbsku/network/SkuRequestClient;

    invoke-direct {p1, p0, p3}, Lcom/taobao/android/tbsku/network/SkuRequestClient;-><init>(Landroid/content/Context;Lcom/taobao/android/tbsku/network/ISkuRequestParams;)V

    .line 270
    invoke-virtual {p1, p4}, Lcom/taobao/android/tbsku/network/SkuRequestClient;->setResponseListener(Lcom/taobao/tao/remotebusiness/IRemoteBaseListener;)V

    .line 271
    invoke-virtual {p1}, Lcom/taobao/android/tbsku/network/SkuRequestClient;->execute()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p2, 0x1

    const-string p3, "\u6570\u636e\u5f02\u5e38\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5!"

    .line 273
    invoke-static {p0, p3, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    :cond_0
    return p1
.end method

.method private showSku(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 4

    .line 322
    invoke-direct {p0, p1}, Lcom/taobao/android/tbsku/TBXSkuActivity;->alarmUrlRedirectUrl(Lcom/alibaba/fastjson/JSONObject;)V

    .line 323
    invoke-direct {p0}, Lcom/taobao/android/tbsku/TBXSkuActivity;->isActivityDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 326
    :cond_0
    invoke-static {p1}, Lcom/taobao/android/tbsku/utils/SkuChecker;->isSupportNewSku(Lcom/alibaba/fastjson/JSONObject;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 328
    iget-object p1, p0, Lcom/taobao/android/tbsku/TBXSkuActivity;->mIntentData:Lcom/taobao/android/tbsku/model/IntentModel;

    iget-object p1, p1, Lcom/taobao/android/tbsku/model/IntentModel;->mIgnoreToast:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    const-string v0, "\u5f53\u524d\u5546\u54c1\u4e0d\u652f\u6301\u6b64\u64cd\u4f5c\uff0c\u8bf7\u8054\u7cfb\u5ba2\u670d\u5904\u7406!"

    .line 329
    invoke-static {p0, v0, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 331
    :cond_1
    iget-object p1, p0, Lcom/taobao/android/tbsku/TBXSkuActivity;->mIntentData:Lcom/taobao/android/tbsku/model/IntentModel;

    iget-object p1, p1, Lcom/taobao/android/tbsku/model/IntentModel;->mItemId:Ljava/lang/String;

    iget-object v0, p0, Lcom/taobao/android/tbsku/TBXSkuActivity;->mIntentData:Lcom/taobao/android/tbsku/model/IntentModel;

    iget-object v0, v0, Lcom/taobao/android/tbsku/model/IntentModel;->mUrl:Ljava/lang/String;

    const-string v1, "taobao_sku"

    const-string v2, "UME_SKU_URL_003"

    const-string v3, "\u5f53\u524d\u5546\u54c1\u4e0d\u7b26\u5408\u8fc7\u6ee4\u89c4\u5219"

    invoke-static {v1, v2, v3, p1, v0}, Lcom/taobao/android/sku/utils/SkuLogUtils;->alarmUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0xf

    const/4 v0, 0x0

    .line 332
    invoke-direct {p0, p1, v0}, Lcom/taobao/android/tbsku/TBXSkuActivity;->finishAndSetResult(ILandroid/content/Intent;)V

    .line 333
    iget-object p1, p0, Lcom/taobao/android/tbsku/TBXSkuActivity;->mIntentData:Lcom/taobao/android/tbsku/model/IntentModel;

    iget-object p1, p1, Lcom/taobao/android/tbsku/model/IntentModel;->mDowngradeStr:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/taobao/android/tbsku/TBXSkuActivity;->downgrade2OldMsoaSku(Ljava/lang/String;)V

    goto :goto_0

    .line 335
    :cond_2
    iget-object v0, p0, Lcom/taobao/android/tbsku/TBXSkuActivity;->mTBXSkuCore:Lcom/taobao/android/tbsku/TBXSkuCore;

    if-nez v0, :cond_3

    .line 336
    new-instance v0, Lcom/taobao/android/tbsku/TBXSkuCore;

    iget-object v1, p0, Lcom/taobao/android/tbsku/TBXSkuActivity;->mUniqueId:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lcom/taobao/android/tbsku/TBXSkuCore;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/taobao/android/tbsku/TBXSkuActivity;->mTBXSkuCore:Lcom/taobao/android/tbsku/TBXSkuCore;

    .line 337
    iget-object v0, p0, Lcom/taobao/android/tbsku/TBXSkuActivity;->mTBXSkuCore:Lcom/taobao/android/tbsku/TBXSkuCore;

    invoke-virtual {v0}, Lcom/taobao/android/tbsku/TBXSkuCore;->getSkuCore()Lcom/taobao/android/sku/AliXSkuCore;

    move-result-object v0

    new-instance v1, Lcom/taobao/android/tbsku/presenter/TBXSkuPopupPresenter;

    invoke-direct {v1, p0}, Lcom/taobao/android/tbsku/presenter/TBXSkuPopupPresenter;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/taobao/android/sku/AliXSkuCore;->registerAlixSkuPresenter(Lcom/taobao/android/sku/presenter/IAliXSkuPresenter;)V

    .line 338
    iget-object v0, p0, Lcom/taobao/android/tbsku/TBXSkuActivity;->mTBXSkuCore:Lcom/taobao/android/tbsku/TBXSkuCore;

    invoke-virtual {v0, p1}, Lcom/taobao/android/tbsku/TBXSkuCore;->initData(Lcom/alibaba/fastjson/JSONObject;)V

    .line 339
    iget-object p1, p0, Lcom/taobao/android/tbsku/TBXSkuActivity;->mTBXSkuCore:Lcom/taobao/android/tbsku/TBXSkuCore;

    iget-object v0, p0, Lcom/taobao/android/tbsku/TBXSkuActivity;->mIntentData:Lcom/taobao/android/tbsku/model/IntentModel;

    invoke-virtual {v0}, Lcom/taobao/android/tbsku/model/IntentModel;->getExtInputData()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/taobao/android/tbsku/TBXSkuCore;->setExtInputData(Lcom/alibaba/fastjson/JSONObject;)V

    .line 340
    iget-object p1, p0, Lcom/taobao/android/tbsku/TBXSkuActivity;->mTBXSkuCore:Lcom/taobao/android/tbsku/TBXSkuCore;

    new-instance v0, Lcom/taobao/android/tbsku/TBXSkuActivity$1;

    invoke-direct {v0, p0}, Lcom/taobao/android/tbsku/TBXSkuActivity$1;-><init>(Lcom/taobao/android/tbsku/TBXSkuActivity;)V

    invoke-virtual {p1, v0}, Lcom/taobao/android/tbsku/TBXSkuCore;->setDowngrade(Lcom/taobao/android/tbsku/downgrade/IDowngrade;)V

    .line 353
    iget-object p1, p0, Lcom/taobao/android/tbsku/TBXSkuActivity;->mTBXSkuCore:Lcom/taobao/android/tbsku/TBXSkuCore;

    invoke-virtual {p1}, Lcom/taobao/android/tbsku/TBXSkuCore;->showSku()V

    :cond_3
    :goto_0
    return-void
.end method

.method private unregisterSkuUpdateReceiver()V
    .locals 1

    .line 234
    :try_start_0
    iget-object v0, p0, Lcom/taobao/android/tbsku/TBXSkuActivity;->mSkuUpdateDataReceiver:Lcom/taobao/android/tbsku/TBXSkuActivity$SkuUpdateDataReceiver;

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/taobao/android/tbsku/TBXSkuActivity;->mSkuUpdateDataReceiver:Lcom/taobao/android/tbsku/TBXSkuActivity$SkuUpdateDataReceiver;

    invoke-virtual {p0, v0}, Lcom/taobao/android/tbsku/TBXSkuActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 242
    :catch_0
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/taobao/android/tbsku/TBXSkuActivity;->mSkuCallbackReceiver:Lcom/taobao/android/tbsku/TBXSkuActivity$SkuActionCallback;

    if-eqz v0, :cond_1

    .line 243
    iget-object v0, p0, Lcom/taobao/android/tbsku/TBXSkuActivity;->mSkuCallbackReceiver:Lcom/taobao/android/tbsku/TBXSkuActivity$SkuActionCallback;

    invoke-virtual {p0, v0}, Lcom/taobao/android/tbsku/TBXSkuActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_1
    return-void
.end method

.method private updateSku(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 1

    .line 315
    invoke-direct {p0, p1}, Lcom/taobao/android/tbsku/TBXSkuActivity;->alarmUrlRedirectUrl(Lcom/alibaba/fastjson/JSONObject;)V

    .line 316
    iget-object v0, p0, Lcom/taobao/android/tbsku/TBXSkuActivity;->mTBXSkuCore:Lcom/taobao/android/tbsku/TBXSkuCore;

    if-eqz v0, :cond_0

    .line 317
    invoke-virtual {v0, p1}, Lcom/taobao/android/tbsku/TBXSkuCore;->updateSku(Lcom/alibaba/fastjson/JSONObject;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addSkuInRootContainer(Landroid/view/View;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 251
    invoke-direct {p0}, Lcom/taobao/android/tbsku/TBXSkuActivity;->isActivityDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/taobao/android/tbsku/TBXSkuActivity;->mRootContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 255
    iget-object v0, p0, Lcom/taobao/android/tbsku/TBXSkuActivity;->mRootContainer:Landroid/view/ViewGroup;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 175
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 177
    new-instance p1, Lcom/taobao/android/tbsku/model/IntentModel;

    invoke-virtual {p0}, Lcom/taobao/android/tbsku/TBXSkuActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/taobao/android/tbsku/model/IntentModel;-><init>(Landroid/content/Intent;)V

    iput-object p1, p0, Lcom/taobao/android/tbsku/TBXSkuActivity;->mIntentData:Lcom/taobao/android/tbsku/model/IntentModel;

    .line 178
    iget-object p1, p0, Lcom/taobao/android/tbsku/TBXSkuActivity;->mIntentData:Lcom/taobao/android/tbsku/model/IntentModel;

    iget-boolean p1, p1, Lcom/taobao/android/tbsku/model/IntentModel;->isBroken:Z

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "UME_SKU_URL_001"

    const-string v3, "taobao_sku"

    if-eqz p1, :cond_0

    .line 179
    iget-object p1, p0, Lcom/taobao/android/tbsku/TBXSkuActivity;->mIntentData:Lcom/taobao/android/tbsku/model/IntentModel;

    iget-object p1, p1, Lcom/taobao/android/tbsku/model/IntentModel;->mMsg:Ljava/lang/String;

    iget-object v4, p0, Lcom/taobao/android/tbsku/TBXSkuActivity;->mIntentData:Lcom/taobao/android/tbsku/model/IntentModel;

    iget-object v4, v4, Lcom/taobao/android/tbsku/model/IntentModel;->mItemId:Ljava/lang/String;

    iget-object v5, p0, Lcom/taobao/android/tbsku/TBXSkuActivity;->mIntentData:Lcom/taobao/android/tbsku/model/IntentModel;

    iget-object v5, v5, Lcom/taobao/android/tbsku/model/IntentModel;->mUrl:Ljava/lang/String;

    invoke-static {v3, v2, p1, v4, v5}, Lcom/taobao/android/sku/utils/SkuLogUtils;->alarmUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    iget-object p1, p0, Lcom/taobao/android/tbsku/TBXSkuActivity;->mIntentData:Lcom/taobao/android/tbsku/model/IntentModel;

    iget-object p1, p1, Lcom/taobao/android/tbsku/model/IntentModel;->mMsg:Ljava/lang/String;

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 181
    iget-object p1, p0, Lcom/taobao/android/tbsku/TBXSkuActivity;->mIntentData:Lcom/taobao/android/tbsku/model/IntentModel;

    iget p1, p1, Lcom/taobao/android/tbsku/model/IntentModel;->mActivityResultCode:I

    invoke-direct {p0, p1, v0}, Lcom/taobao/android/tbsku/TBXSkuActivity;->finishAndSetResult(ILandroid/content/Intent;)V

    return-void

    .line 185
    :cond_0
    iget-object p1, p0, Lcom/taobao/android/tbsku/TBXSkuActivity;->mIntentData:Lcom/taobao/android/tbsku/model/IntentModel;

    iget-object p1, p1, Lcom/taobao/android/tbsku/model/IntentModel;->mUniqueId:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 186
    iget-object p1, p0, Lcom/taobao/android/tbsku/TBXSkuActivity;->mIntentData:Lcom/taobao/android/tbsku/model/IntentModel;

    iget-object p1, p1, Lcom/taobao/android/tbsku/model/IntentModel;->mUniqueId:Ljava/lang/String;

    iput-object p1, p0, Lcom/taobao/android/tbsku/TBXSkuActivity;->mUniqueId:Ljava/lang/String;

    .line 189
    :cond_1
    sget p1, Lcom/taobao/android/tbsku/R$layout;->xsku_activity_tbxsku:I

    invoke-virtual {p0, p1}, Lcom/taobao/android/tbsku/TBXSkuActivity;->setContentView(I)V

    .line 190
    sget p1, Lcom/taobao/android/tbsku/R$id;->xsku_activity_root_container:I

    invoke-virtual {p0, p1}, Lcom/taobao/android/tbsku/TBXSkuActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/taobao/android/tbsku/TBXSkuActivity;->mRootContainer:Landroid/view/ViewGroup;

    .line 192
    invoke-virtual {p0}, Lcom/taobao/android/tbsku/TBXSkuActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v4, -0x1

    invoke-direct {p0}, Lcom/taobao/android/tbsku/TBXSkuActivity;->getNinetyPercentScreenHeight()I

    move-result v5

    invoke-virtual {p1, v4, v5}, Landroid/view/Window;->setLayout(II)V

    .line 193
    invoke-virtual {p0}, Lcom/taobao/android/tbsku/TBXSkuActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v4, 0x50

    invoke-virtual {p1, v4}, Landroid/view/Window;->setGravity(I)V

    .line 195
    iget-object p1, p0, Lcom/taobao/android/tbsku/TBXSkuActivity;->mIntentData:Lcom/taobao/android/tbsku/model/IntentModel;

    iget-object p1, p1, Lcom/taobao/android/tbsku/model/IntentModel;->mItemId:Ljava/lang/String;

    iget-object v4, p0, Lcom/taobao/android/tbsku/TBXSkuActivity;->mIntentData:Lcom/taobao/android/tbsku/model/IntentModel;

    iget-object v4, v4, Lcom/taobao/android/tbsku/model/IntentModel;->mQueryMap:Ljava/util/Map;

    invoke-direct {p0, p1, v4, v1}, Lcom/taobao/android/tbsku/TBXSkuActivity;->sendDetailMtopRequest(Ljava/lang/String;Ljava/util/Map;Z)Z

    move-result p1

    if-nez p1, :cond_2

    .line 197
    iget-object p1, p0, Lcom/taobao/android/tbsku/TBXSkuActivity;->mIntentData:Lcom/taobao/android/tbsku/model/IntentModel;

    iget-object p1, p1, Lcom/taobao/android/tbsku/model/IntentModel;->mItemId:Ljava/lang/String;

    iget-object v1, p0, Lcom/taobao/android/tbsku/TBXSkuActivity;->mIntentData:Lcom/taobao/android/tbsku/model/IntentModel;

    iget-object v1, v1, Lcom/taobao/android/tbsku/model/IntentModel;->mUrl:Ljava/lang/String;

    const-string v4, "Mtop\u521d\u59cb\u5316\u5931\u8d25!"

    invoke-static {v3, v2, v4, p1, v1}, Lcom/taobao/android/sku/utils/SkuLogUtils;->alarmUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0xe

    .line 198
    invoke-direct {p0, p1, v0}, Lcom/taobao/android/tbsku/TBXSkuActivity;->finishAndSetResult(ILandroid/content/Intent;)V

    return-void

    .line 202
    :cond_2
    invoke-direct {p0}, Lcom/taobao/android/tbsku/TBXSkuActivity;->registerSkuUpdateReceiver()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 207
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    .line 209
    iget-object v0, p0, Lcom/taobao/android/tbsku/TBXSkuActivity;->mTBXSkuCore:Lcom/taobao/android/tbsku/TBXSkuCore;

    if-eqz v0, :cond_0

    .line 210
    invoke-virtual {v0}, Lcom/taobao/android/tbsku/TBXSkuCore;->destroy()V

    .line 212
    :cond_0
    invoke-direct {p0}, Lcom/taobao/android/tbsku/TBXSkuActivity;->unregisterSkuUpdateReceiver()V

    return-void
.end method
