.class public Landroid/taobao/windvane/config/WVUCPrecacheManager;
.super Ljava/lang/Object;
.source "WVUCPrecacheManager.java"

# interfaces
.implements Landroid/taobao/windvane/service/WVEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/taobao/windvane/config/WVUCPrecacheManager$WVUCPrecacheManagerHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WVUCPrecacheManager"

.field private static mInstance:Landroid/taobao/windvane/config/WVUCPrecacheManager; = null

.field private static sCanClearByCommonConfig:Z = false

.field private static sCanClearByZcacheUpdate:Z = false

.field private static sCanPrecacheByCommonConfig:Z = false

.field private static sCanPrecacheByZcacheUpdate:Z = false

.field private static sHasInitUrlSet:Z = false

.field private static sHasPrecache:Z = false

.field private static sLastEnableUCPrecache:Z = false

.field private static sLastPrecachePackageName:Ljava/lang/String; = ""

.field private static sLastPrecacheTime:J = -0x1L

.field private static final sMaxPrecacheTime:J = 0x36ee80L

.field private static sPreMemCacheUrlSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sPrecacheDocResMap:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mPrecacheHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Landroid/taobao/windvane/config/WVUCPrecacheManager;->sPreMemCacheUrlSet:Ljava/util/HashSet;

    .line 41
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Landroid/taobao/windvane/config/WVUCPrecacheManager;->sPrecacheDocResMap:Ljava/util/HashSet;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Landroid/taobao/windvane/config/WVUCPrecacheManager;->mPrecacheHandler:Landroid/os/Handler;

    .line 52
    invoke-direct {p0}, Landroid/taobao/windvane/config/WVUCPrecacheManager;->init()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/taobao/windvane/config/WVUCPrecacheManager$1;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Landroid/taobao/windvane/config/WVUCPrecacheManager;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static canClearPrecache()Z
    .locals 7

    .line 155
    sget-boolean v0, Landroid/taobao/windvane/config/WVUCPrecacheManager;->sHasPrecache:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 159
    :cond_0
    sget-boolean v0, Landroid/taobao/windvane/config/WVUCPrecacheManager;->sCanClearByCommonConfig:Z

    const/4 v2, 0x1

    if-nez v0, :cond_3

    sget-boolean v0, Landroid/taobao/windvane/config/WVUCPrecacheManager;->sCanClearByZcacheUpdate:Z

    if-eqz v0, :cond_1

    goto :goto_0

    .line 163
    :cond_1
    sget-wide v3, Landroid/taobao/windvane/config/WVUCPrecacheManager;->sLastPrecacheTime:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-lez v0, :cond_2

    .line 164
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 166
    sget-wide v5, Landroid/taobao/windvane/config/WVUCPrecacheManager;->sLastPrecacheTime:J

    sub-long/2addr v3, v5

    const-wide/32 v5, 0x36ee80

    cmp-long v0, v3, v5

    if-lez v0, :cond_2

    return v2

    :cond_2
    return v1

    :cond_3
    :goto_0
    return v2
.end method

.method public static canPrecache()Z
    .locals 3

    .line 178
    sget-object v0, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget-boolean v0, v0, Landroid/taobao/windvane/config/WVCommonConfigData;->enableUCPrecache:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    sget-object v0, Landroid/taobao/windvane/config/WVUCPrecacheManager;->sLastPrecachePackageName:Ljava/lang/String;

    .line 179
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 183
    :cond_0
    sget-boolean v0, Landroid/taobao/windvane/config/WVUCPrecacheManager;->sHasInitUrlSet:Z

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 184
    sput-boolean v2, Landroid/taobao/windvane/config/WVUCPrecacheManager;->sHasInitUrlSet:Z

    .line 186
    invoke-static {}, Landroid/taobao/windvane/config/WVUCPrecacheManager;->updatePreMemCacheUrls()V

    .line 188
    :cond_1
    sget-object v0, Landroid/taobao/windvane/config/WVUCPrecacheManager;->sPreMemCacheUrlSet:Ljava/util/HashSet;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-gtz v0, :cond_2

    goto :goto_1

    .line 193
    :cond_2
    sget-boolean v0, Landroid/taobao/windvane/config/WVUCPrecacheManager;->sCanPrecacheByCommonConfig:Z

    if-nez v0, :cond_4

    sget-boolean v0, Landroid/taobao/windvane/config/WVUCPrecacheManager;->sCanPrecacheByZcacheUpdate:Z

    if-nez v0, :cond_4

    sget-boolean v0, Landroid/taobao/windvane/config/WVUCPrecacheManager;->sHasPrecache:Z

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    return v1

    :cond_4
    :goto_0
    return v2

    :cond_5
    :goto_1
    return v1
.end method

.method public static getInstance()Landroid/taobao/windvane/config/WVUCPrecacheManager;
    .locals 1

    .line 48
    sget-object v0, Landroid/taobao/windvane/config/WVUCPrecacheManager$WVUCPrecacheManagerHolder;->sInstance:Landroid/taobao/windvane/config/WVUCPrecacheManager;

    return-object v0
.end method

.method private init()V
    .locals 1

    .line 56
    invoke-static {}, Landroid/taobao/windvane/service/WVEventService;->getInstance()Landroid/taobao/windvane/service/WVEventService;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/taobao/windvane/service/WVEventService;->addEventListener(Landroid/taobao/windvane/service/WVEventListener;)V

    return-void
.end method

.method private static notifyUpdateCommonConfig()V
    .locals 5

    .line 99
    sget-object v0, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget-boolean v0, v0, Landroid/taobao/windvane/config/WVCommonConfigData;->enableUCPrecache:Z

    .line 100
    sget-object v1, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget-object v1, v1, Landroid/taobao/windvane/config/WVCommonConfigData;->precachePackageName:Ljava/lang/String;

    .line 101
    sget-boolean v2, Landroid/taobao/windvane/config/WVUCPrecacheManager;->sLastEnableUCPrecache:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    if-nez v0, :cond_0

    .line 103
    sput-boolean v4, Landroid/taobao/windvane/config/WVUCPrecacheManager;->sCanClearByCommonConfig:Z

    .line 104
    sput-boolean v3, Landroid/taobao/windvane/config/WVUCPrecacheManager;->sCanPrecacheByCommonConfig:Z

    :goto_0
    const/4 v3, 0x1

    goto :goto_1

    .line 106
    :cond_0
    sget-boolean v2, Landroid/taobao/windvane/config/WVUCPrecacheManager;->sLastEnableUCPrecache:Z

    if-nez v2, :cond_1

    if-eqz v0, :cond_1

    .line 108
    sput-boolean v4, Landroid/taobao/windvane/config/WVUCPrecacheManager;->sCanClearByCommonConfig:Z

    .line 109
    sput-boolean v4, Landroid/taobao/windvane/config/WVUCPrecacheManager;->sCanPrecacheByCommonConfig:Z

    goto :goto_0

    .line 113
    :cond_1
    :goto_1
    sget-object v2, Landroid/taobao/windvane/config/WVUCPrecacheManager;->sLastPrecachePackageName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 114
    sput-boolean v4, Landroid/taobao/windvane/config/WVUCPrecacheManager;->sCanClearByCommonConfig:Z

    .line 116
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 117
    sput-boolean v4, Landroid/taobao/windvane/config/WVUCPrecacheManager;->sCanPrecacheByCommonConfig:Z

    :cond_2
    const/4 v3, 0x1

    .line 121
    :cond_3
    sput-boolean v0, Landroid/taobao/windvane/config/WVUCPrecacheManager;->sLastEnableUCPrecache:Z

    .line 122
    sput-object v1, Landroid/taobao/windvane/config/WVUCPrecacheManager;->sLastPrecachePackageName:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 124
    sget-boolean v0, Landroid/taobao/windvane/config/WVUCPrecacheManager;->sHasInitUrlSet:Z

    if-nez v0, :cond_5

    .line 125
    :cond_4
    invoke-static {}, Landroid/taobao/windvane/config/WVUCPrecacheManager;->updatePreMemCacheUrls()V

    :cond_5
    return-void
.end method

.method private static notifyUpdateZcache(Ljava/lang/String;)V
    .locals 1

    .line 87
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/taobao/windvane/config/WVUCPrecacheManager;->sLastPrecachePackageName:Ljava/lang/String;

    .line 88
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    .line 90
    sput-boolean p0, Landroid/taobao/windvane/config/WVUCPrecacheManager;->sCanClearByZcacheUpdate:Z

    .line 91
    sput-boolean p0, Landroid/taobao/windvane/config/WVUCPrecacheManager;->sCanPrecacheByZcacheUpdate:Z

    .line 93
    invoke-static {}, Landroid/taobao/windvane/config/WVUCPrecacheManager;->updatePreMemCacheUrls()V

    :cond_0
    return-void
.end method

.method public static preMemCacheUrlSet()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 216
    sget-object v0, Landroid/taobao/windvane/config/WVUCPrecacheManager;->sPreMemCacheUrlSet:Ljava/util/HashSet;

    return-object v0
.end method

.method public static resetClearConfig()V
    .locals 1

    const/4 v0, 0x0

    .line 61
    sput-boolean v0, Landroid/taobao/windvane/config/WVUCPrecacheManager;->sCanClearByCommonConfig:Z

    .line 62
    sput-boolean v0, Landroid/taobao/windvane/config/WVUCPrecacheManager;->sCanClearByZcacheUpdate:Z

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static resetPrecacheConfig()V
    .locals 1

    const/4 v0, 0x0

    .line 66
    sput-boolean v0, Landroid/taobao/windvane/config/WVUCPrecacheManager;->sCanPrecacheByCommonConfig:Z

    .line 67
    sput-boolean v0, Landroid/taobao/windvane/config/WVUCPrecacheManager;->sCanPrecacheByZcacheUpdate:Z

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private sendClearPrecacheDocMessage(Ljava/lang/String;)V
    .locals 4

    .line 279
    sget-object v0, Landroid/taobao/windvane/config/WVUCPrecacheManager;->sPrecacheDocResMap:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    .line 282
    :cond_0
    iget-object v0, p0, Landroid/taobao/windvane/config/WVUCPrecacheManager;->mPrecacheHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 283
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/taobao/windvane/config/WVUCPrecacheManager;->mPrecacheHandler:Landroid/os/Handler;

    .line 287
    :cond_1
    iget-object v0, p0, Landroid/taobao/windvane/config/WVUCPrecacheManager;->mPrecacheHandler:Landroid/os/Handler;

    new-instance v1, Landroid/taobao/windvane/config/WVUCPrecacheManager$1;

    invoke-direct {v1, p0, p1}, Landroid/taobao/windvane/config/WVUCPrecacheManager$1;-><init>(Landroid/taobao/windvane/config/WVUCPrecacheManager;Ljava/lang/String;)V

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static setHasPrecache(Z)V
    .locals 2

    .line 203
    sput-boolean p0, Landroid/taobao/windvane/config/WVUCPrecacheManager;->sHasPrecache:Z

    if-eqz p0, :cond_0

    .line 206
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Landroid/taobao/windvane/config/WVUCPrecacheManager;->sLastPrecacheTime:J

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    .line 208
    sput-wide v0, Landroid/taobao/windvane/config/WVUCPrecacheManager;->sLastPrecacheTime:J

    :goto_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private static updatePreMemCacheUrls()V
    .locals 6

    .line 134
    sget-object v0, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget-boolean v0, v0, Landroid/taobao/windvane/config/WVCommonConfigData;->enableUCPrecache:Z

    if-eqz v0, :cond_2

    sget-object v0, Landroid/taobao/windvane/config/WVUCPrecacheManager;->sLastPrecachePackageName:Ljava/lang/String;

    .line 135
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 140
    :cond_0
    invoke-static {}, Landroid/taobao/windvane/service/WVEventService;->getInstance()Landroid/taobao/windvane/service/WVEventService;

    move-result-object v0

    const/16 v1, 0x177b

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget-object v5, Landroid/taobao/windvane/config/WVUCPrecacheManager;->sLastPrecachePackageName:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v3}, Landroid/taobao/windvane/service/WVEventService;->onEvent(I[Ljava/lang/Object;)Landroid/taobao/windvane/service/WVEventResult;

    move-result-object v0

    .line 142
    iget-boolean v1, v0, Landroid/taobao/windvane/service/WVEventResult;->isSuccess:Z

    if-eqz v1, :cond_1

    iget-object v1, v0, Landroid/taobao/windvane/service/WVEventResult;->resultObj:Ljava/lang/Object;

    if-eqz v1, :cond_1

    iget-object v1, v0, Landroid/taobao/windvane/service/WVEventResult;->resultObj:Ljava/lang/Object;

    instance-of v1, v1, Ljava/util/HashSet;

    if-eqz v1, :cond_1

    .line 144
    iget-object v0, v0, Landroid/taobao/windvane/service/WVEventResult;->resultObj:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashSet;

    sput-object v0, Landroid/taobao/windvane/config/WVUCPrecacheManager;->sPreMemCacheUrlSet:Ljava/util/HashSet;

    .line 146
    sput-boolean v2, Landroid/taobao/windvane/config/WVUCPrecacheManager;->sHasInitUrlSet:Z

    :cond_1
    return-void

    .line 137
    :cond_2
    :goto_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Landroid/taobao/windvane/config/WVUCPrecacheManager;->sPreMemCacheUrlSet:Ljava/util/HashSet;

    return-void
.end method


# virtual methods
.method public addPrecacheDoc(Ljava/lang/String;)V
    .locals 2

    .line 255
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "#"

    .line 259
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x0

    .line 260
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 262
    :cond_1
    sget-object v0, Landroid/taobao/windvane/config/WVUCPrecacheManager;->sPrecacheDocResMap:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 264
    invoke-direct {p0, p1}, Landroid/taobao/windvane/config/WVUCPrecacheManager;->sendClearPrecacheDocMessage(Ljava/lang/String;)V

    return-void
.end method

.method public canPrecacheDoc(Ljava/lang/String;)Z
    .locals 4

    .line 223
    sget-object v0, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget-boolean v0, v0, Landroid/taobao/windvane/config/WVCommonConfigData;->enableUCPrecacheDoc:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 224
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 228
    :cond_0
    sget-object v0, Landroid/taobao/windvane/config/WVUCPrecacheManager;->sPreMemCacheUrlSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    .line 231
    :cond_1
    sget-object v0, Landroid/taobao/windvane/config/WVUCPrecacheManager;->sPreMemCacheUrlSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 233
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v1

    :cond_3
    return v2

    :cond_4
    :goto_0
    return v1
.end method

.method public clearPrecacheDoc(Ljava/lang/String;)V
    .locals 2

    const-string v0, "#"

    .line 272
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    .line 273
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 275
    :cond_0
    sget-object v0, Landroid/taobao/windvane/config/WVUCPrecacheManager;->sPrecacheDocResMap:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public hasPrecacheDoc(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "#"

    .line 245
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    .line 246
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 248
    :cond_0
    sget-object v0, Landroid/taobao/windvane/config/WVUCPrecacheManager;->sPrecacheDocResMap:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public varargs onEvent(ILandroid/taobao/windvane/service/WVEventContext;[Ljava/lang/Object;)Landroid/taobao/windvane/service/WVEventResult;
    .locals 0

    const/16 p2, 0x1778

    if-eq p1, p2, :cond_1

    const/16 p2, 0x177c

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 78
    :cond_0
    invoke-static {}, Landroid/taobao/windvane/config/WVUCPrecacheManager;->notifyUpdateCommonConfig()V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 74
    aget-object p1, p3, p1

    check-cast p1, Ljava/lang/String;

    .line 75
    invoke-static {p1}, Landroid/taobao/windvane/config/WVUCPrecacheManager;->notifyUpdateZcache(Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method
