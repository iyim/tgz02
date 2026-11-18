.class public Lcom/alipay/android/app/cctemplate/transport/TemplateManager;
.super Ljava/lang/Object;
.source "TemplateManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/app/cctemplate/transport/TemplateManager$DownloadItem;,
        Lcom/alipay/android/app/cctemplate/transport/TemplateManager$TemplateStatus;
    }
.end annotation


# static fields
.field private static cacheList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alipay/android/app/cctemplate/transport/TemplateManager$DownloadItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mProvider:Lcom/alipay/android/app/cctemplate/api/ITplProvider;

.field private mStorage:Lcom/alipay/android/app/cctemplate/storage/TemplateStorage;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alipay/android/app/cctemplate/transport/TemplateManager;->cacheList:Ljava/util/Map;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Lcom/alipay/android/app/cctemplate/api/ITplProvider;)V
    .locals 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/alipay/android/app/cctemplate/transport/TemplateManager;->mProvider:Lcom/alipay/android/app/cctemplate/api/ITplProvider;

    .line 63
    new-instance v0, Lcom/alipay/android/app/cctemplate/storage/TemplateStorage;

    invoke-direct {v0, p1}, Lcom/alipay/android/app/cctemplate/storage/TemplateStorage;-><init>(Lcom/alipay/android/app/cctemplate/api/ITplProvider;)V

    iput-object v0, p0, Lcom/alipay/android/app/cctemplate/transport/TemplateManager;->mStorage:Lcom/alipay/android/app/cctemplate/storage/TemplateStorage;

    return-void
.end method

.method private buildFetchParams(Ljava/util/List;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alipay/android/app/cctemplate/transport/TemplateManager$DownloadItem;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 117
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_1

    .line 118
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 122
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/android/app/cctemplate/transport/TemplateManager$DownloadItem;

    .line 123
    iget-object v2, v1, Lcom/alipay/android/app/cctemplate/transport/TemplateManager$DownloadItem;->mTplId:Ljava/lang/String;

    iget-object v1, v1, Lcom/alipay/android/app/cctemplate/transport/TemplateManager$DownloadItem;->mBirdParam:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method

.method private buildTemplateLog(Ljava/util/Map;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-nez p1, :cond_0

    const-string p1, ""

    return-object p1

    .line 313
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 314
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 315
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tplId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 317
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0xc8

    if-le v3, v4, :cond_1

    .line 318
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 320
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "birdParams="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "|"

    .line 321
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 323
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static comparePublishVersion(Lcom/alipay/android/app/cctemplate/model/Template;Lcom/alipay/android/app/cctemplate/model/Template;)Z
    .locals 0

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 490
    :cond_0
    iget-object p0, p0, Lcom/alipay/android/app/cctemplate/model/Template;->publishVersion:Ljava/lang/String;

    iget-object p1, p1, Lcom/alipay/android/app/cctemplate/model/Template;->publishVersion:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private compareResAndReqTpl(Ljava/util/List;Lcom/alipay/android/app/cctemplate/model/Template;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alipay/android/app/cctemplate/transport/TemplateManager$DownloadItem;",
            ">;",
            "Lcom/alipay/android/app/cctemplate/model/Template;",
            ")Z"
        }
    .end annotation

    const-string v0, "time"

    const-string v1, "publishVersion"

    const-string v2, "tplVersion"

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 255
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x0

    move-object v7, v3

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v5, :cond_1

    .line 257
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alipay/android/app/cctemplate/transport/TemplateManager$DownloadItem;

    iget-object v8, v8, Lcom/alipay/android/app/cctemplate/transport/TemplateManager$DownloadItem;->mTplId:Ljava/lang/String;

    iget-object v9, p2, Lcom/alipay/android/app/cctemplate/model/Template;->tplId:Ljava/lang/String;

    invoke-static {v8, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 258
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alipay/android/app/cctemplate/transport/TemplateManager$DownloadItem;

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-nez v7, :cond_2

    return v4

    .line 266
    :cond_2
    iget-object p1, v7, Lcom/alipay/android/app/cctemplate/transport/TemplateManager$DownloadItem;->mTplId:Ljava/lang/String;

    iget-object v3, p2, Lcom/alipay/android/app/cctemplate/model/Template;->tplId:Ljava/lang/String;

    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    return v4

    .line 270
    :cond_3
    new-instance p1, Lorg/json/JSONObject;

    iget-object v3, v7, Lcom/alipay/android/app/cctemplate/transport/TemplateManager$DownloadItem;->mBirdParam:Ljava/lang/String;

    invoke-direct {p1, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 271
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 272
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p2, Lcom/alipay/android/app/cctemplate/model/Template;->tplVersion:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    return v6

    .line 277
    :cond_4
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 278
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p2, Lcom/alipay/android/app/cctemplate/model/Template;->publishVersion:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    return v6

    .line 283
    :cond_5
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 284
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p2, Lcom/alipay/android/app/cctemplate/model/Template;->time:Ljava/lang/String;

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_6

    return v6

    :catch_0
    move-exception p1

    .line 289
    invoke-static {p1}, Lcom/alipay/android/app/safepaylog/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Throwable;)V

    :cond_6
    return v4
.end method

.method static compareTemplateForUpdate(Lcom/alipay/android/app/cctemplate/model/Template;Lcom/alipay/android/app/cctemplate/model/Template;)Z
    .locals 5

    .line 537
    iget-object v0, p0, Lcom/alipay/android/app/cctemplate/model/Template;->publishVersion:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/cctemplate/model/Template;->publishVersion:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/android/app/cctemplate/model/Template;->publishVersion:Ljava/lang/String;

    .line 538
    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 539
    :goto_0
    iget-object v3, p0, Lcom/alipay/android/app/cctemplate/model/Template;->tplVersion:Ljava/lang/String;

    iget-object v4, p1, Lcom/alipay/android/app/cctemplate/model/Template;->tplVersion:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/alipay/android/app/cctemplate/transport/TemplateManager;->compareVersion(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-gtz v3, :cond_2

    if-nez v3, :cond_1

    if-eqz v0, :cond_2

    .line 540
    iget-object v0, p0, Lcom/alipay/android/app/cctemplate/model/Template;->time:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/alipay/android/app/cctemplate/model/Template;->time:Ljava/lang/String;

    iget-object p1, p1, Lcom/alipay/android/app/cctemplate/model/Template;->time:Ljava/lang/String;

    .line 543
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    if-lez p0, :cond_1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 p0, 0x1

    .line 544
    :goto_2
    new-array p1, v1, [Ljava/lang/Object;

    if-eqz p0, :cond_3

    const-string v0, "YES"

    goto :goto_3

    :cond_3
    const-string v0, "NO"

    :goto_3
    aput-object v0, p1, v2

    const-string v0, "\u670d\u52a1\u7aef\u53d1\u5e03\u7248\u672c\u4e0e\u672c\u5730\u4e0d\u4e00\u6837\u6216\u53d1\u5e03\u7248\u672c\u4e00\u6837time\u5347\u7ea7,\u66f4\u65b0:%s"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 546
    invoke-static {}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->getInstance()Lcom/alipay/android/app/cctemplate/log/LogTracer;

    move-result-object v0

    const-string v1, "TemplateManager::compareTemplateForUpdate"

    invoke-virtual {v0, v1, p1}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->traceInfo(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method public static compareVersion(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5

    .line 424
    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 426
    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    .line 429
    :cond_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 p0, -0x1

    return p0

    :cond_2
    const-string v0, "\\."

    .line 433
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 434
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 437
    array-length v3, v2

    const/4 v4, 0x3

    if-ne v3, v4, :cond_5

    array-length v3, v0

    if-ne v3, v4, :cond_5

    const/4 p0, 0x0

    :goto_0
    if-ge p0, v4, :cond_4

    .line 439
    aget-object p1, v2, p0

    aget-object v3, v0, p0

    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 440
    aget-object p1, v2, p0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    aget-object p0, v0, p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    sub-int/2addr p1, p0

    return p1

    :cond_3
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_4
    return v1

    .line 444
    :cond_5
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private createBirdParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 407
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    .line 408
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\"needGray\":\""

    .line 409
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Y"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\"tplId\":\""

    .line 410
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\"tplVersion\":\""

    .line 411
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\"publishVersion\":\""

    .line 412
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\"time\":\""

    .line 413
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\"platform\":\"android\""

    .line 414
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, ","

    .line 416
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\"uid\":\""

    .line 417
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string p1, "}"

    .line 419
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 420
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private findTplStatus(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/alipay/android/app/cctemplate/transport/TemplateManager$DownloadItem;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 296
    sget-object p1, Lcom/alipay/android/app/cctemplate/transport/TemplateManager$TemplateStatus;->UPDATE:Lcom/alipay/android/app/cctemplate/transport/TemplateManager$TemplateStatus;

    iget-object p1, p1, Lcom/alipay/android/app/cctemplate/transport/TemplateManager$TemplateStatus;->mFlag:Ljava/lang/String;

    return-object p1

    .line 298
    :cond_0
    sget-object v0, Lcom/alipay/android/app/cctemplate/transport/TemplateManager$TemplateStatus;->UPDATE:Lcom/alipay/android/app/cctemplate/transport/TemplateManager$TemplateStatus;

    .line 299
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/android/app/cctemplate/transport/TemplateManager$DownloadItem;

    .line 300
    iget-object v2, v1, Lcom/alipay/android/app/cctemplate/transport/TemplateManager$DownloadItem;->mTplId:Ljava/lang/String;

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 301
    iget-object v0, v1, Lcom/alipay/android/app/cctemplate/transport/TemplateManager$DownloadItem;->mStatus:Lcom/alipay/android/app/cctemplate/transport/TemplateManager$TemplateStatus;

    .line 305
    :cond_2
    iget-object p1, v0, Lcom/alipay/android/app/cctemplate/transport/TemplateManager$TemplateStatus;->mFlag:Ljava/lang/String;

    return-object p1
.end method

.method public static getTemplateVersion()Ljava/lang/String;
    .locals 1

    .line 398
    invoke-static {}, Lcom/alipay/android/app/cctemplate/api/TemplateService;->getBirdNestVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initializeDlResult(Ljava/util/List;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alipay/android/app/cctemplate/transport/TemplateManager$DownloadItem;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 327
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 328
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/android/app/cctemplate/transport/TemplateManager$DownloadItem;

    .line 329
    iget-object v1, v1, Lcom/alipay/android/app/cctemplate/transport/TemplateManager$DownloadItem;->mTplId:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private initializeTemplateInfo(Ljava/util/List;)Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alipay/android/app/cctemplate/transport/TemplateManager$DownloadItem;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alipay/android/app/cctemplate/log/LogTracer$TemplateInfo;",
            ">;"
        }
    .end annotation

    .line 335
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-nez p1, :cond_0

    return-object v0

    .line 340
    :cond_0
    iget-object v1, p0, Lcom/alipay/android/app/cctemplate/transport/TemplateManager;->mProvider:Lcom/alipay/android/app/cctemplate/api/ITplProvider;

    invoke-interface {v1}, Lcom/alipay/android/app/cctemplate/api/ITplProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/android/app/cctemplate/utils/NetworkUtils;->getNetworkName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 341
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/android/app/cctemplate/transport/TemplateManager$DownloadItem;

    .line 342
    iget-object v8, v2, Lcom/alipay/android/app/cctemplate/transport/TemplateManager$DownloadItem;->mTplId:Ljava/lang/String;

    .line 343
    invoke-virtual {p0, v8}, Lcom/alipay/android/app/cctemplate/transport/TemplateManager;->getLocalTemplate(Ljava/lang/String;)Lcom/alipay/android/app/cctemplate/model/Template;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 346
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v3, Lcom/alipay/android/app/cctemplate/model/Template;->publishVersion:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v3, Lcom/alipay/android/app/cctemplate/model/Template;->time:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    const-string v3, "NULL"

    .line 348
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "-NULL"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 349
    new-instance v9, Lcom/alipay/android/app/cctemplate/log/LogTracer$TemplateInfo;

    iget-object v2, v2, Lcom/alipay/android/app/cctemplate/transport/TemplateManager$DownloadItem;->mStatus:Lcom/alipay/android/app/cctemplate/transport/TemplateManager$TemplateStatus;

    iget-object v5, v2, Lcom/alipay/android/app/cctemplate/transport/TemplateManager$TemplateStatus;->mFlag:Ljava/lang/String;

    invoke-static {}, Lcom/alipay/android/app/cctemplate/utils/DateUtil;->format()Ljava/lang/String;

    move-result-object v7

    const-string v6, "F"

    move-object v2, v9

    move-object v4, v1

    invoke-direct/range {v2 .. v7}, Lcom/alipay/android/app/cctemplate/log/LogTracer$TemplateInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static needRollback(Lcom/alipay/android/app/cctemplate/model/Template;Lcom/alipay/android/app/cctemplate/model/Template;)Z
    .locals 8

    const-string v0, "-"

    const-string v1, "time version equals"

    const-string v2, "TemplateManager::needRollback rollbackString:"

    const/4 v3, 0x0

    if-eqz p0, :cond_5

    if-nez p1, :cond_0

    goto/16 :goto_1

    .line 505
    :cond_0
    iget-object v4, p0, Lcom/alipay/android/app/cctemplate/model/Template;->time:Ljava/lang/String;

    iget-object v5, p1, Lcom/alipay/android/app/cctemplate/model/Template;->time:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/alipay/android/app/cctemplate/model/Template;->tplVersion:Ljava/lang/String;

    iget-object v5, p1, Lcom/alipay/android/app/cctemplate/model/Template;->tplVersion:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 506
    invoke-static {}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->getInstance()Lcom/alipay/android/app/cctemplate/log/LogTracer;

    move-result-object p0

    invoke-virtual {p0, v2, v1}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->traceInfo(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    .line 510
    :cond_1
    iget-object v1, p0, Lcom/alipay/android/app/cctemplate/model/Template;->rollbackString:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 511
    invoke-static {}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->getInstance()Lcom/alipay/android/app/cctemplate/log/LogTracer;

    move-result-object p0

    const-string p1, "isEmpty"

    invoke-virtual {p0, v2, p1}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->traceInfo(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    .line 516
    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/alipay/android/app/cctemplate/model/Template;->rollbackString:Ljava/lang/String;

    invoke-static {v1}, Lcom/alibaba/fastjson/JSONArray;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v1

    .line 517
    invoke-static {}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->getInstance()Lcom/alipay/android/app/cctemplate/log/LogTracer;

    move-result-object v4

    iget-object v5, p0, Lcom/alipay/android/app/cctemplate/model/Template;->rollbackString:Ljava/lang/String;

    invoke-virtual {v4, v2, v5}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->traceInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_4

    .line 520
    invoke-virtual {v1, v4}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v5

    const-string v6, "tplVersion"

    .line 521
    invoke-virtual {v5, v6}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "time"

    .line 522
    invoke-virtual {v5, v7}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 523
    iget-object v7, p1, Lcom/alipay/android/app/cctemplate/model/Template;->tplVersion:Ljava/lang/String;

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p1, Lcom/alipay/android/app/cctemplate/model/Template;->time:Ljava/lang/String;

    invoke-static {v5, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 524
    invoke-static {}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->getInstance()Lcom/alipay/android/app/cctemplate/log/LogTracer;

    move-result-object v1

    const-string v2, "TemplateManager::needRollback:"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->traceInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    invoke-static {}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->getInstance()Lcom/alipay/android/app/cctemplate/log/LogTracer;

    move-result-object v1

    const-string v2, "rollback"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/alipay/android/app/cctemplate/model/Template;->tplId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Lcom/alipay/android/app/cctemplate/model/Template;->tplVersion:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/alipay/android/app/cctemplate/model/Template;->time:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/alipay/android/app/cctemplate/model/Template;->tplVersion:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/alipay/android/app/cctemplate/model/Template;->time:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, ""

    invoke-virtual {v1, v2, p0, p1}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->traceCount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    :cond_4
    return v3

    .line 501
    :cond_5
    :goto_1
    invoke-static {}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->getInstance()Lcom/alipay/android/app/cctemplate/log/LogTracer;

    move-result-object p0

    invoke-virtual {p0, v2, v1}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->traceInfo(Ljava/lang/String;Ljava/lang/String;)V

    return v3
.end method

.method public static whetherNeedUpdate(Lcom/alipay/android/app/cctemplate/model/Template;Lcom/alipay/android/app/cctemplate/model/Template;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 463
    :cond_0
    iget-object v1, p0, Lcom/alipay/android/app/cctemplate/model/Template;->tplVersion:Ljava/lang/String;

    .line 466
    invoke-static {}, Lcom/alipay/android/app/cctemplate/transport/TemplateManager;->getTemplateVersion()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/android/app/cctemplate/transport/TemplateManager;->compareVersion(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-gtz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    const-string v4, "5.0.0"

    .line 468
    invoke-static {v1, v4}, Lcom/alipay/android/app/cctemplate/transport/TemplateManager;->compareVersion(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    if-eqz v2, :cond_4

    if-eqz v4, :cond_4

    const-string v0, "TemplateManager::whetherNeedUpdate"

    if-nez p1, :cond_3

    .line 472
    invoke-static {}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->getInstance()Lcom/alipay/android/app/cctemplate/log/LogTracer;

    move-result-object p0

    const-string p1, "local template is null, need update"

    invoke-virtual {p0, v0, p1}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->traceInfo(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    .line 475
    :cond_3
    invoke-static {p0, p1}, Lcom/alipay/android/app/cctemplate/transport/TemplateManager;->compareTemplateForUpdate(Lcom/alipay/android/app/cctemplate/model/Template;Lcom/alipay/android/app/cctemplate/model/Template;)Z

    move-result p0

    .line 476
    invoke-static {}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->getInstance()Lcom/alipay/android/app/cctemplate/log/LogTracer;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "call compareTemplateForUpdate(...) result:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->traceInfo(Ljava/lang/String;Ljava/lang/String;)V

    return p0

    .line 481
    :cond_4
    invoke-static {}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->getInstance()Lcom/alipay/android/app/cctemplate/log/LogTracer;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remoteTplVersion is invalid:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "template"

    const-string v2, "TplManagerTplversionIllegal"

    invoke-virtual {p0, v1, v2, p1}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->traceException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method


# virtual methods
.method public createBirdParamsFromTemplate(Lcom/alipay/android/app/cctemplate/model/Template;)Ljava/lang/String;
    .locals 6

    .line 402
    iget-object v1, p1, Lcom/alipay/android/app/cctemplate/model/Template;->tplId:Ljava/lang/String;

    iget-object v2, p1, Lcom/alipay/android/app/cctemplate/model/Template;->tplVersion:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/android/app/cctemplate/model/Template;->publishVersion:Ljava/lang/String;

    iget-object v4, p1, Lcom/alipay/android/app/cctemplate/model/Template;->time:Ljava/lang/String;

    iget-object v5, p1, Lcom/alipay/android/app/cctemplate/model/Template;->userId:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/alipay/android/app/cctemplate/transport/TemplateManager;->createBirdParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public downloadFromCacheList(Lcom/alipay/android/app/cctemplate/api/ITplTransport;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/android/app/cctemplate/api/ITplTransport;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 102
    sget-object v0, Lcom/alipay/android/app/cctemplate/transport/TemplateManager;->cacheList:Ljava/util/Map;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 106
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 107
    sget-object v1, Lcom/alipay/android/app/cctemplate/transport/TemplateManager;->cacheList:Ljava/util/Map;

    monitor-enter v1

    .line 108
    :try_start_0
    sget-object v2, Lcom/alipay/android/app/cctemplate/transport/TemplateManager;->cacheList:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 109
    sget-object v4, Lcom/alipay/android/app/cctemplate/transport/TemplateManager;->cacheList:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 111
    :cond_1
    sget-object v2, Lcom/alipay/android/app/cctemplate/transport/TemplateManager;->cacheList:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 112
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 113
    invoke-virtual {p0, v0, v1, p1, v2}, Lcom/alipay/android/app/cctemplate/transport/TemplateManager;->downloadTemplate(Ljava/util/List;Ljava/util/Map;Lcom/alipay/android/app/cctemplate/api/ITplTransport;Z)Ljava/util/Map;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    .line 112
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 103
    :cond_2
    :goto_1
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    return-object p1
.end method

.method public downloadTemplate(Ljava/util/List;Ljava/util/Map;Lcom/alipay/android/app/cctemplate/api/ITplTransport;Z)Ljava/util/Map;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alipay/android/app/cctemplate/transport/TemplateManager$DownloadItem;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/alipay/android/app/cctemplate/api/ITplTransport;",
            "Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "-"

    const-string v4, "template"

    if-eqz v2, :cond_e

    .line 160
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_f

    .line 164
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/alipay/android/app/cctemplate/transport/TemplateManager;->initializeDlResult(Ljava/util/List;)Ljava/util/Map;

    move-result-object v5

    .line 165
    invoke-direct/range {p0 .. p1}, Lcom/alipay/android/app/cctemplate/transport/TemplateManager;->initializeTemplateInfo(Ljava/util/List;)Ljava/util/Map;

    move-result-object v6

    .line 166
    invoke-direct/range {p0 .. p1}, Lcom/alipay/android/app/cctemplate/transport/TemplateManager;->buildFetchParams(Ljava/util/List;)Ljava/util/Map;

    move-result-object v7

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    .line 171
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    move-object/from16 v0, p3

    .line 172
    invoke-interface {v0, v7}, Lcom/alipay/android/app/cctemplate/api/ITplTransport;->fetchTemplates(Ljava/util/Map;)Ljava/util/List;

    move-result-object v8

    .line 173
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    sub-long/2addr v9, v11

    goto :goto_0

    :catch_0
    move-exception v0

    .line 175
    invoke-static {}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->getInstance()Lcom/alipay/android/app/cctemplate/log/LogTracer;

    move-result-object v11

    const-string v12, "TplDownloadEx"

    invoke-virtual {v11, v4, v12, v0}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->traceException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    if-eqz v8, :cond_9

    .line 178
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_9

    .line 179
    iget-object v0, v1, Lcom/alipay/android/app/cctemplate/transport/TemplateManager;->mProvider:Lcom/alipay/android/app/cctemplate/api/ITplProvider;

    invoke-interface {v0}, Lcom/alipay/android/app/cctemplate/api/ITplProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/app/cctemplate/utils/NetworkUtils;->getNetworkName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    const/16 v17, 0x0

    const/4 v15, 0x0

    .line 180
    :goto_1
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-ge v15, v0, :cond_8

    .line 182
    :try_start_1
    invoke-interface {v8, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/cctemplate/transport/TemplateManager;->getTemplateItem(Ljava/lang/String;)Lcom/alipay/android/app/cctemplate/model/Template;

    move-result-object v0

    .line 183
    iget-object v11, v0, Lcom/alipay/android/app/cctemplate/model/Template;->tplId:Ljava/lang/String;

    invoke-virtual {v1, v11}, Lcom/alipay/android/app/cctemplate/transport/TemplateManager;->getLocalTemplate(Ljava/lang/String;)Lcom/alipay/android/app/cctemplate/model/Template;

    move-result-object v11

    if-nez v11, :cond_1

    const-string v12, "NULL"

    goto :goto_2

    .line 185
    :cond_1
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v11, Lcom/alipay/android/app/cctemplate/model/Template;->publishVersion:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v11, Lcom/alipay/android/app/cctemplate/model/Template;->time:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 186
    :goto_2
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v0, Lcom/alipay/android/app/cctemplate/model/Template;->publishVersion:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v0, Lcom/alipay/android/app/cctemplate/model/Template;->time:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 187
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_7

    move-object/from16 p2, v8

    :try_start_2
    iget-object v8, v0, Lcom/alipay/android/app/cctemplate/model/Template;->tplId:Ljava/lang/String;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 189
    invoke-static {}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->getInstance()Lcom/alipay/android/app/cctemplate/log/LogTracer;

    move-result-object v13

    const-string v14, "TemplateManager::downloadTemplate"
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_6

    move-object/from16 v18, v3

    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_5

    move-object/from16 v19, v6

    :try_start_4
    const-string v6, "serverVer="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/alipay/android/app/cctemplate/model/Template;->tplVersion:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ",localVer="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v14, v3}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->traceInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    invoke-static {v0, v11}, Lcom/alipay/android/app/cctemplate/transport/TemplateManager;->whetherNeedUpdate(Lcom/alipay/android/app/cctemplate/model/Template;Lcom/alipay/android/app/cctemplate/model/Template;)Z

    move-result v3

    if-nez v11, :cond_2

    const/4 v11, 0x1

    goto :goto_3

    :cond_2
    const/4 v11, 0x0

    .line 197
    :goto_3
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v12

    if-le v12, v15, :cond_3

    .line 198
    invoke-direct {v1, v2, v0}, Lcom/alipay/android/app/cctemplate/transport/TemplateManager;->compareResAndReqTpl(Ljava/util/List;Lcom/alipay/android/app/cctemplate/model/Template;)Z

    move-result v12
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :cond_3
    const/4 v12, 0x1

    :goto_4
    const-string v13, "TplDownloadSaveFailed"

    const-string v14, ",tplVersion:"

    const-string v6, ",publishVersion:"

    if-eqz v12, :cond_6

    if-nez v3, :cond_4

    if-nez v11, :cond_4

    if-eqz p4, :cond_6

    .line 203
    :cond_4
    :try_start_5
    iget-object v3, v1, Lcom/alipay/android/app/cctemplate/transport/TemplateManager;->mStorage:Lcom/alipay/android/app/cctemplate/storage/TemplateStorage;

    invoke-virtual {v3, v0}, Lcom/alipay/android/app/cctemplate/storage/TemplateStorage;->saveTemplate(Lcom/alipay/android/app/cctemplate/model/Template;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v6, "T"

    goto :goto_5

    :cond_5
    const-string v11, "F"

    .line 209
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 p3, v11

    const-string v11, "tplId:"

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v0, Lcom/alipay/android/app/cctemplate/model/Template;->tplId:Ljava/lang/String;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/alipay/android/app/cctemplate/model/Template;->publishVersion:Ljava/lang/String;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/alipay/android/app/cctemplate/model/Template;->tplVersion:Ljava/lang/String;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 210
    invoke-static {}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->getInstance()Lcom/alipay/android/app/cctemplate/log/LogTracer;

    move-result-object v11

    invoke-virtual {v11, v4, v13, v6}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->traceException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v6, p3

    .line 212
    :goto_5
    iget-object v11, v0, Lcom/alipay/android/app/cctemplate/model/Template;->tplId:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v5, v11, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move/from16 v20, v15

    move-object v15, v6

    goto :goto_7

    :cond_6
    const-string v16, "E"

    if-nez v12, :cond_7

    .line 217
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4

    move/from16 v20, v15

    :try_start_6
    const-string v15, "compareReqAndResTpl:falsetplId:"

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v0, Lcom/alipay/android/app/cctemplate/model/Template;->tplId:Ljava/lang/String;

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/alipay/android/app/cctemplate/model/Template;->publishVersion:Ljava/lang/String;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/alipay/android/app/cctemplate/model/Template;->tplVersion:Ljava/lang/String;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 218
    invoke-static {}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->getInstance()Lcom/alipay/android/app/cctemplate/log/LogTracer;

    move-result-object v12

    invoke-virtual {v12, v4, v13, v6}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->traceException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_7
    move/from16 v20, v15

    .line 220
    :goto_6
    iget-object v6, v0, Lcom/alipay/android/app/cctemplate/model/Template;->tplId:Ljava/lang/String;

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-interface {v5, v6, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    invoke-static {}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->getInstance()Lcom/alipay/android/app/cctemplate/log/LogTracer;

    move-result-object v6

    const-string v12, "TplDownloadTemplateExist"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "needUpdate:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ",noLocalTemplate:"

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v4, v12, v3}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->traceCount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v15, v16

    .line 224
    :goto_7
    iget-object v3, v0, Lcom/alipay/android/app/cctemplate/model/Template;->tplId:Ljava/lang/String;

    invoke-direct {v1, v3, v2}, Lcom/alipay/android/app/cctemplate/transport/TemplateManager;->findTplStatus(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v14

    .line 225
    iget-object v0, v0, Lcom/alipay/android/app/cctemplate/model/Template;->tplId:Ljava/lang/String;

    new-instance v3, Lcom/alipay/android/app/cctemplate/log/LogTracer$TemplateInfo;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, ""

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    move-object v11, v3

    move-object v12, v8

    move-object v13, v7

    move/from16 v6, v20

    :try_start_7
    invoke-direct/range {v11 .. v16}, Lcom/alipay/android/app/cctemplate/log/LogTracer$TemplateInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2

    move-object/from16 v8, v19

    :try_start_8
    invoke-interface {v8, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_b

    :catch_1
    move-exception v0

    goto :goto_a

    :catch_2
    move-exception v0

    goto :goto_8

    :catch_3
    move-exception v0

    move-object/from16 v8, v19

    move/from16 v6, v20

    goto :goto_a

    :catch_4
    move-exception v0

    move v6, v15

    :goto_8
    move-object/from16 v8, v19

    goto :goto_a

    :catch_5
    move-exception v0

    goto :goto_9

    :catch_6
    move-exception v0

    move-object/from16 v18, v3

    goto :goto_9

    :catch_7
    move-exception v0

    move-object/from16 v18, v3

    move-object/from16 p2, v8

    :goto_9
    move-object v8, v6

    move v6, v15

    .line 227
    :goto_a
    invoke-static {}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->getInstance()Lcom/alipay/android/app/cctemplate/log/LogTracer;

    move-result-object v3

    const-string v11, "TplDownloadSaveEx"

    invoke-virtual {v3, v4, v11, v0}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->traceException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_b
    add-int/lit8 v15, v6, 0x1

    move-object v6, v8

    move-object/from16 v3, v18

    move-object/from16 v8, p2

    goto/16 :goto_1

    :cond_8
    move-object v8, v6

    goto :goto_c

    :cond_9
    move-object v8, v6

    .line 232
    invoke-static {}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->getInstance()Lcom/alipay/android/app/cctemplate/log/LogTracer;

    move-result-object v0

    invoke-direct {v1, v7}, Lcom/alipay/android/app/cctemplate/transport/TemplateManager;->buildTemplateLog(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "TplDownloadNull"

    invoke-virtual {v0, v4, v6, v3}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->traceException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    :goto_c
    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 236
    invoke-static {}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->getInstance()Lcom/alipay/android/app/cctemplate/log/LogTracer;

    move-result-object v4

    invoke-interface {v8, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/android/app/cctemplate/log/LogTracer$TemplateInfo;

    invoke-virtual {v4, v3}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->traceTemplate(Lcom/alipay/android/app/cctemplate/log/LogTracer$TemplateInfo;)V

    goto :goto_d

    .line 239
    :cond_a
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/android/app/cctemplate/transport/TemplateManager$DownloadItem;

    .line 240
    iget-object v3, v2, Lcom/alipay/android/app/cctemplate/transport/TemplateManager$DownloadItem;->mTplId:Ljava/lang/String;

    invoke-interface {v5, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 241
    iget-object v3, v2, Lcom/alipay/android/app/cctemplate/transport/TemplateManager$DownloadItem;->mTplId:Ljava/lang/String;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 242
    sget-object v3, Lcom/alipay/android/app/cctemplate/transport/TemplateManager;->cacheList:Ljava/util/Map;

    iget-object v2, v2, Lcom/alipay/android/app/cctemplate/transport/TemplateManager$DownloadItem;->mTplId:Ljava/lang/String;

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e

    .line 244
    :cond_c
    sget-object v3, Lcom/alipay/android/app/cctemplate/transport/TemplateManager;->cacheList:Ljava/util/Map;

    iget-object v4, v2, Lcom/alipay/android/app/cctemplate/transport/TemplateManager$DownloadItem;->mTplId:Ljava/lang/String;

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e

    :cond_d
    return-object v5

    .line 161
    :cond_e
    :goto_f
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method

.method public downloadTemplateCheckOverTime(Lcom/alipay/android/app/cctemplate/transport/TemplateManager$DownloadItem;Lcom/alipay/android/app/cctemplate/api/ITplTransport;Z)Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/android/app/cctemplate/transport/TemplateManager$DownloadItem;",
            "Lcom/alipay/android/app/cctemplate/api/ITplTransport;",
            "Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 71
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 73
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 74
    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    iget-object v0, p1, Lcom/alipay/android/app/cctemplate/transport/TemplateManager$DownloadItem;->mStatus:Lcom/alipay/android/app/cctemplate/transport/TemplateManager$TemplateStatus;

    sget-object v1, Lcom/alipay/android/app/cctemplate/transport/TemplateManager$TemplateStatus;->ADD:Lcom/alipay/android/app/cctemplate/transport/TemplateManager$TemplateStatus;

    if-eq v0, v1, :cond_1

    iget-object v0, p1, Lcom/alipay/android/app/cctemplate/transport/TemplateManager$DownloadItem;->mStatus:Lcom/alipay/android/app/cctemplate/transport/TemplateManager$TemplateStatus;

    sget-object v1, Lcom/alipay/android/app/cctemplate/transport/TemplateManager$TemplateStatus;->FORCE:Lcom/alipay/android/app/cctemplate/transport/TemplateManager$TemplateStatus;

    if-eq v0, v1, :cond_1

    .line 77
    iget-object v0, p0, Lcom/alipay/android/app/cctemplate/transport/TemplateManager;->mProvider:Lcom/alipay/android/app/cctemplate/api/ITplProvider;

    invoke-interface {v0}, Lcom/alipay/android/app/cctemplate/api/ITplProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/app/cctemplate/utils/NetworkUtils;->getNetworkType(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 79
    new-instance p1, Landroid/os/ConditionVariable;

    invoke-direct {p1}, Landroid/os/ConditionVariable;-><init>()V

    .line 80
    new-instance v8, Ljava/lang/Thread;

    new-instance v9, Lcom/alipay/android/app/cctemplate/transport/TemplateManager$1;

    move-object v0, v9

    move-object v1, p0

    move-object v2, v7

    move-object v4, p2

    move v5, p3

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/alipay/android/app/cctemplate/transport/TemplateManager$1;-><init>(Lcom/alipay/android/app/cctemplate/transport/TemplateManager;Ljava/util/Map;Ljava/util/List;Lcom/alipay/android/app/cctemplate/api/ITplTransport;ZLandroid/os/ConditionVariable;)V

    invoke-direct {v8, v9}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 90
    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    const-wide/16 p2, 0xbb8

    .line 91
    invoke-virtual {p1, p2, p3}, Landroid/os/ConditionVariable;->block(J)Z

    goto :goto_0

    .line 93
    :cond_0
    sget-object p2, Lcom/alipay/android/app/cctemplate/transport/TemplateManager;->cacheList:Ljava/util/Map;

    iget-object p3, p1, Lcom/alipay/android/app/cctemplate/transport/TemplateManager$DownloadItem;->mTplId:Ljava/lang/String;

    invoke-interface {p2, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 96
    invoke-virtual {p0, v3, p1, p2, p3}, Lcom/alipay/android/app/cctemplate/transport/TemplateManager;->downloadTemplate(Ljava/util/List;Ljava/util/Map;Lcom/alipay/android/app/cctemplate/api/ITplTransport;Z)Ljava/util/Map;

    move-result-object p1

    invoke-interface {v7, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :goto_0
    return-object v7
.end method

.method public getLocalTemplate(Ljava/lang/String;)Lcom/alipay/android/app/cctemplate/model/Template;
    .locals 1

    .line 390
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/cctemplate/transport/TemplateManager;->mStorage:Lcom/alipay/android/app/cctemplate/storage/TemplateStorage;

    invoke-virtual {v0, p1}, Lcom/alipay/android/app/cctemplate/storage/TemplateStorage;->getTemplate(Ljava/lang/String;)Lcom/alipay/android/app/cctemplate/model/Template;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 392
    invoke-static {}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->getInstance()Lcom/alipay/android/app/cctemplate/log/LogTracer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->printExceptionStackTrace(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getStorage()Lcom/alipay/android/app/cctemplate/storage/TemplateStorage;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/alipay/android/app/cctemplate/transport/TemplateManager;->mStorage:Lcom/alipay/android/app/cctemplate/storage/TemplateStorage;

    return-object v0
.end method

.method public getTemplateItem(Ljava/lang/String;)Lcom/alipay/android/app/cctemplate/model/Template;
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 364
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 365
    new-instance p1, Lcom/alipay/android/app/cctemplate/model/Template;

    invoke-direct {p1}, Lcom/alipay/android/app/cctemplate/model/Template;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v0, "data"

    .line 366
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/alipay/android/app/cctemplate/model/Template;->data:Ljava/lang/String;

    const-string v0, "tag"

    .line 367
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/alipay/android/app/cctemplate/model/Template;->tag:Ljava/lang/String;

    const-string v0, "time"

    .line 368
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/alipay/android/app/cctemplate/model/Template;->time:Ljava/lang/String;

    const-string v0, "html"

    .line 369
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/alipay/android/app/cctemplate/model/Template;->html:Ljava/lang/String;

    const-string v0, "name"

    .line 370
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/alipay/android/app/cctemplate/model/Template;->name:Ljava/lang/String;

    const-string v0, "tplId"

    .line 371
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/alipay/android/app/cctemplate/model/Template;->tplId:Ljava/lang/String;

    const-string v0, "format"

    .line 372
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/alipay/android/app/cctemplate/model/Template;->format:Ljava/lang/String;

    const-string v0, "tplVersion"

    .line 373
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/alipay/android/app/cctemplate/model/Template;->tplVersion:Ljava/lang/String;

    const-string v0, "publishVersion"

    .line 374
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/alipay/android/app/cctemplate/model/Template;->publishVersion:Ljava/lang/String;

    const-string v0, "rollBack"

    .line 375
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/alipay/android/app/cctemplate/model/Template;->rollbackString:Ljava/lang/String;

    const-string v0, "userId"

    .line 376
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/alipay/android/app/cctemplate/model/Template;->userId:Ljava/lang/String;

    .line 378
    invoke-static {}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->getInstance()Lcom/alipay/android/app/cctemplate/log/LogTracer;

    move-result-object v0

    const-string v1, "TemplateManager::getTemplateItem rollbackString userId item.tplVersion:"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcom/alipay/android/app/cctemplate/model/Template;->rollbackString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/alipay/android/app/cctemplate/model/Template;->userId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/alipay/android/app/cctemplate/model/Template;->tplVersion:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->traceInfo(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception p1

    move-object v4, v0

    move-object v0, p1

    move-object p1, v4

    .line 380
    :goto_0
    invoke-static {}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->getInstance()Lcom/alipay/android/app/cctemplate/log/LogTracer;

    move-result-object v1

    const-string v2, "template"

    const-string v3, "TplManagerParseFromJsonEx"

    invoke-virtual {v1, v2, v3, v0}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->traceException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_0
    move-object p1, v0

    :goto_1
    return-object p1
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method
