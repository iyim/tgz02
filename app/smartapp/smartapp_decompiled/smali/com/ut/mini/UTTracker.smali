.class public Lcom/ut/mini/UTTracker;
.super Ljava/lang/Object;
.source "UTTracker.java"


# static fields
.field public static final PAGE_STATUS_CODE_302:I = 0x1

.field private static final TAG:Ljava/lang/String; = "UTTracker"

.field private static s_logfield_cache:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static s_p:Ljava/util/regex/Pattern;


# instance fields
.field private mAppkey:Ljava/lang/String;

.field private mArgsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTrackerId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "(\\|\\||[\t\r\n]|\u0001|\u0000)+"

    .line 75
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/ut/mini/UTTracker;->s_p:Ljava/util/regex/Pattern;

    const/4 v0, 0x0

    .line 77
    sput-object v0, Lcom/ut/mini/UTTracker;->s_logfield_cache:Ljava/util/List;

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x22

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/ut/mini/UTTracker;->s_logfield_cache:Ljava/util/List;

    .line 84
    invoke-static {}, Lcom/alibaba/analytics/core/model/LogField;->values()[Lcom/alibaba/analytics/core/model/LogField;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 85
    sget-object v4, Lcom/ut/mini/UTTracker;->s_logfield_cache:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 73
    iput-object v0, p0, Lcom/ut/mini/UTTracker;->mTrackerId:Ljava/lang/String;

    .line 74
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/ut/mini/UTTracker;->mArgsMap:Ljava/util/Map;

    .line 79
    iput-object v0, p0, Lcom/ut/mini/UTTracker;->mAppkey:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000()Ljava/util/List;
    .locals 1

    .line 71
    sget-object v0, Lcom/ut/mini/UTTracker;->s_logfield_cache:Ljava/util/List;

    return-object v0
.end method

.method private static dropAllIllegalKey(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_12

    .line 271
    sget-object v0, Lcom/alibaba/analytics/core/model/LogField;->IMEI:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v0}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    sget-object v0, Lcom/alibaba/analytics/core/model/LogField;->IMEI:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v0}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    :cond_0
    sget-object v0, Lcom/alibaba/analytics/core/model/LogField;->IMSI:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v0}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 276
    sget-object v0, Lcom/alibaba/analytics/core/model/LogField;->IMSI:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v0}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    :cond_1
    sget-object v0, Lcom/alibaba/analytics/core/model/LogField;->CARRIER:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v0}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 280
    sget-object v0, Lcom/alibaba/analytics/core/model/LogField;->CARRIER:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v0}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    :cond_2
    sget-object v0, Lcom/alibaba/analytics/core/model/LogField;->ACCESS:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v0}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 284
    sget-object v0, Lcom/alibaba/analytics/core/model/LogField;->ACCESS:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v0}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    :cond_3
    sget-object v0, Lcom/alibaba/analytics/core/model/LogField;->ACCESS_SUBTYPE:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v0}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 288
    sget-object v0, Lcom/alibaba/analytics/core/model/LogField;->ACCESS_SUBTYPE:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v0}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    :cond_4
    sget-object v0, Lcom/alibaba/analytics/core/model/LogField;->CHANNEL:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v0}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 292
    sget-object v0, Lcom/alibaba/analytics/core/model/LogField;->CHANNEL:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v0}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    :cond_5
    sget-object v0, Lcom/alibaba/analytics/core/model/LogField;->LL_USERNICK:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v0}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 296
    sget-object v0, Lcom/alibaba/analytics/core/model/LogField;->LL_USERNICK:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v0}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    :cond_6
    sget-object v0, Lcom/alibaba/analytics/core/model/LogField;->USERNICK:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v0}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 300
    sget-object v0, Lcom/alibaba/analytics/core/model/LogField;->USERNICK:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v0}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    :cond_7
    sget-object v0, Lcom/alibaba/analytics/core/model/LogField;->LL_USERID:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v0}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 304
    sget-object v0, Lcom/alibaba/analytics/core/model/LogField;->LL_USERID:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v0}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    :cond_8
    sget-object v0, Lcom/alibaba/analytics/core/model/LogField;->USERID:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v0}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 308
    sget-object v0, Lcom/alibaba/analytics/core/model/LogField;->USERID:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v0}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    :cond_9
    sget-object v0, Lcom/alibaba/analytics/core/model/LogField;->SDKVERSION:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v0}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 312
    sget-object v0, Lcom/alibaba/analytics/core/model/LogField;->SDKVERSION:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v0}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    :cond_a
    sget-object v0, Lcom/alibaba/analytics/core/model/LogField;->START_SESSION_TIMESTAMP:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v0}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 316
    sget-object v0, Lcom/alibaba/analytics/core/model/LogField;->START_SESSION_TIMESTAMP:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v0}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    :cond_b
    sget-object v0, Lcom/alibaba/analytics/core/model/LogField;->UTDID:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v0}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 320
    sget-object v0, Lcom/alibaba/analytics/core/model/LogField;->UTDID:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v0}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    :cond_c
    sget-object v0, Lcom/alibaba/analytics/core/model/LogField;->SDKTYPE:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v0}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 324
    sget-object v0, Lcom/alibaba/analytics/core/model/LogField;->SDKTYPE:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v0}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    :cond_d
    sget-object v0, Lcom/alibaba/analytics/core/model/LogField;->RESERVE2:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v0}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 328
    sget-object v0, Lcom/alibaba/analytics/core/model/LogField;->RESERVE2:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v0}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    :cond_e
    sget-object v0, Lcom/alibaba/analytics/core/model/LogField;->RESERVE3:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v0}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 332
    sget-object v0, Lcom/alibaba/analytics/core/model/LogField;->RESERVE3:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v0}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    :cond_f
    sget-object v0, Lcom/alibaba/analytics/core/model/LogField;->RESERVE4:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v0}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 336
    sget-object v0, Lcom/alibaba/analytics/core/model/LogField;->RESERVE4:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v0}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    :cond_10
    sget-object v0, Lcom/alibaba/analytics/core/model/LogField;->RESERVE5:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v0}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 340
    sget-object v0, Lcom/alibaba/analytics/core/model/LogField;->RESERVE5:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v0}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    :cond_11
    sget-object v0, Lcom/alibaba/analytics/core/model/LogField;->RESERVES:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v0}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 344
    sget-object v0, Lcom/alibaba/analytics/core/model/LogField;->RESERVES:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v0}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_12
    return-void
.end method

.method private fillReserve1Fields(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 380
    sget-object v0, Lcom/alibaba/analytics/core/model/LogField;->SDKTYPE:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v0}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mini"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    iget-object v0, p0, Lcom/ut/mini/UTTracker;->mAppkey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 383
    sget-object v0, Lcom/alibaba/analytics/core/model/LogField;->APPKEY:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v0}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ut/mini/UTTracker;->mAppkey:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 385
    :cond_0
    sget-object v0, Lcom/alibaba/analytics/core/model/LogField;->APPKEY:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v0}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/alibaba/analytics/core/ClientVariables;->getInstance()Lcom/alibaba/analytics/core/ClientVariables;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/analytics/core/ClientVariables;->getAppKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method private static fillReservesFields(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 390
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "_track_id"

    .line 392
    invoke-interface {p0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 393
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 394
    invoke-interface {p0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    invoke-static {v2}, Lcom/alibaba/analytics/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "_tkid"

    .line 396
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 403
    sget-object v1, Lcom/alibaba/analytics/core/model/LogField;->RESERVES:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v1}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/alibaba/analytics/utils/StringUtils;->convertMapToString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    :cond_1
    sget-object v0, Lcom/alibaba/analytics/core/model/LogField;->PAGE:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v0}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 407
    sget-object v0, Lcom/alibaba/analytics/core/model/LogField;->PAGE:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v0}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UT"

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method private static translateFieldsName(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_1

    const-string v0, "_field_os"

    .line 359
    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 360
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 361
    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    sget-object v0, Lcom/alibaba/analytics/core/model/LogField;->OS:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v0}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v0, "_field_os_version"

    .line 366
    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 367
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 368
    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    sget-object v0, Lcom/alibaba/analytics/core/model/LogField;->OSVERSION:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v0}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method


# virtual methods
.method public addTPKCache(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 633
    invoke-static {}, Lcom/alibaba/analytics/core/config/UTTPKBiz;->getInstance()Lcom/alibaba/analytics/core/config/UTTPKBiz;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/analytics/core/config/UTTPKBiz;->addTPKCache(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public addTPKItem(Lcom/alibaba/analytics/core/config/UTTPKItem;)V
    .locals 1

    .line 629
    invoke-static {}, Lcom/alibaba/analytics/core/config/UTTPKBiz;->getInstance()Lcom/alibaba/analytics/core/config/UTTPKBiz;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alibaba/analytics/core/config/UTTPKBiz;->addTPKItem(Lcom/alibaba/analytics/core/config/UTTPKItem;)V

    return-void
.end method

.method public commitExposureData()V
    .locals 0

    .line 710
    invoke-static {}, Lcom/ut/mini/exposure/TrackerFrameLayout;->commitExposureData()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public declared-synchronized getGlobalProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 112
    :try_start_0
    iget-object v0, p0, Lcom/ut/mini/UTTracker;->mArgsMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_0
    const/4 p1, 0x0

    .line 114
    monitor-exit p0

    return-object p1
.end method

.method public getPageAllProperties(Landroid/app/Activity;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 606
    invoke-static {}, Lcom/ut/mini/UTPageHitHelper;->getInstance()Lcom/ut/mini/UTPageHitHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ut/mini/UTPageHitHelper;->getPageAllProperties(Landroid/app/Activity;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public getPageProperties(Ljava/lang/Object;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 526
    invoke-static {}, Lcom/ut/mini/UTPageHitHelper;->getInstance()Lcom/ut/mini/UTPageHitHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ut/mini/UTPageHitHelper;->getPageProperties(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public getPageScmPre(Landroid/app/Activity;)Ljava/lang/String;
    .locals 1

    .line 615
    invoke-static {}, Lcom/ut/mini/UTPageHitHelper;->getInstance()Lcom/ut/mini/UTPageHitHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ut/mini/UTPageHitHelper;->getPageScmPre(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getPageSpmPre(Landroid/app/Activity;)Ljava/lang/String;
    .locals 1

    .line 593
    invoke-static {}, Lcom/ut/mini/UTPageHitHelper;->getInstance()Lcom/ut/mini/UTPageHitHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ut/mini/UTPageHitHelper;->getPageSpmPre(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getPageSpmUrl(Landroid/app/Activity;)Ljava/lang/String;
    .locals 1

    .line 584
    invoke-static {}, Lcom/ut/mini/UTPageHitHelper;->getInstance()Lcom/ut/mini/UTPageHitHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ut/mini/UTPageHitHelper;->getPageSpmUrl(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public pageAppear(Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 417
    invoke-virtual {p0, p1, v0, v1}, Lcom/ut/mini/UTTracker;->pageAppear(Ljava/lang/Object;Ljava/lang/String;Z)V

    return-void
.end method

.method public pageAppear(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 427
    invoke-virtual {p0, p1, p2, v0}, Lcom/ut/mini/UTTracker;->pageAppear(Ljava/lang/Object;Ljava/lang/String;Z)V

    return-void
.end method

.method public pageAppear(Ljava/lang/Object;Ljava/lang/String;Z)V
    .locals 1

    .line 449
    invoke-static {}, Lcom/ut/mini/UTPageHitHelper;->getInstance()Lcom/ut/mini/UTPageHitHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/ut/mini/UTPageHitHelper;->pageAppear(Ljava/lang/Object;Ljava/lang/String;Z)V

    return-void
.end method

.method public pageAppearDonotSkip(Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 436
    invoke-virtual {p0, p1, v0, v1}, Lcom/ut/mini/UTTracker;->pageAppear(Ljava/lang/Object;Ljava/lang/String;Z)V

    return-void
.end method

.method public pageAppearDonotSkip(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 445
    invoke-virtual {p0, p1, p2, v0}, Lcom/ut/mini/UTTracker;->pageAppear(Ljava/lang/Object;Ljava/lang/String;Z)V

    return-void
.end method

.method public pageDisAppear(Ljava/lang/Object;)V
    .locals 1

    .line 458
    invoke-static {}, Lcom/ut/mini/UTPageHitHelper;->getInstance()Lcom/ut/mini/UTPageHitHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lcom/ut/mini/UTPageHitHelper;->pageDisAppear(Ljava/lang/Object;Lcom/ut/mini/UTTracker;)V

    return-void
.end method

.method public refreshExposureData()V
    .locals 0

    .line 684
    invoke-static {}, Lcom/ut/mini/exposure/TrackerFrameLayout;->refreshExposureData()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public refreshExposureData(Ljava/lang/String;)V
    .locals 0

    .line 693
    invoke-static {p1}, Lcom/ut/mini/exposure/TrackerFrameLayout;->refreshExposureData(Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public refreshExposureDataByViewId(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 703
    invoke-static {p1, p2}, Lcom/ut/mini/exposure/TrackerFrameLayout;->refreshExposureDataByViewId(Ljava/lang/String;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public declared-synchronized removeGlobalProperty(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 122
    :try_start_0
    iget-object v0, p0, Lcom/ut/mini/UTTracker;->mArgsMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/ut/mini/UTTracker;->mArgsMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 126
    :cond_0
    :goto_0
    monitor-exit p0

    return-void
.end method

.method public send(Ljava/util/Map;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 134
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ut/mini/UTAnalytics;->isInit()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x2

    .line 135
    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string/jumbo v1, "send"

    aput-object v1, p1, v0

    const/4 v0, 0x1

    const-string v1, "Please initialize UT-Analytics first"

    aput-object v1, p1, v0

    const-string v0, "UTTracker"

    invoke-static {v0, p1}, Lcom/alibaba/analytics/utils/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 139
    :cond_0
    invoke-static {}, Lcom/ut/mini/module/trackerlistener/UTTrackerListenerMgr;->getInstance()Lcom/ut/mini/module/trackerlistener/UTTrackerListenerMgr;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/ut/mini/module/trackerlistener/UTTrackerListenerMgr;->send(Lcom/ut/mini/UTTracker;Ljava/util/Map;)V

    if-eqz p1, :cond_c

    .line 144
    :try_start_0
    sget-object v0, Lcom/alibaba/analytics/core/model/LogField;->EVENTID:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v0}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const-string v1, "_bmbu"

    .line 153
    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 154
    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v10, p1

    goto :goto_0

    .line 157
    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    move-object v10, v1

    .line 160
    :goto_0
    iget-object v1, p0, Lcom/ut/mini/UTTracker;->mArgsMap:Ljava/util/Map;

    invoke-interface {v10, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    if-eq v10, p1, :cond_2

    .line 162
    invoke-interface {v10, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 165
    :cond_2
    iget-object v1, p0, Lcom/ut/mini/UTTracker;->mTrackerId:Ljava/lang/String;

    invoke-static {v1}, Lcom/alibaba/analytics/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 166
    iget-object v1, p0, Lcom/ut/mini/UTTracker;->mTrackerId:Ljava/lang/String;

    const-string v2, "_track_id"

    invoke-interface {v10, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    :cond_3
    invoke-static {}, Lcom/alibaba/analytics/core/ClientVariables;->getInstance()Lcom/alibaba/analytics/core/ClientVariables;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/analytics/core/ClientVariables;->isAliyunOSPlatform()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 170
    sget-object v1, Lcom/alibaba/analytics/core/model/UTMCLogFields;->ALIYUN_PLATFORM_FLAG:Lcom/alibaba/analytics/core/model/UTMCLogFields;

    invoke-virtual {v1}, Lcom/alibaba/analytics/core/model/UTMCLogFields;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "yes"

    invoke-interface {v10, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    :cond_4
    invoke-static {}, Lcom/alibaba/analytics/core/ClientVariables;->getInstance()Lcom/alibaba/analytics/core/ClientVariables;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/analytics/core/ClientVariables;->getTimestamp()Ljava/lang/String;

    move-result-object v1

    .line 175
    invoke-static {v1}, Lcom/alibaba/analytics/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "UTPVID_T"

    .line 176
    invoke-interface {v10, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    const-string v1, "_fuamf"

    .line 180
    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 182
    invoke-static {v10}, Lcom/ut/mini/UTTracker;->dropAllIllegalKey(Ljava/util/Map;)V

    goto :goto_1

    .line 185
    :cond_6
    invoke-interface {v10, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    :goto_1
    invoke-static {v10}, Lcom/ut/mini/UTTracker;->translateFieldsName(Ljava/util/Map;)V

    .line 190
    invoke-direct {p0, v10}, Lcom/ut/mini/UTTracker;->fillReserve1Fields(Ljava/util/Map;)V

    .line 191
    invoke-static {v10}, Lcom/ut/mini/UTTracker;->fillReservesFields(Ljava/util/Map;)V

    const/16 v1, 0x835

    if-eq v0, v1, :cond_7

    const/16 v1, 0x836

    if-ne v0, v1, :cond_8

    .line 195
    :cond_7
    invoke-static {}, Lcom/ut/mini/module/UTOperationStack;->getInstance()Lcom/ut/mini/module/UTOperationStack;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ctrlClicked:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/alibaba/analytics/core/model/LogField;->ARG1:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v3}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ut/mini/module/UTOperationStack;->addAction(Ljava/lang/String;)V

    const-string v1, "_priority"

    const-string v2, "4"

    .line 196
    invoke-interface {v10, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    :cond_8
    invoke-static {}, Lcom/ut/mini/module/plugin/UTPluginMgr;->getInstance()Lcom/ut/mini/module/plugin/UTPluginMgr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ut/mini/module/plugin/UTPluginMgr;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 201
    sget-object v1, Lcom/alibaba/analytics/core/model/LogField;->PAGE:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v1}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Ljava/lang/String;

    .line 202
    sget-object v1, Lcom/alibaba/analytics/core/model/LogField;->ARG1:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v1}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Ljava/lang/String;

    .line 203
    sget-object v1, Lcom/alibaba/analytics/core/model/LogField;->ARG2:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v1}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Ljava/lang/String;

    .line 204
    sget-object v1, Lcom/alibaba/analytics/core/model/LogField;->ARG3:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v1}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Ljava/lang/String;

    .line 208
    invoke-static {}, Lcom/ut/mini/module/plugin/UTPluginMgr;->getInstance()Lcom/ut/mini/module/plugin/UTPluginMgr;

    move-result-object v11

    new-instance v12, Lcom/ut/mini/UTTracker$1;

    move-object v1, v12

    move-object v2, p0

    move v3, v0

    move-object v8, p1

    move-object v9, v10

    invoke-direct/range {v1 .. v9}, Lcom/ut/mini/UTTracker$1;-><init>(Lcom/ut/mini/UTTracker;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    invoke-virtual {v11, v12}, Lcom/ut/mini/module/plugin/UTPluginMgr;->forEachPlugin(Lcom/ut/mini/module/plugin/IUTPluginForEachDelegate;)V

    :cond_9
    const/16 v1, 0x7d1

    if-ne v0, v1, :cond_a

    .line 241
    invoke-static {v10}, Lcom/ut/mini/UTPageHitHelper;->encodeUtParam(Ljava/util/Map;)Ljava/util/Map;

    .line 244
    :cond_a
    invoke-static {v0, v10}, Lcom/ut/mini/UTPvidHelper;->processOtherPvid(ILjava/util/Map;)Ljava/util/Map;

    const/16 v1, 0x899

    if-ne v0, v1, :cond_b

    .line 250
    :try_start_1
    sget-object v0, Lcom/alibaba/analytics/core/model/LogField;->PAGE:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v0}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    const-string p1, ""

    .line 255
    :goto_2
    invoke-static {}, Lcom/ut/mini/RepeatExposurePageMgr;->getInstance()Lcom/ut/mini/RepeatExposurePageMgr;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ut/mini/RepeatExposurePageMgr;->isRepeatExposurePage(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 256
    invoke-static {}, Lcom/ut/mini/RepeatExposureQueueMgr;->getInstance()Lcom/ut/mini/RepeatExposureQueueMgr;

    move-result-object p1

    invoke-virtual {p1, v10}, Lcom/ut/mini/RepeatExposureQueueMgr;->putExposureEvent(Ljava/util/Map;)V

    return-void

    .line 262
    :cond_b
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object p1

    invoke-virtual {p1, v10}, Lcom/ut/mini/UTAnalytics;->transferLog(Ljava/util/Map;)V

    nop

    :catch_1
    :cond_c
    return-void
.end method

.method protected setAppKey(Ljava/lang/String;)V
    .locals 0

    .line 646
    iput-object p1, p0, Lcom/ut/mini/UTTracker;->mAppkey:Ljava/lang/String;

    return-void
.end method

.method public setCommitImmediatelyExposureBlock(Ljava/lang/String;)V
    .locals 0

    .line 717
    invoke-static {p1}, Lcom/ut/mini/exposure/TrackerFrameLayout;->setCommitImmediatelyExposureBlock(Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public setExposureSpmAB(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 673
    invoke-static {p1, p2, p3}, Lcom/ut/mini/exposure/ExposureUtils;->setExposureSpmAB(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public setExposureSpmCD(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 677
    invoke-static {p1, p2, p3}, Lcom/ut/mini/exposure/ExposureUtils;->setExposureSpmCD(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public setExposureTag(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 669
    invoke-static {p1, p2, p3, p4}, Lcom/ut/mini/exposure/ExposureUtils;->setExposure(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public declared-synchronized setGlobalProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    .line 100
    :try_start_0
    invoke-static {p1}, Lcom/alibaba/analytics/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 101
    iget-object v0, p0, Lcom/ut/mini/UTTracker;->mArgsMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string/jumbo p1, "setGlobalProperty"

    const/4 p2, 0x1

    .line 103
    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "key is null or key is empty or value is null,please check it!"

    aput-object v1, p2, v0

    invoke-static {p1, p2}, Lcom/alibaba/analytics/utils/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected setH5Url(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 654
    invoke-static {}, Lcom/ut/mini/UTVariables;->getInstance()Lcom/ut/mini/UTVariables;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ut/mini/UTVariables;->setH5Url(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setPageStatusCode(Ljava/lang/Object;I)V
    .locals 1

    .line 494
    invoke-static {}, Lcom/ut/mini/UTPageHitHelper;->getInstance()Lcom/ut/mini/UTPageHitHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/ut/mini/UTPageHitHelper;->setPageStatusCode(Ljava/lang/Object;I)V

    return-void
.end method

.method setTrackId(Ljava/lang/String;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/ut/mini/UTTracker;->mTrackerId:Ljava/lang/String;

    return-void
.end method

.method public skipNextPageBack()V
    .locals 1

    .line 564
    invoke-static {}, Lcom/ut/mini/UTPageHitHelper;->getInstance()Lcom/ut/mini/UTPageHitHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ut/mini/UTPageHitHelper;->skipNextPageBack()V

    return-void
.end method

.method public skipPage(Ljava/lang/Object;)V
    .locals 1

    .line 642
    invoke-static {}, Lcom/ut/mini/UTPageHitHelper;->getInstance()Lcom/ut/mini/UTPageHitHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ut/mini/UTPageHitHelper;->skipPage(Ljava/lang/Object;)V

    return-void
.end method

.method public skipPageBack(Landroid/app/Activity;)V
    .locals 1

    .line 557
    invoke-static {}, Lcom/ut/mini/UTPageHitHelper;->getInstance()Lcom/ut/mini/UTPageHitHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ut/mini/UTPageHitHelper;->skipBack(Ljava/lang/Object;)V

    return-void
.end method

.method public skipPageBackForever(Landroid/app/Activity;Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 575
    invoke-static {}, Lcom/ut/mini/UTPageHitHelper;->getInstance()Lcom/ut/mini/UTPageHitHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/ut/mini/UTPageHitHelper;->skipBackForever(Ljava/lang/Object;Z)V

    return-void
.end method

.method public updateNextPageProperties(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 468
    invoke-static {}, Lcom/ut/mini/module/trackerlistener/UTTrackerListenerMgr;->getInstance()Lcom/ut/mini/module/trackerlistener/UTTrackerListenerMgr;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/ut/mini/module/trackerlistener/UTTrackerListenerMgr;->updateNextPageProperties(Lcom/ut/mini/UTTracker;Ljava/util/Map;)V

    .line 469
    invoke-static {}, Lcom/ut/mini/UTPageHitHelper;->getInstance()Lcom/ut/mini/UTPageHitHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ut/mini/UTPageHitHelper;->updateNextPageProperties(Ljava/util/Map;)V

    return-void
.end method

.method public updateNextPageUtparam(Ljava/lang/String;)V
    .locals 1

    .line 479
    invoke-static {}, Lcom/ut/mini/module/trackerlistener/UTTrackerListenerMgr;->getInstance()Lcom/ut/mini/module/trackerlistener/UTTrackerListenerMgr;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ut/mini/module/trackerlistener/UTTrackerListenerMgr;->updateNextPageUtparam(Ljava/lang/String;)V

    .line 480
    invoke-static {}, Lcom/ut/mini/UTPageHitHelper;->getInstance()Lcom/ut/mini/UTPageHitHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ut/mini/UTPageHitHelper;->updateNextPageUtparam(Ljava/lang/String;)V

    return-void
.end method

.method public updateNextPageUtparamCnt(Ljava/lang/String;)V
    .locals 1

    .line 490
    invoke-static {}, Lcom/ut/mini/UTPageHitHelper;->getInstance()Lcom/ut/mini/UTPageHitHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ut/mini/UTPageHitHelper;->updateNextPageUtparamCnt(Ljava/lang/String;)V

    return-void
.end method

.method public updatePageName(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    .line 504
    invoke-static {}, Lcom/ut/mini/module/trackerlistener/UTTrackerListenerMgr;->getInstance()Lcom/ut/mini/module/trackerlistener/UTTrackerListenerMgr;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/ut/mini/module/trackerlistener/UTTrackerListenerMgr;->updatePageName(Lcom/ut/mini/UTTracker;Ljava/lang/Object;Ljava/lang/String;)V

    .line 505
    invoke-static {}, Lcom/ut/mini/UTPageHitHelper;->getInstance()Lcom/ut/mini/UTPageHitHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/ut/mini/UTPageHitHelper;->updatePageName(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public updatePageProperties(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 515
    invoke-static {}, Lcom/ut/mini/module/trackerlistener/UTTrackerListenerMgr;->getInstance()Lcom/ut/mini/module/trackerlistener/UTTrackerListenerMgr;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/ut/mini/module/trackerlistener/UTTrackerListenerMgr;->updatePageProperties(Lcom/ut/mini/UTTracker;Ljava/lang/Object;Ljava/util/Map;)V

    .line 516
    invoke-static {}, Lcom/ut/mini/UTPageHitHelper;->getInstance()Lcom/ut/mini/UTPageHitHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/ut/mini/UTPageHitHelper;->updatePageProperties(Ljava/lang/Object;Ljava/util/Map;)V

    return-void
.end method

.method public updatePageStatus(Ljava/lang/Object;Lcom/ut/mini/UTPageStatus;)V
    .locals 1

    .line 548
    invoke-static {}, Lcom/ut/mini/UTPageHitHelper;->getInstance()Lcom/ut/mini/UTPageHitHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/ut/mini/UTPageHitHelper;->updatePageStatus(Ljava/lang/Object;Lcom/ut/mini/UTPageStatus;)V

    return-void
.end method

.method public updatePageUrl(Ljava/lang/Object;Landroid/net/Uri;)V
    .locals 1

    .line 625
    invoke-static {}, Lcom/ut/mini/UTPageHitHelper;->getInstance()Lcom/ut/mini/UTPageHitHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/ut/mini/UTPageHitHelper;->updatePageUrl(Ljava/lang/Object;Landroid/net/Uri;)V

    return-void
.end method

.method public updatePageUtparam(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    .line 537
    invoke-static {}, Lcom/ut/mini/module/trackerlistener/UTTrackerListenerMgr;->getInstance()Lcom/ut/mini/module/trackerlistener/UTTrackerListenerMgr;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/ut/mini/module/trackerlistener/UTTrackerListenerMgr;->updatePageUtparam(Ljava/lang/Object;Ljava/lang/String;)V

    .line 538
    invoke-static {}, Lcom/ut/mini/UTPageHitHelper;->getInstance()Lcom/ut/mini/UTPageHitHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/ut/mini/UTPageHitHelper;->updatePageUtparam(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
