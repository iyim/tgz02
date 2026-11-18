.class public Lcom/ut/mini/UTPageHitHelper;
.super Ljava/lang/Object;
.source "UTPageHitHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ut/mini/UTPageHitHelper$PageChangeListener;,
        Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;,
        Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;
    }
.end annotation


# static fields
.field private static final FORCE_SPM_CNT:Ljava/lang/String; = "force-spm-cnt"

.field private static final FORCE_SPM_URL:Ljava/lang/String; = "force-spm-url"

.field private static final MAX_SKIP_CLEAR_PAGE_OBJECT_CACHE_CAPACITY:I = 0x64

.field private static final MAX_SPM_OBJECT_CACHE_CAPACITY:I = 0x32

.field static final SKIPBK:Ljava/lang/String; = "skipbk"

.field private static final TAG:Ljava/lang/String; = "UTPageHitHelper"

.field static final UTPARAM_CNT:Ljava/lang/String; = "utparam-cnt"

.field static final UTPARAM_URL:Ljava/lang/String; = "utparam-url"

.field private static mPageChangerListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ut/mini/UTPageHitHelper$PageChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private static s_instance:Lcom/ut/mini/UTPageHitHelper;


# instance fields
.field private mBackupNextPageProperties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mClearUTPageStateObjectList:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCurPage:Ljava/lang/String;

.field private mCurrentPageCacheKey:Ljava/lang/String;

.field private mIsTurnOff:Z

.field private mLastCacheKey:Ljava/lang/String;

.field private mLastCacheKeyScmUrl:Ljava/lang/String;

.field private mLastCacheKeySpmUrl:Ljava/lang/String;

.field private mLastCacheKeyUtParam:Ljava/lang/String;

.field private mLastCacheKeyUtParamCnt:Ljava/lang/String;

.field private mNextPageProperties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNextPageSkipBack:Z

.field private mPageEventObjects:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;",
            ">;"
        }
    .end annotation
.end field

.field private mPageProperties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPageStateObjects:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;",
            ">;"
        }
    .end annotation
.end field

.field private mSPMObjectList:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSPMObjectMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSkipClearPageObjectList:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 365
    new-instance v0, Lcom/ut/mini/UTPageHitHelper;

    invoke-direct {v0}, Lcom/ut/mini/UTPageHitHelper;-><init>()V

    sput-object v0, Lcom/ut/mini/UTPageHitHelper;->s_instance:Lcom/ut/mini/UTPageHitHelper;

    .line 378
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/ut/mini/UTPageHitHelper;->mPageChangerListeners:Ljava/util/ArrayList;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 3

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ut/mini/UTPageHitHelper;->mPageStateObjects:Ljava/util/Map;

    .line 179
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/ut/mini/UTPageHitHelper;->mClearUTPageStateObjectList:Ljava/util/Queue;

    const/4 v0, 0x0

    .line 181
    iput-object v0, p0, Lcom/ut/mini/UTPageHitHelper;->mLastCacheKey:Ljava/lang/String;

    .line 182
    iput-object v0, p0, Lcom/ut/mini/UTPageHitHelper;->mLastCacheKeySpmUrl:Ljava/lang/String;

    .line 183
    iput-object v0, p0, Lcom/ut/mini/UTPageHitHelper;->mLastCacheKeyScmUrl:Ljava/lang/String;

    .line 184
    iput-object v0, p0, Lcom/ut/mini/UTPageHitHelper;->mLastCacheKeyUtParam:Ljava/lang/String;

    .line 185
    iput-object v0, p0, Lcom/ut/mini/UTPageHitHelper;->mLastCacheKeyUtParamCnt:Ljava/lang/String;

    const/4 v1, 0x0

    .line 364
    iput-boolean v1, p0, Lcom/ut/mini/UTPageHitHelper;->mIsTurnOff:Z

    .line 366
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/ut/mini/UTPageHitHelper;->mPageProperties:Ljava/util/Map;

    .line 367
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/ut/mini/UTPageHitHelper;->mPageEventObjects:Ljava/util/Map;

    .line 368
    iput-object v0, p0, Lcom/ut/mini/UTPageHitHelper;->mCurrentPageCacheKey:Ljava/lang/String;

    .line 369
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/ut/mini/UTPageHitHelper;->mNextPageProperties:Ljava/util/Map;

    .line 370
    iput-boolean v1, p0, Lcom/ut/mini/UTPageHitHelper;->mNextPageSkipBack:Z

    .line 371
    iput-object v0, p0, Lcom/ut/mini/UTPageHitHelper;->mBackupNextPageProperties:Ljava/util/Map;

    .line 372
    iput-object v0, p0, Lcom/ut/mini/UTPageHitHelper;->mCurPage:Ljava/lang/String;

    .line 373
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/ut/mini/UTPageHitHelper;->mSkipClearPageObjectList:Ljava/util/Queue;

    .line 376
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ut/mini/UTPageHitHelper;->mSPMObjectMap:Ljava/util/Map;

    .line 377
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/ut/mini/UTPageHitHelper;->mSPMObjectList:Ljava/util/Queue;

    return-void
.end method

.method private _clearPageDisAppearContext()V
    .locals 2

    .line 906
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ut/mini/UTPageHitHelper;->mPageProperties:Ljava/util/Map;

    const/4 v0, 0x0

    .line 907
    iput-object v0, p0, Lcom/ut/mini/UTPageHitHelper;->mCurrentPageCacheKey:Ljava/lang/String;

    .line 908
    iput-object v0, p0, Lcom/ut/mini/UTPageHitHelper;->mCurPage:Ljava/lang/String;

    .line 910
    iput-object v0, p0, Lcom/ut/mini/UTPageHitHelper;->mBackupNextPageProperties:Ljava/util/Map;

    .line 911
    invoke-static {}, Lcom/ut/mini/UTVariables;->getInstance()Lcom/ut/mini/UTVariables;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ut/mini/UTVariables;->setBackupH5Url(Ljava/lang/String;)V

    return-void
.end method

.method private declared-synchronized _clearUTPageEventObjectCache(Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;)V
    .locals 2

    monitor-enter p0

    .line 537
    :try_start_0
    iget-object v0, p0, Lcom/ut/mini/UTPageHitHelper;->mPageEventObjects:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->getCacheKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 538
    iget-object v0, p0, Lcom/ut/mini/UTPageHitHelper;->mPageEventObjects:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->getCacheKey()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 540
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized _getOrNewAUTPageEventObject(Ljava/lang/Object;)Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;
    .locals 2

    monitor-enter p0

    .line 520
    :try_start_0
    invoke-direct {p0, p1}, Lcom/ut/mini/UTPageHitHelper;->_getPageEventObjectCacheKey(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 521
    iget-object v0, p0, Lcom/ut/mini/UTPageHitHelper;->mPageEventObjects:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 522
    iget-object v0, p0, Lcom/ut/mini/UTPageHitHelper;->mPageEventObjects:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 524
    :cond_0
    :try_start_1
    new-instance v0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;

    invoke-direct {v0}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;-><init>()V

    .line 525
    iget-object v1, p0, Lcom/ut/mini/UTPageHitHelper;->mPageEventObjects:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 526
    invoke-virtual {v0, p1}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->setCacheKey(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 527
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private static _getOutsideTTID(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_2

    const-string/jumbo v0, "ttid"

    .line 1601
    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 1603
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "@"

    .line 1604
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "%40"

    .line 1605
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private _getPageEventObjectCacheKey(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .line 487
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 488
    move-object v0, p1

    nop

    nop

    goto :goto_0

    .line 490
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 492
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    .line 493
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static _getPageName(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .line 1617
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1618
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1619
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x8

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method private _getSpmByUri(Landroid/net/Uri;)Ljava/lang/String;
    .locals 6

    const-string/jumbo v0, "spm"

    .line 1808
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1809
    invoke-static {v1}, Lcom/alibaba/analytics/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    const-string v4, ""

    const-string v5, "UTF-8"

    if-eqz v2, :cond_0

    .line 1811
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v5}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 1812
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1814
    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v4, v0, v2}, Lcom/alibaba/analytics/utils/Logger;->w(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 1819
    :cond_0
    :goto_0
    invoke-static {v1}, Lcom/alibaba/analytics/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "spm_url"

    .line 1820
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1821
    invoke-static {v1}, Lcom/alibaba/analytics/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1823
    :try_start_1
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v5}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 1824
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 1826
    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {v4, p1, v0}, Lcom/alibaba/analytics/utils/Logger;->w(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_1
    :goto_1
    return-object v1
.end method

.method private declared-synchronized _putUTPageEventObjectToCache(Ljava/lang/String;Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;)V
    .locals 1

    monitor-enter p0

    .line 533
    :try_start_0
    iget-object v0, p0, Lcom/ut/mini/UTPageHitHelper;->mPageEventObjects:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 534
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized _releaseUTPageStateObject()V
    .locals 3

    monitor-enter p0

    .line 1686
    :try_start_0
    iget-object v0, p0, Lcom/ut/mini/UTPageHitHelper;->mClearUTPageStateObjectList:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x32

    if-ge v0, v1, :cond_1

    .line 1688
    iget-object v1, p0, Lcom/ut/mini/UTPageHitHelper;->mClearUTPageStateObjectList:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1690
    iget-object v2, p0, Lcom/ut/mini/UTPageHitHelper;->mPageStateObjects:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1691
    iget-object v2, p0, Lcom/ut/mini/UTPageHitHelper;->mPageStateObjects:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1696
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method private declared-synchronized _removeUTPageEventObject(Ljava/lang/Object;)V
    .locals 1

    monitor-enter p0

    .line 543
    :try_start_0
    invoke-direct {p0, p1}, Lcom/ut/mini/UTPageHitHelper;->_getPageEventObjectCacheKey(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 544
    iget-object v0, p0, Lcom/ut/mini/UTPageHitHelper;->mPageEventObjects:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 545
    iget-object v0, p0, Lcom/ut/mini/UTPageHitHelper;->mPageEventObjects:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 547
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static declared-synchronized addPageChangerListener(Lcom/ut/mini/UTPageHitHelper$PageChangeListener;)V
    .locals 2

    const-class v0, Lcom/ut/mini/UTPageHitHelper;

    monitor-enter v0

    if-nez p0, :cond_0

    .line 382
    monitor-exit v0

    return-void

    .line 385
    :cond_0
    :try_start_0
    sget-object v1, Lcom/ut/mini/UTPageHitHelper;->mPageChangerListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 386
    sget-object v1, Lcom/ut/mini/UTPageHitHelper;->mPageChangerListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 388
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private clearUTPageStateObject(Ljava/util/Map;)V
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

    if-eqz p1, :cond_0

    .line 1700
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    const-string/jumbo v0, "spm-cnt"

    .line 1701
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "spm-url"

    .line 1702
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "spm-pre"

    .line 1703
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "utparam-cnt"

    .line 1704
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "utparam-url"

    .line 1705
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "utparam-pre"

    .line 1706
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "scm-pre"

    .line 1707
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private copyUTPageStateObject(Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;)Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 157
    :cond_0
    new-instance v0, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;

    invoke-direct {v0}, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;-><init>()V

    .line 158
    iget-object v1, p1, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mSpmCnt:Ljava/lang/String;

    iput-object v1, v0, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mSpmCnt:Ljava/lang/String;

    .line 159
    iget-object v1, p1, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mSpmUrl:Ljava/lang/String;

    iput-object v1, v0, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mSpmUrl:Ljava/lang/String;

    .line 160
    iget-object v1, p1, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mSpmPre:Ljava/lang/String;

    iput-object v1, v0, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mSpmPre:Ljava/lang/String;

    .line 162
    iget-boolean v1, p1, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mIsBack:Z

    iput-boolean v1, v0, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mIsBack:Z

    .line 163
    iget-boolean v1, p1, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mIsFrame:Z

    iput-boolean v1, v0, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mIsFrame:Z

    .line 164
    iget-boolean v1, p1, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mIsSwitchBackground:Z

    iput-boolean v1, v0, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mIsSwitchBackground:Z

    .line 166
    iget-object v1, p1, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mUtparamCnt:Ljava/lang/String;

    iput-object v1, v0, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mUtparamCnt:Ljava/lang/String;

    .line 167
    iget-object v1, p1, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mUtparamUrl:Ljava/lang/String;

    iput-object v1, v0, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mUtparamUrl:Ljava/lang/String;

    .line 168
    iget-object v1, p1, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mUtparamPre:Ljava/lang/String;

    iput-object v1, v0, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mUtparamPre:Ljava/lang/String;

    .line 170
    iget-object v1, p1, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mScmUrl:Ljava/lang/String;

    iput-object v1, v0, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mScmUrl:Ljava/lang/String;

    .line 171
    iget-object v1, p1, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mScmPre:Ljava/lang/String;

    iput-object v1, v0, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mScmPre:Ljava/lang/String;

    .line 173
    iget-boolean v1, p1, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mIsSkipBack:Z

    iput-boolean v1, v0, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mIsSkipBack:Z

    .line 174
    iget-boolean p1, p1, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mIsSkipBackForever:Z

    iput-boolean p1, v0, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mIsSkipBackForever:Z

    return-object v0
.end method

.method static declared-synchronized disPathcherPageChangerEvent(ILjava/lang/Object;)V
    .locals 4

    const-class v0, Lcom/ut/mini/UTPageHitHelper;

    monitor-enter v0

    .line 397
    :try_start_0
    sget-object v1, Lcom/ut/mini/UTPageHitHelper;->mPageChangerListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 399
    sget-object v3, Lcom/ut/mini/UTPageHitHelper;->mPageChangerListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ut/mini/UTPageHitHelper$PageChangeListener;

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    if-nez p0, :cond_1

    .line 405
    invoke-interface {v3, p1}, Lcom/ut/mini/UTPageHitHelper$PageChangeListener;->onPageAppear(Ljava/lang/Object;)V

    goto :goto_1

    .line 407
    :cond_1
    invoke-interface {v3, p1}, Lcom/ut/mini/UTPageHitHelper$PageChangeListener;->onPageDisAppear(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 410
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    goto :goto_3

    :goto_2
    throw p0

    :goto_3
    goto :goto_2
.end method

.method public static encodeUtParam(Ljava/util/Map;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string/jumbo v0, "utparam-pre"

    const-string/jumbo v1, "utparam-url"

    const-string/jumbo v2, "utparam-cnt"

    if-nez p0, :cond_0

    return-object p0

    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 1384
    :try_start_0
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1385
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1386
    invoke-static {v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 1389
    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v4, v2, v5}, Lcom/alibaba/analytics/utils/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 1392
    :cond_1
    :goto_0
    :try_start_1
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1393
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1394
    invoke-static {v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 1397
    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v4, v1, v2}, Lcom/alibaba/analytics/utils/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 1400
    :cond_2
    :goto_1
    :try_start_2
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1401
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1402
    invoke-static {v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    .line 1405
    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/alibaba/analytics/utils/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_3
    :goto_2
    return-object p0
.end method

.method private forceSetSpm(Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    const-string v0, "force-spm-cnt"

    .line 1273
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1274
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1275
    iput-object v0, p1, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mSpmCnt:Ljava/lang/String;

    :cond_0
    const-string v0, "force-spm-url"

    .line 1278
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 1279
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1280
    iput-object p2, p1, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mSpmUrl:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public static getInstance()Lcom/ut/mini/UTPageHitHelper;
    .locals 1

    .line 416
    sget-object v0, Lcom/ut/mini/UTPageHitHelper;->s_instance:Lcom/ut/mini/UTPageHitHelper;

    return-object v0
.end method

.method private getSpmUrl(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p1, :cond_4

    const-string/jumbo v0, "spm-url"

    .line 1780
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1781
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    const-string/jumbo v0, "spm_url"

    .line 1786
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1787
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    .line 1792
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    return-object p2

    :cond_2
    const-string/jumbo p2, "spm"

    .line 1796
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 1797
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    return-object p1

    :cond_3
    const-string p1, ""

    return-object p1

    :cond_4
    return-object p2
.end method

.method private static isDefaultActivityName(Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 1

    .line 1626
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 1627
    invoke-static {p0}, Lcom/ut/mini/UTPageHitHelper;->_getPageName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1628
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private parseJsonToMap(Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1862
    :try_start_0
    const-class v0, Ljava/util/Map;

    invoke-static {p1, v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private refreshUTPageStateObject(Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string/jumbo v0, "spm-cnt"

    .line 1716
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1717
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1718
    iput-object v0, p1, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mSpmCnt:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "spm_cnt"

    .line 1721
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p1, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mSpmCnt:Ljava/lang/String;

    .line 1724
    :goto_0
    invoke-direct {p0, p2, p3}, Lcom/ut/mini/UTPageHitHelper;->getSpmUrl(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p1, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mSpmUrl:Ljava/lang/String;

    .line 1726
    iget-object p3, p0, Lcom/ut/mini/UTPageHitHelper;->mLastCacheKey:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    const-string v0, ""

    if-nez p3, :cond_1

    .line 1727
    iget-object p3, p0, Lcom/ut/mini/UTPageHitHelper;->mLastCacheKeySpmUrl:Ljava/lang/String;

    iput-object p3, p1, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mSpmPre:Ljava/lang/String;

    goto :goto_1

    .line 1729
    :cond_1
    iput-object v0, p1, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mSpmPre:Ljava/lang/String;

    .line 1732
    :goto_1
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_2

    .line 1733
    iput-object p5, p1, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mScmUrl:Ljava/lang/String;

    goto :goto_2

    :cond_2
    const-string/jumbo p3, "scm"

    .line 1735
    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    iput-object p3, p1, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mScmUrl:Ljava/lang/String;

    .line 1738
    :goto_2
    iget-object p3, p0, Lcom/ut/mini/UTPageHitHelper;->mLastCacheKey:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_3

    .line 1739
    iget-object p3, p0, Lcom/ut/mini/UTPageHitHelper;->mLastCacheKeyScmUrl:Ljava/lang/String;

    iput-object p3, p1, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mScmPre:Ljava/lang/String;

    goto :goto_3

    .line 1741
    :cond_3
    iput-object v0, p1, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mScmPre:Ljava/lang/String;

    :goto_3
    const-string/jumbo p3, "utparam-cnt"

    .line 1744
    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 1745
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p5

    if-nez p5, :cond_4

    .line 1746
    iput-object p3, p1, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mUtparamCnt:Ljava/lang/String;

    goto :goto_4

    .line 1748
    :cond_4
    iput-object v0, p1, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mUtparamCnt:Ljava/lang/String;

    .line 1753
    :goto_4
    iget-object p3, p0, Lcom/ut/mini/UTPageHitHelper;->mLastCacheKey:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_5

    .line 1754
    iget-object p3, p0, Lcom/ut/mini/UTPageHitHelper;->mLastCacheKeyUtParamCnt:Ljava/lang/String;

    goto :goto_5

    :cond_5
    move-object p3, v0

    :goto_5
    const-string/jumbo p5, "utparam-url"

    .line 1756
    invoke-interface {p2, p5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p2, p3}, Lcom/ut/mini/UTPageHitHelper;->refreshUtParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1757
    invoke-virtual {p0, p4, p2}, Lcom/ut/mini/UTPageHitHelper;->refreshUtParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1758
    iput-object p2, p1, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mUtparamUrl:Ljava/lang/String;

    .line 1761
    iget-object p2, p0, Lcom/ut/mini/UTPageHitHelper;->mLastCacheKey:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_6

    .line 1762
    iget-object p2, p0, Lcom/ut/mini/UTPageHitHelper;->mLastCacheKeyUtParam:Ljava/lang/String;

    iput-object p2, p1, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mUtparamPre:Ljava/lang/String;

    goto :goto_6

    .line 1764
    :cond_6
    iput-object v0, p1, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mUtparamPre:Ljava/lang/String;

    :goto_6
    return-void
.end method


# virtual methods
.method declared-synchronized _releaseSPMCacheObj(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    .line 450
    :try_start_0
    iget-object v0, p0, Lcom/ut/mini/UTPageHitHelper;->mSPMObjectList:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 451
    iget-object v0, p0, Lcom/ut/mini/UTPageHitHelper;->mSPMObjectList:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 454
    :cond_0
    iget-object p1, p0, Lcom/ut/mini/UTPageHitHelper;->mSPMObjectList:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->size()I

    move-result p1

    const/16 v0, 0x64

    if-le p1, v0, :cond_2

    const/4 p1, 0x0

    :goto_0
    const/16 v0, 0x32

    if-ge p1, v0, :cond_2

    .line 456
    iget-object v0, p0, Lcom/ut/mini/UTPageHitHelper;->mSPMObjectList:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 458
    iget-object v1, p0, Lcom/ut/mini/UTPageHitHelper;->mSPMObjectMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 459
    iget-object v1, p0, Lcom/ut/mini/UTPageHitHelper;->mSPMObjectMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 464
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method declared-synchronized _releaseSkipFlagAndH5FlagPageObject(Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;)V
    .locals 3

    monitor-enter p0

    .line 433
    :try_start_0
    invoke-virtual {p1}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->resetPropertiesWithoutSkipFlagAndH5Flag()V

    .line 434
    iget-object v0, p0, Lcom/ut/mini/UTPageHitHelper;->mSkipClearPageObjectList:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 435
    iget-object v0, p0, Lcom/ut/mini/UTPageHitHelper;->mSkipClearPageObjectList:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 437
    :cond_0
    iget-object p1, p0, Lcom/ut/mini/UTPageHitHelper;->mSkipClearPageObjectList:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->size()I

    move-result p1

    const/16 v0, 0xc8

    if-le p1, v0, :cond_2

    const/4 p1, 0x0

    :goto_0
    const/16 v0, 0x64

    if-ge p1, v0, :cond_2

    .line 439
    iget-object v0, p0, Lcom/ut/mini/UTPageHitHelper;->mSkipClearPageObjectList:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;

    if-eqz v0, :cond_1

    .line 441
    iget-object v1, p0, Lcom/ut/mini/UTPageHitHelper;->mPageEventObjects:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->getCacheKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 442
    iget-object v1, p0, Lcom/ut/mini/UTPageHitHelper;->mPageEventObjects:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->getCacheKey()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 447
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public getCurrentPageName()Ljava/lang/String;
    .locals 1

    .line 475
    iget-object v0, p0, Lcom/ut/mini/UTPageHitHelper;->mCurPage:Ljava/lang/String;

    return-object v0
.end method

.method public getLastCacheKey()Ljava/lang/String;
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/ut/mini/UTPageHitHelper;->mLastCacheKey:Ljava/lang/String;

    return-object v0
.end method

.method public getLastCacheKeyScmUrl()Ljava/lang/String;
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/ut/mini/UTPageHitHelper;->mLastCacheKeyScmUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getLastCacheKeySpmUrl()Ljava/lang/String;
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/ut/mini/UTPageHitHelper;->mLastCacheKeySpmUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getLastCacheKeyUtParam()Ljava/lang/String;
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/ut/mini/UTPageHitHelper;->mLastCacheKeyUtParam:Ljava/lang/String;

    return-object v0
.end method

.method public getLastCacheKeyUtParamCnt()Ljava/lang/String;
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/ut/mini/UTPageHitHelper;->mLastCacheKeyUtParamCnt:Ljava/lang/String;

    return-object v0
.end method

.method declared-synchronized getNextPageProperties(Ljava/lang/Object;)Ljava/util/Map;
    .locals 0
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

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 421
    :try_start_0
    invoke-direct {p0, p1}, Lcom/ut/mini/UTPageHitHelper;->_getOrNewAUTPageEventObject(Ljava/lang/Object;)Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;

    move-result-object p1

    .line 422
    invoke-virtual {p1}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->getNextPageProperties()Ljava/util/Map;

    move-result-object p1
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

    .line 424
    monitor-exit p0

    return-object p1
.end method

.method public declared-synchronized getOrNewUTPageStateObject(Ljava/lang/Object;)Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;
    .locals 2

    monitor-enter p0

    .line 1667
    :try_start_0
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_2

    .line 1668
    invoke-direct {p0, p1}, Lcom/ut/mini/UTPageHitHelper;->_getPageEventObjectCacheKey(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 1669
    iget-object v0, p0, Lcom/ut/mini/UTPageHitHelper;->mClearUTPageStateObjectList:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1670
    iget-object v0, p0, Lcom/ut/mini/UTPageHitHelper;->mClearUTPageStateObjectList:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 1672
    :cond_0
    iget-object v0, p0, Lcom/ut/mini/UTPageHitHelper;->mPageStateObjects:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1673
    iget-object v0, p0, Lcom/ut/mini/UTPageHitHelper;->mPageStateObjects:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 1675
    :cond_1
    :try_start_1
    new-instance v0, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;

    invoke-direct {v0}, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;-><init>()V

    .line 1676
    iget-object v1, p0, Lcom/ut/mini/UTPageHitHelper;->mPageStateObjects:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1677
    monitor-exit p0

    return-object v0

    :cond_2
    const/4 p1, 0x0

    .line 1680
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized getPageAllProperties(Landroid/app/Activity;)Ljava/util/Map;
    .locals 11
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

    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_d

    .line 1286
    :try_start_0
    iget-object v3, p0, Lcom/ut/mini/UTPageHitHelper;->mCurrentPageCacheKey:Ljava/lang/String;

    if-nez v3, :cond_0

    goto/16 :goto_4

    .line 1292
    :cond_0
    invoke-direct {p0, p1}, Lcom/ut/mini/UTPageHitHelper;->_getOrNewAUTPageEventObject(Ljava/lang/Object;)Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;

    move-result-object v3

    .line 1293
    invoke-virtual {v3}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->isPageAppearCalled()Z

    move-result v4

    if-nez v4, :cond_1

    const-string p1, "getPagePropertiesWithSpmAndUtparam"

    .line 1294
    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "activity isPageAppearCalled is false"

    aput-object v3, v1, v2

    invoke-static {p1, v1}, Lcom/alibaba/analytics/utils/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1295
    monitor-exit p0

    return-object v0

    .line 1299
    :cond_1
    :try_start_1
    invoke-virtual {v3}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->getPageStatus()Lcom/ut/mini/UTPageStatus;

    move-result-object v4

    if-eqz v4, :cond_2

    sget-object v4, Lcom/ut/mini/UTPageStatus;->UT_H5_IN_WebView:Lcom/ut/mini/UTPageStatus;

    .line 1300
    invoke-virtual {v3}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->getPageStatus()Lcom/ut/mini/UTPageStatus;

    move-result-object v5

    if-ne v4, v5, :cond_2

    const-string p1, "getPagePropertiesWithSpmAndUtparam"

    .line 1301
    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "activity is UT_H5_IN_WebView"

    aput-object v3, v1, v2

    invoke-static {p1, v1}, Lcom/alibaba/analytics/utils/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1302
    monitor-exit p0

    return-object v0

    .line 1306
    :cond_2
    :try_start_2
    invoke-virtual {p0, p1}, Lcom/ut/mini/UTPageHitHelper;->getOrNewUTPageStateObject(Ljava/lang/Object;)Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/ut/mini/UTPageHitHelper;->copyUTPageStateObject(Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;)Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;

    move-result-object v4

    if-nez v4, :cond_3

    const-string p1, "getPagePropertiesWithSpmAndUtparam"

    .line 1308
    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "getOrNewUTPageStateObject is null"

    aput-object v3, v1, v2

    invoke-static {p1, v1}, Lcom/alibaba/analytics/utils/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1309
    monitor-exit p0

    return-object v0

    .line 1312
    :cond_3
    :try_start_3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1313
    iget-object v1, p0, Lcom/ut/mini/UTPageHitHelper;->mPageProperties:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1314
    invoke-virtual {v3}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->getPageProperties()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 1315
    invoke-virtual {v3}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->getPageProperties()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_4
    const-string v1, ""

    const-string v5, ""

    const-string v6, ""

    .line 1322
    invoke-virtual {v3}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->getPageUrl()Landroid/net/Uri;

    move-result-object v3

    if-nez v3, :cond_5

    .line 1324
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 1326
    invoke-virtual {v7}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_5
    if-eqz v3, :cond_6

    .line 1332
    :try_start_4
    invoke-direct {p0, v3}, Lcom/ut/mini/UTPageHitHelper;->_getSpmByUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v7

    :try_start_5
    const-string v8, "getPagePropertiesWithSpmAndUtparam"

    .line 1334
    new-array v9, v2, [Ljava/lang/Object;

    invoke-static {v8, v7, v9}, Lcom/alibaba/analytics/utils/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_0
    :try_start_6
    const-string/jumbo v7, "utparam"

    .line 1337
    invoke-virtual {v3, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v7

    :try_start_7
    const-string v8, "getPagePropertiesWithSpmAndUtparam"

    .line 1339
    new-array v9, v2, [Ljava/lang/Object;

    invoke-static {v8, v7, v9}, Lcom/alibaba/analytics/utils/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :goto_1
    :try_start_8
    const-string/jumbo v7, "scm"

    .line 1342
    invoke-virtual {v3, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-object v8, v1

    move-object v10, v3

    move-object v9, v5

    goto :goto_2

    :catch_2
    move-exception v3

    :try_start_9
    const-string v7, "getPagePropertiesWithSpmAndUtparam"

    .line 1344
    new-array v8, v2, [Ljava/lang/Object;

    invoke-static {v7, v3, v8}, Lcom/alibaba/analytics/utils/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_6
    move-object v8, v1

    move-object v9, v5

    move-object v10, v6

    .line 1348
    :goto_2
    invoke-direct {p0, p1}, Lcom/ut/mini/UTPageHitHelper;->_getPageEventObjectCacheKey(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/ut/mini/UTPageHitHelper;->mLastCacheKey:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    .line 1349
    iget-boolean v1, v4, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mIsSwitchBackground:Z

    if-nez v1, :cond_a

    const-string v1, "1"

    const-string/jumbo v3, "skipbk"

    .line 1352
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-boolean v1, v4, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mIsSkipBackForever:Z

    if-nez v1, :cond_7

    iget-boolean v1, v4, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mIsSkipBack:Z

    if-eqz v1, :cond_8

    .line 1355
    :cond_7
    iput-boolean v2, v4, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mIsBack:Z

    .line 1356
    iput-boolean v2, v4, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mIsSkipBack:Z

    .line 1360
    :cond_8
    iget-boolean v1, v4, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mIsBack:Z

    if-eqz v1, :cond_9

    iget-boolean v1, v4, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mIsFrame:Z

    if-eqz v1, :cond_b

    if-eqz p1, :cond_b

    :cond_9
    move-object v5, p0

    move-object v6, v4

    move-object v7, v0

    .line 1361
    invoke-direct/range {v5 .. v10}, Lcom/ut/mini/UTPageHitHelper;->refreshUTPageStateObject(Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 1365
    :cond_a
    iput-boolean v2, v4, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mIsBack:Z

    .line 1366
    invoke-direct {p0, v0}, Lcom/ut/mini/UTPageHitHelper;->clearUTPageStateObject(Ljava/util/Map;)V

    .line 1368
    :cond_b
    :goto_3
    iget-boolean v1, v4, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mIsBack:Z

    if-eqz v1, :cond_c

    .line 1370
    invoke-direct {p0, v0}, Lcom/ut/mini/UTPageHitHelper;->clearUTPageStateObject(Ljava/util/Map;)V

    .line 1373
    :cond_c
    invoke-direct {p0, v4, v0}, Lcom/ut/mini/UTPageHitHelper;->forceSetSpm(Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;Ljava/util/Map;)V

    .line 1374
    invoke-virtual {v4, p1}, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->getPageStatMap(Z)Ljava/util/Map;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 1375
    monitor-exit p0

    return-object v0

    :cond_d
    :goto_4
    :try_start_a
    const-string p1, "getPagePropertiesWithSpmAndUtparam"

    .line 1287
    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "activity or CurrentPageCacheKey is null"

    aput-object v3, v1, v2

    invoke-static {p1, v1}, Lcom/alibaba/analytics/utils/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 1288
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getPageProperties(Ljava/lang/Object;)Ljava/util/Map;
    .locals 2
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

    monitor-enter p0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 734
    monitor-exit p0

    return-object p1

    .line 736
    :cond_0
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 737
    iget-object v1, p0, Lcom/ut/mini/UTPageHitHelper;->mPageProperties:Ljava/util/Map;

    if-eqz v1, :cond_1

    .line 738
    iget-object v1, p0, Lcom/ut/mini/UTPageHitHelper;->mPageProperties:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 740
    :cond_1
    invoke-direct {p0, p1}, Lcom/ut/mini/UTPageHitHelper;->_getOrNewAUTPageEventObject(Ljava/lang/Object;)Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;

    move-result-object p1

    .line 741
    invoke-virtual {p1}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->getPageProperties()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 743
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 745
    :cond_2
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized getPageScmPre(Landroid/app/Activity;)Ljava/lang/String;
    .locals 5

    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    const-string p1, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1542
    monitor-exit p0

    return-object p1

    .line 1545
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/ut/mini/UTPageHitHelper;->_getOrNewAUTPageEventObject(Ljava/lang/Object;)Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;

    move-result-object v0

    .line 1547
    invoke-virtual {v0}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->getPageStatus()Lcom/ut/mini/UTPageStatus;

    move-result-object v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/ut/mini/UTPageStatus;->UT_H5_IN_WebView:Lcom/ut/mini/UTPageStatus;

    .line 1548
    invoke-virtual {v0}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->getPageStatus()Lcom/ut/mini/UTPageStatus;

    move-result-object v0

    if-ne v1, v0, :cond_1

    const-string p1, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1549
    monitor-exit p0

    return-object p1

    :cond_1
    :try_start_2
    const-string v0, ""

    .line 1554
    invoke-virtual {p0, p1}, Lcom/ut/mini/UTPageHitHelper;->getOrNewUTPageStateObject(Ljava/lang/Object;)Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 1556
    iget-boolean v2, v1, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mIsBack:Z

    .line 1557
    iget-boolean v3, v1, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mIsSwitchBackground:Z

    if-nez v3, :cond_6

    .line 1559
    iget-boolean v3, v1, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mIsSkipBackForever:Z

    const/4 v4, 0x0

    if-nez v3, :cond_2

    iget-boolean v3, v1, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mIsSkipBack:Z

    if-eqz v3, :cond_3

    :cond_2
    const/4 v2, 0x0

    .line 1564
    :cond_3
    invoke-direct {p0, p1}, Lcom/ut/mini/UTPageHitHelper;->_getPageEventObjectCacheKey(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object v3, p0, Lcom/ut/mini/UTPageHitHelper;->mLastCacheKey:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    .line 1565
    iget-boolean v3, v1, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mIsFrame:Z

    if-eqz v3, :cond_4

    if-eqz p1, :cond_4

    const/4 v2, 0x0

    :cond_4
    if-nez v2, :cond_5

    .line 1571
    iget-object p1, p0, Lcom/ut/mini/UTPageHitHelper;->mLastCacheKey:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 1572
    iget-object p1, p0, Lcom/ut/mini/UTPageHitHelper;->mLastCacheKeyScmUrl:Ljava/lang/String;

    goto :goto_0

    .line 1575
    :cond_5
    iget-object p1, v1, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mScmPre:Ljava/lang/String;

    :goto_0
    move-object v0, p1

    goto :goto_1

    .line 1579
    :cond_6
    iget-object v0, v1, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mScmPre:Ljava/lang/String;

    :cond_7
    :goto_1
    if-nez v0, :cond_8

    const-string v0, ""
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1586
    :cond_8
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized getPageSpmPre(Landroid/app/Activity;)Ljava/lang/String;
    .locals 5

    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    const-string p1, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1493
    monitor-exit p0

    return-object p1

    .line 1496
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/ut/mini/UTPageHitHelper;->_getOrNewAUTPageEventObject(Ljava/lang/Object;)Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;

    move-result-object v0

    .line 1498
    invoke-virtual {v0}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->getPageStatus()Lcom/ut/mini/UTPageStatus;

    move-result-object v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/ut/mini/UTPageStatus;->UT_H5_IN_WebView:Lcom/ut/mini/UTPageStatus;

    .line 1499
    invoke-virtual {v0}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->getPageStatus()Lcom/ut/mini/UTPageStatus;

    move-result-object v0

    if-ne v1, v0, :cond_1

    const-string p1, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1500
    monitor-exit p0

    return-object p1

    :cond_1
    :try_start_2
    const-string v0, ""

    .line 1505
    invoke-virtual {p0, p1}, Lcom/ut/mini/UTPageHitHelper;->getOrNewUTPageStateObject(Ljava/lang/Object;)Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 1507
    iget-boolean v2, v1, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mIsBack:Z

    .line 1508
    iget-boolean v3, v1, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mIsSwitchBackground:Z

    if-nez v3, :cond_6

    .line 1510
    iget-boolean v3, v1, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mIsSkipBackForever:Z

    const/4 v4, 0x0

    if-nez v3, :cond_2

    iget-boolean v3, v1, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mIsSkipBack:Z

    if-eqz v3, :cond_3

    :cond_2
    const/4 v2, 0x0

    .line 1515
    :cond_3
    invoke-direct {p0, p1}, Lcom/ut/mini/UTPageHitHelper;->_getPageEventObjectCacheKey(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object v3, p0, Lcom/ut/mini/UTPageHitHelper;->mLastCacheKey:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    .line 1516
    iget-boolean v3, v1, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mIsFrame:Z

    if-eqz v3, :cond_4

    if-eqz p1, :cond_4

    const/4 v2, 0x0

    :cond_4
    if-nez v2, :cond_5

    .line 1522
    iget-object p1, p0, Lcom/ut/mini/UTPageHitHelper;->mLastCacheKey:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 1523
    iget-object p1, p0, Lcom/ut/mini/UTPageHitHelper;->mLastCacheKeySpmUrl:Ljava/lang/String;

    goto :goto_0

    .line 1526
    :cond_5
    iget-object p1, v1, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mSpmPre:Ljava/lang/String;

    :goto_0
    move-object v0, p1

    goto :goto_1

    .line 1530
    :cond_6
    iget-object v0, v1, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mSpmPre:Ljava/lang/String;

    :cond_7
    :goto_1
    if-nez v0, :cond_8

    const-string v0, ""
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1537
    :cond_8
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized getPageSpmUrl(Landroid/app/Activity;)Ljava/lang/String;
    .locals 5

    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    const-string p1, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1412
    monitor-exit p0

    return-object p1

    .line 1415
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/ut/mini/UTPageHitHelper;->_getOrNewAUTPageEventObject(Ljava/lang/Object;)Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;

    move-result-object v0

    .line 1417
    invoke-virtual {v0}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->getPageStatus()Lcom/ut/mini/UTPageStatus;

    move-result-object v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/ut/mini/UTPageStatus;->UT_H5_IN_WebView:Lcom/ut/mini/UTPageStatus;

    .line 1418
    invoke-virtual {v0}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->getPageStatus()Lcom/ut/mini/UTPageStatus;

    move-result-object v2

    if-ne v1, v2, :cond_1

    const-string p1, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1419
    monitor-exit p0

    return-object p1

    :cond_1
    :try_start_2
    const-string v1, ""

    .line 1426
    invoke-virtual {v0}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->getPageUrl()Landroid/net/Uri;

    move-result-object v2

    if-nez v2, :cond_2

    .line 1428
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 1430
    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    if-eqz v2, :cond_3

    .line 1436
    :try_start_3
    invoke-direct {p0, v2}, Lcom/ut/mini/UTPageHitHelper;->_getSpmByUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1443
    :catch_0
    :cond_3
    :try_start_4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v2, :cond_4

    .line 1444
    monitor-exit p0

    return-object v1

    .line 1448
    :cond_4
    :try_start_5
    invoke-virtual {p0, p1}, Lcom/ut/mini/UTPageHitHelper;->getOrNewUTPageStateObject(Ljava/lang/Object;)Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;

    move-result-object v2

    if-eqz v2, :cond_c

    .line 1450
    iget-boolean v1, v2, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mIsBack:Z

    .line 1451
    iget-boolean v3, v2, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mIsSwitchBackground:Z

    if-nez v3, :cond_b

    .line 1453
    iget-boolean v3, v2, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mIsSkipBackForever:Z

    const/4 v4, 0x0

    if-nez v3, :cond_5

    iget-boolean v3, v2, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mIsSkipBack:Z

    if-eqz v3, :cond_6

    :cond_5
    const/4 v1, 0x0

    .line 1458
    :cond_6
    invoke-direct {p0, p1}, Lcom/ut/mini/UTPageHitHelper;->_getPageEventObjectCacheKey(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object v3, p0, Lcom/ut/mini/UTPageHitHelper;->mLastCacheKey:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    .line 1459
    iget-boolean v3, v2, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mIsFrame:Z

    if-eqz v3, :cond_7

    if-eqz p1, :cond_7

    const/4 v1, 0x0

    :cond_7
    if-nez v1, :cond_a

    .line 1465
    invoke-virtual {v0}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->getPageProperties()Ljava/util/Map;

    move-result-object p1

    const-string/jumbo v0, "spm-url"

    .line 1466
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v1, "spm_url"

    .line 1468
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1469
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_0

    .line 1471
    :cond_8
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    move-object v0, v1

    goto :goto_0

    :cond_9
    const-string/jumbo v0, "spm"

    .line 1474
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    :goto_0
    move-object v1, v0

    goto :goto_1

    .line 1477
    :cond_a
    iget-object p1, v2, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mSpmUrl:Ljava/lang/String;

    move-object v1, p1

    goto :goto_1

    .line 1481
    :cond_b
    iget-object v1, v2, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mSpmUrl:Ljava/lang/String;

    :cond_c
    :goto_1
    if-nez v1, :cond_d

    const-string v1, ""
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1488
    :cond_d
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getPageUrl(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 790
    monitor-exit p0

    return-object v0

    .line 792
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/ut/mini/UTPageHitHelper;->_getOrNewAUTPageEventObject(Ljava/lang/Object;)Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 793
    invoke-virtual {p1}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->getPageUrl()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 794
    invoke-virtual {p1}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->getPageUrl()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 796
    :cond_1
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized isH52001(Ljava/lang/Object;)Z
    .locals 5

    monitor-enter p0

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 498
    :try_start_0
    invoke-direct {p0, p1}, Lcom/ut/mini/UTPageHitHelper;->_getOrNewAUTPageEventObject(Ljava/lang/Object;)Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;

    move-result-object v3

    .line 499
    invoke-virtual {v3}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->getPageStatus()Lcom/ut/mini/UTPageStatus;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 500
    invoke-virtual {v3}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->getPageStatus()Lcom/ut/mini/UTPageStatus;

    move-result-object v3

    sget-object v4, Lcom/ut/mini/UTPageStatus;->UT_H5_IN_WebView:Lcom/ut/mini/UTPageStatus;

    if-ne v3, v4, :cond_0

    const-string v3, "UTPageHitHelper"

    .line 501
    new-array v0, v0, [Ljava/lang/Object;

    const-string v4, "isH52001:true aPageObject"

    aput-object v4, v0, v2

    aput-object p1, v0, v1

    invoke-static {v3, v0}, Lcom/alibaba/analytics/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 502
    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    const-string v3, "UTPageHitHelper"

    .line 506
    new-array v0, v0, [Ljava/lang/Object;

    const-string v4, "isH52001:false aPageObject"

    aput-object v4, v0, v2

    aput-object p1, v0, v1

    invoke-static {v3, v0}, Lcom/alibaba/analytics/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 507
    monitor-exit p0

    return v2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized pageAppear(Ljava/lang/Object;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 556
    :try_start_0
    invoke-virtual {p0, p1, v0, v1}, Lcom/ut/mini/UTPageHitHelper;->pageAppear(Ljava/lang/Object;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 557
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized pageAppear(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 694
    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/ut/mini/UTPageHitHelper;->pageAppear(Ljava/lang/Object;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 695
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized pageAppear(Ljava/lang/Object;Ljava/lang/String;Z)V
    .locals 10

    monitor-enter p0

    :try_start_0
    const-string v0, "UTPageHitHelper"

    const/4 v1, 0x6

    .line 560
    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "pageAppear aPageObject"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const-string v4, "aCustomPageName"

    const/4 v5, 0x2

    aput-object v4, v1, v5

    const/4 v4, 0x3

    aput-object p2, v1, v4

    const/4 v4, 0x4

    const-string v6, "aIsDonotSkipFlag"

    aput-object v6, v1, v4

    const/4 v4, 0x5

    .line 561
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v1, v4

    .line 560
    invoke-static {v0, v1}, Lcom/alibaba/analytics/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 562
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ut/mini/UTAnalytics;->isInit()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "UTPageHitHelper"

    .line 563
    new-array p2, v5, [Ljava/lang/Object;

    const-string p3, "pageAppear"

    aput-object p3, p2, v3

    const-string p3, "Please initialize UT_Analytics first"

    aput-object p3, p2, v2

    invoke-static {p1, p2}, Lcom/alibaba/analytics/utils/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 564
    monitor-exit p0

    return-void

    .line 567
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/ut/mini/UTPvidHelper;->pageAppear()V

    .line 569
    invoke-static {}, Lcom/ut/mini/module/trackerlistener/UTTrackerListenerMgr;->getInstance()Lcom/ut/mini/module/trackerlistener/UTTrackerListenerMgr;

    move-result-object v0

    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ut/mini/UTAnalytics;->getDefaultTracker()Lcom/ut/mini/UTTracker;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/ut/mini/module/trackerlistener/UTTrackerListenerMgr;->pageAppear(Lcom/ut/mini/UTTracker;Ljava/lang/Object;Ljava/lang/String;Z)V

    if-eqz p1, :cond_c

    .line 574
    invoke-direct {p0, p1}, Lcom/ut/mini/UTPageHitHelper;->_getPageEventObjectCacheKey(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 575
    iget-object v1, p0, Lcom/ut/mini/UTPageHitHelper;->mCurrentPageCacheKey:Ljava/lang/String;

    .line 576
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    .line 577
    monitor-exit p0

    return-void

    .line 580
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/ut/mini/UTPageHitHelper;->mCurrentPageCacheKey:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v0, "lost 2001"

    .line 581
    new-array v1, v2, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Last page requires leave("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/ut/mini/UTPageHitHelper;->mCurrentPageCacheKey:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ")."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-static {v0, v1}, Lcom/alibaba/analytics/utils/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 584
    :cond_2
    invoke-direct {p0, p1}, Lcom/ut/mini/UTPageHitHelper;->_getOrNewAUTPageEventObject(Ljava/lang/Object;)Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;

    move-result-object v0

    if-nez p3, :cond_3

    .line 585
    invoke-virtual {v0}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->isSkipPage()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo p2, "skip page[pageAppear]"

    .line 586
    new-array p3, v2, [Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "page name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p3, v3

    invoke-static {p2, p3}, Lcom/alibaba/analytics/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 587
    monitor-exit p0

    return-void

    .line 590
    :cond_3
    :try_start_3
    invoke-static {v3, p1}, Lcom/ut/mini/UTPageHitHelper;->disPathcherPageChangerEvent(ILjava/lang/Object;)V

    .line 591
    invoke-static {}, Lcom/ut/mini/module/UTOperationStack;->getInstance()Lcom/ut/mini/module/UTOperationStack;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pageAppear:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/ut/mini/module/UTOperationStack;->addAction(Ljava/lang/String;)V

    .line 593
    invoke-static {}, Lcom/ut/mini/UTVariables;->getInstance()Lcom/ut/mini/UTVariables;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ut/mini/UTVariables;->getH5Url()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    if-eqz v1, :cond_4

    .line 597
    invoke-static {}, Lcom/ut/mini/UTVariables;->getInstance()Lcom/ut/mini/UTVariables;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/ut/mini/UTVariables;->setBackupH5Url(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 602
    :try_start_4
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string/jumbo v5, "spm"

    .line 603
    invoke-virtual {v1, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "scm"

    .line 604
    invoke-virtual {v1, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 605
    iget-object v6, p0, Lcom/ut/mini/UTPageHitHelper;->mPageProperties:Ljava/util/Map;

    const-string/jumbo v7, "spm"

    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 606
    iget-object v5, p0, Lcom/ut/mini/UTPageHitHelper;->mPageProperties:Ljava/util/Map;

    const-string/jumbo v6, "scm"

    invoke-interface {v5, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_5
    const-string v5, ""

    .line 609
    new-array v6, v2, [Ljava/lang/Object;

    aput-object v1, v6, v3

    invoke-static {v5, v6}, Lcom/alibaba/analytics/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 611
    :goto_0
    invoke-static {}, Lcom/ut/mini/UTVariables;->getInstance()Lcom/ut/mini/UTVariables;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/ut/mini/UTVariables;->setH5Url(Ljava/lang/String;)V

    .line 615
    :cond_4
    invoke-static {p1}, Lcom/ut/mini/UTPageHitHelper;->_getPageName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 617
    sget-boolean v5, Lcom/ut/mini/extend/UTExtendSwitch;->bJTrackExtend:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v5, :cond_6

    .line 620
    :try_start_6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/ut/mini/extend/JTrackExtend;->getPageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 621
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 623
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string v7, "activity"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 624
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x8

    invoke-virtual {v5, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    :cond_5
    const-string v6, "JTrack"

    .line 626
    new-array v7, v2, [Ljava/lang/Object;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getPageName:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v3

    invoke-static {v6, v7}, Lcom/alibaba/analytics/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-object v1, v5

    .line 634
    :catch_1
    :cond_6
    :try_start_7
    invoke-static {p2}, Lcom/alibaba/analytics/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7

    goto :goto_1

    :cond_7
    move-object p2, v1

    .line 637
    :goto_1
    invoke-virtual {v0}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->getPageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/analytics/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 638
    invoke-virtual {v0}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->getPageName()Ljava/lang/String;

    move-result-object p2

    .line 640
    :cond_8
    iput-object p2, p0, Lcom/ut/mini/UTPageHitHelper;->mCurPage:Ljava/lang/String;

    .line 641
    invoke-virtual {v0, p2}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->setPageName(Ljava/lang/String;)V

    .line 642
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->setPageAppearTimestamp(J)V

    .line 643
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->setPageStayTimstamp(J)V

    .line 644
    invoke-static {}, Lcom/ut/mini/UTVariables;->getInstance()Lcom/ut/mini/UTVariables;

    move-result-object p2

    invoke-virtual {p2}, Lcom/ut/mini/UTVariables;->getRefPage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->setRefPage(Ljava/lang/String;)V

    .line 645
    invoke-virtual {v0}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->setPageAppearCalled()V

    .line 647
    iget-object p2, p0, Lcom/ut/mini/UTPageHitHelper;->mNextPageProperties:Ljava/util/Map;

    if-eqz p2, :cond_a

    .line 649
    iget-object p2, p0, Lcom/ut/mini/UTPageHitHelper;->mNextPageProperties:Ljava/util/Map;

    iput-object p2, p0, Lcom/ut/mini/UTPageHitHelper;->mBackupNextPageProperties:Ljava/util/Map;

    .line 651
    iget-object p2, p0, Lcom/ut/mini/UTPageHitHelper;->mNextPageProperties:Ljava/util/Map;

    invoke-virtual {v0, p2}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->setNextPageProperties(Ljava/util/Map;)V

    .line 653
    invoke-virtual {v0}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->getPageProperties()Ljava/util/Map;

    move-result-object p2

    if-nez p2, :cond_9

    .line 655
    iget-object p2, p0, Lcom/ut/mini/UTPageHitHelper;->mNextPageProperties:Ljava/util/Map;

    invoke-virtual {v0, p2}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->setPageProperties(Ljava/util/Map;)V

    goto :goto_2

    .line 657
    :cond_9
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 658
    invoke-interface {v1, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 659
    iget-object p2, p0, Lcom/ut/mini/UTPageHitHelper;->mNextPageProperties:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 660
    invoke-virtual {v0, v1}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->setPageProperties(Ljava/util/Map;)V

    .line 663
    :cond_a
    :goto_2
    iput-object v4, p0, Lcom/ut/mini/UTPageHitHelper;->mNextPageProperties:Ljava/util/Map;

    .line 664
    invoke-direct {p0, p1}, Lcom/ut/mini/UTPageHitHelper;->_getPageEventObjectCacheKey(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/ut/mini/UTPageHitHelper;->mCurrentPageCacheKey:Ljava/lang/String;

    .line 666
    iget-boolean p2, p0, Lcom/ut/mini/UTPageHitHelper;->mNextPageSkipBack:Z

    if-eqz p2, :cond_b

    .line 668
    invoke-virtual {p0, p1}, Lcom/ut/mini/UTPageHitHelper;->getOrNewUTPageStateObject(Ljava/lang/Object;)Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;

    move-result-object p2

    if-eqz p2, :cond_b

    .line 670
    iput-boolean v2, p2, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mIsSkipBack:Z

    .line 671
    iput-boolean v3, p0, Lcom/ut/mini/UTPageHitHelper;->mNextPageSkipBack:Z

    .line 676
    :cond_b
    invoke-direct {p0, v0}, Lcom/ut/mini/UTPageHitHelper;->_clearUTPageEventObjectCache(Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;)V

    .line 678
    invoke-direct {p0, p1}, Lcom/ut/mini/UTPageHitHelper;->_getPageEventObjectCacheKey(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2, v0}, Lcom/ut/mini/UTPageHitHelper;->_putUTPageEventObjectToCache(Ljava/lang/String;Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;)V

    if-eqz p3, :cond_d

    .line 682
    invoke-virtual {v0}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->isSkipPage()Z

    move-result p2

    if-eqz p2, :cond_d

    .line 683
    invoke-virtual {p0, p1}, Lcom/ut/mini/UTPageHitHelper;->getOrNewUTPageStateObject(Ljava/lang/Object;)Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;

    move-result-object p1

    if-eqz p1, :cond_d

    .line 685
    iput-boolean v2, p1, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mIsFrame:Z

    goto :goto_3

    :cond_c
    const-string p1, "pageAppear"

    .line 689
    new-array p2, v2, [Ljava/lang/Object;

    const-string p3, "The page object should not be null"

    aput-object p3, p2, v3

    invoke-static {p1, p2}, Lcom/alibaba/analytics/utils/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 691
    :cond_d
    :goto_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method pageAppearByAuto(Landroid/app/Activity;)V
    .locals 1

    .line 479
    iget-boolean v0, p0, Lcom/ut/mini/UTPageHitHelper;->mIsTurnOff:Z

    if-eqz v0, :cond_0

    return-void

    .line 482
    :cond_0
    invoke-virtual {p0, p1}, Lcom/ut/mini/UTPageHitHelper;->pageAppear(Ljava/lang/Object;)V

    return-void
.end method

.method public pageDestroyed(Landroid/app/Activity;)V
    .locals 1

    .line 1647
    invoke-direct {p0, p1}, Lcom/ut/mini/UTPageHitHelper;->_getPageEventObjectCacheKey(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 1648
    iget-object v0, p0, Lcom/ut/mini/UTPageHitHelper;->mPageStateObjects:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1649
    iget-object v0, p0, Lcom/ut/mini/UTPageHitHelper;->mPageStateObjects:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1651
    :cond_0
    iget-object v0, p0, Lcom/ut/mini/UTPageHitHelper;->mClearUTPageStateObjectList:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1652
    iget-object v0, p0, Lcom/ut/mini/UTPageHitHelper;->mClearUTPageStateObjectList:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 1654
    :cond_1
    invoke-direct {p0}, Lcom/ut/mini/UTPageHitHelper;->_releaseUTPageStateObject()V

    return-void
.end method

.method public declared-synchronized pageDisAppear(Ljava/lang/Object;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    .line 1596
    :try_start_0
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ut/mini/UTAnalytics;->getDefaultTracker()Lcom/ut/mini/UTTracker;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/ut/mini/UTPageHitHelper;->pageDisAppear(Ljava/lang/Object;Lcom/ut/mini/UTTracker;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1597
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized pageDisAppear(Ljava/lang/Object;Lcom/ut/mini/UTTracker;)V
    .locals 24
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    monitor-enter p0

    :try_start_0
    const-string v0, "UTPageHitHelper"

    const/4 v10, 0x2

    .line 921
    new-array v1, v10, [Ljava/lang/Object;

    const-string v2, "pageDisAppear aPageObject"

    const/4 v11, 0x0

    aput-object v2, v1, v11

    const/4 v12, 0x1

    aput-object v8, v1, v12

    invoke-static {v0, v1}, Lcom/alibaba/analytics/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 922
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ut/mini/UTAnalytics;->isInit()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "UTPageHitHelper"

    .line 923
    new-array v1, v10, [Ljava/lang/Object;

    const-string v2, "pageDisAppear"

    aput-object v2, v1, v11

    const-string v2, "Please initialize UT_Analytics first"

    aput-object v2, v1, v12

    invoke-static {v0, v1}, Lcom/alibaba/analytics/utils/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 924
    monitor-exit p0

    return-void

    .line 927
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/ut/mini/module/trackerlistener/UTTrackerListenerMgr;->getInstance()Lcom/ut/mini/module/trackerlistener/UTTrackerListenerMgr;

    move-result-object v0

    invoke-virtual {v0, v9, v8}, Lcom/ut/mini/module/trackerlistener/UTTrackerListenerMgr;->pageDisAppear(Lcom/ut/mini/UTTracker;Ljava/lang/Object;)V

    if-eqz v8, :cond_37

    .line 931
    iget-object v0, v7, Lcom/ut/mini/UTPageHitHelper;->mCurrentPageCacheKey:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, "pageDisAppear"

    .line 932
    new-array v1, v12, [Ljava/lang/Object;

    const-string v2, "UT has already recorded the page disappear event on this page"

    aput-object v2, v1, v11

    invoke-static {v0, v1}, Lcom/alibaba/analytics/utils/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 933
    monitor-exit p0

    return-void

    .line 936
    :cond_1
    :try_start_2
    invoke-direct/range {p0 .. p1}, Lcom/ut/mini/UTPageHitHelper;->_getOrNewAUTPageEventObject(Ljava/lang/Object;)Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;

    move-result-object v13

    .line 937
    invoke-virtual {v13}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->isPageAppearCalled()Z

    move-result v14

    if-eqz v14, :cond_34

    .line 940
    invoke-static {}, Lcom/ut/mini/module/UTOperationStack;->getInstance()Lcom/ut/mini/module/UTOperationStack;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pageDisAppear:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ut/mini/module/UTOperationStack;->addAction(Ljava/lang/String;)V

    .line 942
    invoke-virtual {v13}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->getPageStatus()Lcom/ut/mini/UTPageStatus;

    move-result-object v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/ut/mini/UTPageStatus;->UT_H5_IN_WebView:Lcom/ut/mini/UTPageStatus;

    invoke-virtual {v13}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->getPageStatus()Lcom/ut/mini/UTPageStatus;

    move-result-object v1

    if-ne v0, v1, :cond_5

    .line 943
    invoke-virtual {v13}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->getPageStatusCode()I

    move-result v0

    if-ne v12, v0, :cond_2

    .line 945
    iget-object v0, v7, Lcom/ut/mini/UTPageHitHelper;->mBackupNextPageProperties:Ljava/util/Map;

    iput-object v0, v7, Lcom/ut/mini/UTPageHitHelper;->mNextPageProperties:Ljava/util/Map;

    .line 946
    invoke-static {}, Lcom/ut/mini/UTVariables;->getInstance()Lcom/ut/mini/UTVariables;

    move-result-object v0

    invoke-static {}, Lcom/ut/mini/UTVariables;->getInstance()Lcom/ut/mini/UTVariables;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ut/mini/UTVariables;->getBackupH5Url()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ut/mini/UTVariables;->setH5Url(Ljava/lang/String;)V

    .line 949
    :cond_2
    invoke-virtual {v13}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->getPageStatusCode()I

    move-result v0

    if-eq v12, v0, :cond_3

    .line 950
    invoke-virtual {v13}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->isH5Called()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_3
    const-string v0, "pageDisAppear"

    .line 951
    new-array v1, v12, [Ljava/lang/Object;

    const-string v2, "UTTracker.PAGE_STATUS_CODE_302 or PageEventObject.isH5Called"

    aput-object v2, v1, v11

    invoke-static {v0, v1}, Lcom/alibaba/analytics/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 953
    invoke-virtual/range {p0 .. p1}, Lcom/ut/mini/UTPageHitHelper;->getOrNewUTPageStateObject(Ljava/lang/Object;)Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 955
    iput-boolean v11, v0, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mIsH5Page:Z

    .line 959
    :cond_4
    invoke-virtual {v7, v13}, Lcom/ut/mini/UTPageHitHelper;->_releaseSkipFlagAndH5FlagPageObject(Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;)V

    .line 961
    invoke-direct/range {p0 .. p0}, Lcom/ut/mini/UTPageHitHelper;->_clearPageDisAppearContext()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 962
    monitor-exit p0

    return-void

    .line 966
    :cond_5
    :try_start_3
    invoke-virtual {v13}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->getPageAppearTimestamp()J

    move-result-wide v5

    .line 967
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {v13}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->getPageStayTimstamp()J

    move-result-wide v2

    sub-long v10, v0, v2

    .line 969
    instance-of v0, v8, Landroid/app/Activity;

    if-eqz v0, :cond_d

    .line 970
    invoke-static {v12, v8}, Lcom/ut/mini/UTPageHitHelper;->disPathcherPageChangerEvent(ILjava/lang/Object;)V

    .line 972
    invoke-static {}, Lcom/alibaba/analytics/utils/Logger;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 973
    move-object v0, v8

    nop

    nop

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_6

    move-object v0, v8

    nop

    nop

    .line 974
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_6

    const-string v0, "pageDisAppear"

    .line 975
    new-array v2, v12, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "uri="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v4, v8

    nop

    nop

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Lcom/alibaba/analytics/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 982
    :cond_6
    invoke-virtual {v13}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->getPageUrl()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 985
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_7
    const/4 v0, 0x0

    .line 990
    :goto_0
    move-object v2, v8

    nop

    nop

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 992
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    goto :goto_1

    :cond_8
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_9

    .line 996
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_9
    const/4 v3, 0x0

    :goto_2
    if-eqz v0, :cond_a

    .line 999
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    :cond_a
    if-eqz v3, :cond_c

    .line 1000
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    :cond_b
    const/4 v0, 0x1

    goto :goto_3

    :cond_c
    const/4 v0, 0x0

    .line 1004
    :goto_3
    invoke-virtual {v13}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->getPageUrl()Landroid/net/Uri;

    move-result-object v3

    if-nez v3, :cond_d

    if-eqz v0, :cond_d

    .line 1005
    invoke-virtual {v13, v2}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->setPageUrl(Landroid/net/Uri;)V

    .line 1009
    :cond_d
    invoke-virtual {v13}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->getPageName()Ljava/lang/String;

    move-result-object v0

    .line 1010
    invoke-virtual {v13}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->getRefPage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 1011
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_f

    :cond_e
    const-string v2, "-"

    .line 1015
    :cond_f
    iget-object v3, v7, Lcom/ut/mini/UTPageHitHelper;->mPageProperties:Ljava/util/Map;

    if-nez v3, :cond_10

    .line 1018
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1021
    :cond_10
    sget-boolean v4, Lcom/ut/mini/extend/UTExtendSwitch;->bJTrackExtend:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v4, :cond_15

    .line 1024
    :try_start_4
    instance-of v4, v8, Landroid/app/Activity;

    if-eqz v4, :cond_15

    .line 1025
    move-object v4, v8

    nop

    nop

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    if-eqz v4, :cond_11

    const-string v1, "JTrack"

    .line 1027
    new-array v15, v12, [Ljava/lang/Object;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object/from16 v17, v0

    :try_start_5
    const-string/jumbo v0, "uri:"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v12, 0x0

    aput-object v0, v15, v12

    invoke-static {v1, v15}, Lcom/alibaba/analytics/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    :cond_11
    move-object/from16 v17, v0

    .line 1031
    :goto_4
    invoke-virtual {v13}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->getPageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/analytics/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 1032
    invoke-virtual {v13}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->getPageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/ut/mini/extend/JTrackExtend;->getArgsMap(Ljava/lang/String;Landroid/net/Uri;)Ljava/util/Map;

    move-result-object v1

    const-string v0, "JTrack"

    const/4 v15, 0x1

    .line 1033
    new-array v12, v15, [Ljava/lang/Object;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v1

    const-string v1, "getArgsMap by pagename:"

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->getPageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v15, 0x0

    aput-object v1, v12, v15

    invoke-static {v0, v12}, Lcom/alibaba/analytics/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5

    :cond_12
    const/16 v16, 0x0

    :goto_5
    if-eqz v16, :cond_14

    .line 1036
    invoke-interface/range {v16 .. v16}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_13

    goto :goto_7

    :cond_13
    :goto_6
    move-object/from16 v0, v16

    goto :goto_8

    .line 1037
    :cond_14
    :goto_7
    move-object v0, v8

    nop

    nop

    invoke-static {v0, v4}, Lcom/ut/mini/extend/JTrackExtend;->getArgsMap(Landroid/app/Activity;Landroid/net/Uri;)Ljava/util/Map;

    move-result-object v16

    const-string v0, "JTrack"

    const/4 v1, 0x1

    .line 1038
    new-array v4, v1, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getArgsMap by activity:"

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v12, 0x0

    aput-object v1, v4, v12

    invoke-static {v0, v4}, Lcom/alibaba/analytics/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_6

    :goto_8
    if-eqz v0, :cond_16

    .line 1042
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_16

    .line 1043
    invoke-interface {v3, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string v1, "JTrack"

    const/4 v4, 0x1

    .line 1044
    new-array v12, v4, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "ArgsMap:"

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/alibaba/analytics/utils/StringUtils;->convertMapToString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    aput-object v0, v12, v4

    invoke-static {v1, v12}, Lcom/alibaba/analytics/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_9

    :catch_0
    :cond_15
    move-object/from16 v17, v0

    .line 1052
    :catch_1
    :cond_16
    :goto_9
    :try_start_6
    invoke-virtual {v13}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->getPageProperties()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 1053
    invoke-virtual {v13}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->getPageProperties()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1059
    :cond_17
    instance-of v0, v8, Lcom/ut/mini/IUTPageTrack;

    if-eqz v0, :cond_1a

    .line 1060
    move-object v0, v8

    check-cast v0, Lcom/ut/mini/IUTPageTrack;

    .line 1062
    invoke-interface {v0}, Lcom/ut/mini/IUTPageTrack;->getReferPage()Ljava/lang/String;

    move-result-object v1

    .line 1063
    invoke-static {v1}, Lcom/alibaba/analytics/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_18

    move-object v2, v1

    .line 1067
    :cond_18
    invoke-interface {v0}, Lcom/ut/mini/IUTPageTrack;->getPageProperties()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_19

    .line 1069
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v4

    if-lez v4, :cond_19

    .line 1070
    iget-object v3, v7, Lcom/ut/mini/UTPageHitHelper;->mPageProperties:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1071
    iget-object v3, v7, Lcom/ut/mini/UTPageHitHelper;->mPageProperties:Ljava/util/Map;

    .line 1075
    :cond_19
    invoke-interface {v0}, Lcom/ut/mini/IUTPageTrack;->getPageName()Ljava/lang/String;

    move-result-object v0

    .line 1076
    invoke-static {v0}, Lcom/alibaba/analytics/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1a

    move-object v4, v0

    move-object v12, v3

    goto :goto_a

    :cond_1a
    move-object v12, v3

    move-object/from16 v4, v17

    :goto_a
    move-object v3, v2

    const-string v1, ""

    const-string v2, ""

    const-string v16, ""

    .line 1085
    invoke-virtual {v13}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->getPageUrl()Landroid/net/Uri;

    move-result-object v15
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v15, :cond_23

    .line 1089
    :try_start_7
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_b
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-object/from16 v17, v1

    .line 1090
    :try_start_8
    invoke-direct {v7, v15}, Lcom/ut/mini/UTPageHitHelper;->_getSpmByUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 1092
    invoke-static {v1}, Lcom/alibaba/analytics/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v18
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_a
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-nez v18, :cond_1c

    move-object/from16 v18, v2

    .line 1094
    :try_start_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v19
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-object/from16 v20, v3

    :try_start_a
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1096
    iget-object v3, v7, Lcom/ut/mini/UTPageHitHelper;->mSPMObjectMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 1097
    iget-object v3, v7, Lcom/ut/mini/UTPageHitHelper;->mSPMObjectMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    const/4 v3, 0x1

    goto :goto_b

    :cond_1b
    const/4 v3, 0x0

    :goto_b
    if-nez v3, :cond_1d

    const-string/jumbo v3, "spm"

    .line 1102
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1103
    iget-object v3, v7, Lcom/ut/mini/UTPageHitHelper;->mSPMObjectMap:Ljava/util/Map;

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1104
    invoke-virtual {v7, v2}, Lcom/ut/mini/UTPageHitHelper;->_releaseSPMCacheObj(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_c

    :catch_2
    move-exception v0

    goto/16 :goto_14

    :catch_3
    move-exception v0

    goto/16 :goto_13

    :cond_1c
    move-object/from16 v18, v2

    move-object/from16 v20, v3

    :cond_1d
    :goto_c
    :try_start_b
    const-string/jumbo v2, "utparam"

    .line 1108
    invoke-virtual {v15, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_9
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :try_start_c
    const-string/jumbo v3, "scm"

    .line 1109
    invoke-virtual {v15, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_8
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 1110
    :try_start_d
    invoke-static {v3}, Lcom/alibaba/analytics/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v16
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_7
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    if-nez v16, :cond_1e

    move-object/from16 v19, v1

    :try_start_e
    const-string/jumbo v1, "scm"

    .line 1111
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_4
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto :goto_d

    :catch_4
    move-exception v0

    move-object/from16 v18, v2

    move-object/from16 v16, v3

    goto/16 :goto_15

    :cond_1e
    move-object/from16 v19, v1

    :goto_d
    :try_start_f
    const-string v1, "pg1stepk"

    .line 1114
    invoke-virtual {v15, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1115
    invoke-static {v1}, Lcom/alibaba/analytics/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v16
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_6
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    if-nez v16, :cond_1f

    move-object/from16 v17, v2

    :try_start_10
    const-string v2, "pg1stepk"

    .line 1116
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e

    :cond_1f
    move-object/from16 v17, v2

    :goto_e
    const-string v1, "point"

    .line 1120
    invoke-virtual {v15, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1121
    invoke-static {v1}, Lcom/alibaba/analytics/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_20

    const-string v1, "issb"

    const-string v2, "1"

    .line 1122
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1125
    :cond_20
    invoke-static {v15}, Lcom/ut/mini/UTPageHitHelper;->_getOutsideTTID(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 1126
    invoke-static {v1}, Lcom/alibaba/analytics/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_21

    .line 1127
    invoke-static {}, Lcom/alibaba/analytics/core/ClientVariables;->getInstance()Lcom/alibaba/analytics/core/ClientVariables;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/alibaba/analytics/core/ClientVariables;->setOutsideTTID(Ljava/lang/String;)V

    .line 1130
    :cond_21
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_22

    .line 1131
    invoke-interface {v12, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_5
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    :cond_22
    move-object/from16 v16, v3

    move-object/from16 v18, v17

    goto :goto_16

    :catch_5
    move-exception v0

    goto :goto_10

    :catch_6
    move-exception v0

    goto :goto_f

    :catch_7
    move-exception v0

    move-object/from16 v19, v1

    :goto_f
    move-object/from16 v17, v2

    :goto_10
    move-object/from16 v16, v3

    goto :goto_11

    :catch_8
    move-exception v0

    move-object/from16 v19, v1

    move-object/from16 v17, v2

    :goto_11
    move-object/from16 v18, v17

    goto :goto_15

    :catch_9
    move-exception v0

    move-object/from16 v19, v1

    goto :goto_15

    :catch_a
    move-exception v0

    goto :goto_12

    :catch_b
    move-exception v0

    move-object/from16 v17, v1

    :goto_12
    move-object/from16 v18, v2

    :goto_13
    move-object/from16 v20, v3

    :goto_14
    move-object/from16 v19, v17

    :goto_15
    :try_start_11
    const-string v1, ""

    const/4 v2, 0x1

    .line 1135
    new-array v3, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v3, v2

    invoke-static {v1, v3}, Lcom/alibaba/analytics/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_16

    :cond_23
    move-object/from16 v17, v1

    move-object/from16 v18, v2

    move-object/from16 v20, v3

    move-object/from16 v19, v17

    .line 1140
    :goto_16
    invoke-virtual/range {p0 .. p1}, Lcom/ut/mini/UTPageHitHelper;->getOrNewUTPageStateObject(Ljava/lang/Object;)Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;

    move-result-object v0

    if-eqz v0, :cond_2c

    .line 1143
    invoke-virtual {v13}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->getPageStatus()Lcom/ut/mini/UTPageStatus;

    move-result-object v1

    if-eqz v1, :cond_25

    sget-object v1, Lcom/ut/mini/UTPageStatus;->UT_H5_IN_WebView:Lcom/ut/mini/UTPageStatus;

    .line 1144
    invoke-virtual {v13}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->getPageStatus()Lcom/ut/mini/UTPageStatus;

    move-result-object v3

    if-ne v1, v3, :cond_25

    .line 1145
    iget-boolean v1, v0, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mIsBack:Z

    if-eqz v1, :cond_24

    .line 1146
    invoke-direct {v7, v12}, Lcom/ut/mini/UTPageHitHelper;->clearUTPageStateObject(Ljava/util/Map;)V

    :cond_24
    const/4 v1, 0x0

    .line 1148
    invoke-virtual {v0, v1}, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->getPageStatMap(Z)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v12, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    move-wide/from16 v22, v5

    move/from16 v17, v14

    move-object/from16 v9, v20

    move-wide/from16 v20, v10

    move-object v10, v4

    goto/16 :goto_19

    .line 1150
    :cond_25
    invoke-direct/range {p0 .. p1}, Lcom/ut/mini/UTPageHitHelper;->_getPageEventObjectCacheKey(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v7, Lcom/ut/mini/UTPageHitHelper;->mLastCacheKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 1151
    iget-boolean v2, v0, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mIsSwitchBackground:Z

    if-nez v2, :cond_2a

    const-string v2, "1"

    const-string/jumbo v1, "skipbk"

    .line 1154
    invoke-interface {v12, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    iget-boolean v1, v0, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mIsSkipBackForever:Z

    if-nez v1, :cond_26

    iget-boolean v1, v0, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mIsSkipBack:Z

    if-eqz v1, :cond_27

    :cond_26
    const/4 v1, 0x0

    .line 1157
    iput-boolean v1, v0, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mIsBack:Z

    .line 1158
    iput-boolean v1, v0, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mIsSkipBack:Z

    .line 1162
    :cond_27
    iget-boolean v1, v0, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mIsBack:Z

    if-eqz v1, :cond_29

    iget-boolean v1, v0, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mIsFrame:Z

    if-eqz v1, :cond_28

    if-eqz v3, :cond_28

    goto :goto_17

    :cond_28
    move-wide/from16 v22, v5

    move/from16 v17, v14

    move-object/from16 v9, v20

    move v14, v3

    move-wide/from16 v20, v10

    move-object v10, v4

    goto :goto_18

    :cond_29
    :goto_17
    move-object/from16 v1, p0

    move-object v2, v0

    move/from16 v17, v14

    move-object/from16 v9, v20

    move v14, v3

    move-object v3, v12

    move-wide/from16 v20, v10

    move-object v10, v4

    move-object/from16 v4, v19

    move-wide/from16 v22, v5

    move-object/from16 v5, v18

    move-object/from16 v6, v16

    .line 1163
    invoke-direct/range {v1 .. v6}, Lcom/ut/mini/UTPageHitHelper;->refreshUTPageStateObject(Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_18

    :cond_2a
    move-wide/from16 v22, v5

    move/from16 v17, v14

    move-object/from16 v9, v20

    const/4 v1, 0x0

    move v14, v3

    move-wide/from16 v20, v10

    move-object v10, v4

    .line 1167
    iput-boolean v1, v0, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mIsBack:Z

    .line 1168
    invoke-direct {v7, v12}, Lcom/ut/mini/UTPageHitHelper;->clearUTPageStateObject(Ljava/util/Map;)V

    .line 1170
    :goto_18
    iget-boolean v2, v0, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mIsBack:Z

    if-eqz v2, :cond_2b

    .line 1172
    invoke-direct {v7, v12}, Lcom/ut/mini/UTPageHitHelper;->clearUTPageStateObject(Ljava/util/Map;)V

    .line 1175
    :cond_2b
    invoke-virtual {v13}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->getPageProperties()Ljava/util/Map;

    move-result-object v2

    invoke-direct {v7, v0, v2}, Lcom/ut/mini/UTPageHitHelper;->forceSetSpm(Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;Ljava/util/Map;)V

    .line 1176
    invoke-virtual {v0, v14}, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->getPageStatMap(Z)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v12, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1179
    :goto_19
    invoke-direct/range {p0 .. p1}, Lcom/ut/mini/UTPageHitHelper;->_getPageEventObjectCacheKey(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Lcom/ut/mini/UTPageHitHelper;->setLastCacheKey(Ljava/lang/String;)V

    .line 1180
    iget-object v2, v0, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mSpmUrl:Ljava/lang/String;

    invoke-virtual {v7, v2}, Lcom/ut/mini/UTPageHitHelper;->setLastCacheKeySpmUrl(Ljava/lang/String;)V

    .line 1181
    iget-object v2, v0, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mScmUrl:Ljava/lang/String;

    invoke-virtual {v7, v2}, Lcom/ut/mini/UTPageHitHelper;->setLastCacheKeyScmUrl(Ljava/lang/String;)V

    .line 1182
    iget-object v2, v0, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mUtparamUrl:Ljava/lang/String;

    invoke-virtual {v7, v2}, Lcom/ut/mini/UTPageHitHelper;->setLastCacheKeyUtParam(Ljava/lang/String;)V

    .line 1183
    iget-object v2, v0, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mUtparamCnt:Ljava/lang/String;

    invoke-virtual {v7, v2}, Lcom/ut/mini/UTPageHitHelper;->setLastCacheKeyUtParamCnt(Ljava/lang/String;)V

    const-string v2, ""

    const/4 v3, 0x1

    .line 1184
    new-array v4, v3, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mLastCacheKey:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v7, Lcom/ut/mini/UTPageHitHelper;->mLastCacheKey:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",mLastCacheKeySpmUrl:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v7, Lcom/ut/mini/UTPageHitHelper;->mLastCacheKeySpmUrl:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",mLastCacheKeyUtParam:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v7, Lcom/ut/mini/UTPageHitHelper;->mLastCacheKeyUtParam:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",mLastCacheKeyUtParamCnt:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v7, Lcom/ut/mini/UTPageHitHelper;->mLastCacheKeyUtParamCnt:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x0

    aput-object v3, v4, v1

    invoke-static {v2, v4}, Lcom/alibaba/analytics/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x1

    .line 1188
    iput-boolean v2, v0, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mIsBack:Z

    .line 1189
    iput-boolean v1, v0, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mIsSwitchBackground:Z
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    goto :goto_1a

    :cond_2c
    move-wide/from16 v22, v5

    move/from16 v17, v14

    move-object/from16 v9, v20

    move-wide/from16 v20, v10

    move-object v10, v4

    .line 1194
    :goto_1a
    :try_start_12
    invoke-static {}, Lcom/alibaba/analytics/core/config/UTTPKBiz;->getInstance()Lcom/alibaba/analytics/core/config/UTTPKBiz;

    move-result-object v0

    invoke-virtual {v13}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->getPageUrl()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2, v12}, Lcom/alibaba/analytics/core/config/UTTPKBiz;->getTpkString(Landroid/net/Uri;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 1195
    invoke-static {v0}, Lcom/alibaba/analytics/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2d

    const-string v2, "_tpk"

    .line 1196
    invoke-interface {v12, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_c
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    goto :goto_1b

    :catch_c
    move-exception v0

    :try_start_13
    const-string v2, ""

    const/4 v3, 0x1

    .line 1199
    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v4, v1

    invoke-static {v2, v4}, Lcom/alibaba/analytics/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1205
    :cond_2d
    :goto_1b
    invoke-virtual {v13}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->getPageProperties()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_2e

    .line 1206
    invoke-virtual {v13}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->getPageProperties()Ljava/util/Map;

    move-result-object v0

    const-string v2, "_allow_override_value"

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 1207
    invoke-virtual {v13}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->getPageProperties()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v12, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string v0, "_allow_override_value"

    .line 1208
    invoke-interface {v12, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2e
    const-string v0, "Page_Webview"

    .line 1212
    invoke-virtual {v0, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2f

    sget-object v0, Lcom/ut/mini/UTPageStatus;->UT_H5_IN_WebView:Lcom/ut/mini/UTPageStatus;

    .line 1213
    invoke-virtual {v13}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->getPageStatus()Lcom/ut/mini/UTPageStatus;

    move-result-object v2

    if-ne v0, v2, :cond_32

    .line 1214
    invoke-static {v8, v10}, Lcom/ut/mini/UTPageHitHelper;->isDefaultActivityName(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_32

    :cond_2f
    if-eqz v15, :cond_32

    .line 1216
    invoke-virtual {v15}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1217
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_32

    const-string v2, "?"

    .line 1218
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_30

    const/4 v1, 0x0

    .line 1221
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    move-object v4, v2

    goto :goto_1c

    :cond_30
    move-object v4, v0

    .line 1223
    :goto_1c
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_31

    move-object v10, v4

    :cond_31
    const-string v1, ""

    const/4 v2, 0x4

    .line 1226
    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "temp"

    const/4 v5, 0x0

    aput-object v3, v2, v5

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const-string/jumbo v0, "urlForPageName"

    const/4 v3, 0x2

    aput-object v0, v2, v3

    const/4 v0, 0x3

    aput-object v4, v2, v0

    invoke-static {v1, v2}, Lcom/alibaba/analytics/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1232
    :cond_32
    new-instance v0, Lcom/ut/mini/UTHitBuilders$UTPageHitBuilder;

    invoke-direct {v0, v10}, Lcom/ut/mini/UTHitBuilders$UTPageHitBuilder;-><init>(Ljava/lang/String;)V

    .line 1234
    invoke-virtual {v0, v9}, Lcom/ut/mini/UTHitBuilders$UTPageHitBuilder;->setReferPage(Ljava/lang/String;)Lcom/ut/mini/UTHitBuilders$UTPageHitBuilder;

    move-result-object v1

    move-wide/from16 v2, v20

    .line 1235
    invoke-virtual {v1, v2, v3}, Lcom/ut/mini/UTHitBuilders$UTPageHitBuilder;->setDurationOnPage(J)Lcom/ut/mini/UTHitBuilders$UTPageHitBuilder;

    move-result-object v1

    .line 1236
    invoke-virtual {v1, v12}, Lcom/ut/mini/UTHitBuilders$UTPageHitBuilder;->setProperties(Ljava/util/Map;)Lcom/ut/mini/UTHitBuilders$UTHitBuilder;

    .line 1238
    sget-object v1, Lcom/alibaba/analytics/core/model/LogField;->RECORD_TIMESTAMP:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v1}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v3, v22

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ut/mini/UTHitBuilders$UTPageHitBuilder;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/ut/mini/UTHitBuilders$UTHitBuilder;

    const-string v1, "_priority"

    const-string v2, "4"

    .line 1239
    invoke-virtual {v0, v1, v2}, Lcom/ut/mini/UTHitBuilders$UTPageHitBuilder;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/ut/mini/UTHitBuilders$UTHitBuilder;

    .line 1241
    invoke-static {}, Lcom/ut/mini/UTVariables;->getInstance()Lcom/ut/mini/UTVariables;

    move-result-object v1

    invoke-virtual {v1, v10}, Lcom/ut/mini/UTVariables;->setRefPage(Ljava/lang/String;)V

    move-object/from16 v1, p2

    if-eqz v1, :cond_33

    .line 1247
    invoke-virtual {v0}, Lcom/ut/mini/UTHitBuilders$UTPageHitBuilder;->build()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/ut/mini/UTPvidHelper;->processPagePvid(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ut/mini/UTTracker;->send(Ljava/util/Map;)V

    goto :goto_1d

    .line 1244
    :cond_33
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Tracker instance is null,please init sdk first."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_34
    move/from16 v17, v14

    const-string v0, "UT"

    const/4 v1, 0x1

    .line 1249
    new-array v1, v1, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Please call pageAppear first("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Lcom/ut/mini/UTPageHitHelper;->_getPageName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/alibaba/analytics/utils/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1253
    :goto_1d
    invoke-virtual {v13}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->isSkipPage()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 1254
    invoke-virtual {v7, v13}, Lcom/ut/mini/UTPageHitHelper;->_releaseSkipFlagAndH5FlagPageObject(Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;)V

    goto :goto_1e

    .line 1255
    :cond_35
    invoke-virtual {v13}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->getPageStatus()Lcom/ut/mini/UTPageStatus;

    move-result-object v0

    if-eqz v0, :cond_36

    sget-object v0, Lcom/ut/mini/UTPageStatus;->UT_H5_IN_WebView:Lcom/ut/mini/UTPageStatus;

    .line 1256
    invoke-virtual {v13}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->getPageStatus()Lcom/ut/mini/UTPageStatus;

    move-result-object v1

    if-ne v0, v1, :cond_36

    .line 1258
    invoke-virtual {v7, v13}, Lcom/ut/mini/UTPageHitHelper;->_releaseSkipFlagAndH5FlagPageObject(Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;)V

    goto :goto_1e

    .line 1260
    :cond_36
    invoke-direct/range {p0 .. p1}, Lcom/ut/mini/UTPageHitHelper;->_removeUTPageEventObject(Ljava/lang/Object;)V

    :goto_1e
    if-eqz v17, :cond_38

    .line 1264
    invoke-direct/range {p0 .. p0}, Lcom/ut/mini/UTPageHitHelper;->_clearPageDisAppearContext()V

    goto :goto_1f

    :cond_37
    const-string v0, "pageDisAppear"

    const/4 v1, 0x1

    .line 1267
    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "The page object should not be null"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/alibaba/analytics/utils/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    .line 1269
    :cond_38
    :goto_1f
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_21

    :goto_20
    throw v0

    :goto_21
    goto :goto_20
.end method

.method pageDisAppearByAuto(Landroid/app/Activity;)V
    .locals 1

    .line 864
    iget-boolean v0, p0, Lcom/ut/mini/UTPageHitHelper;->mIsTurnOff:Z

    if-eqz v0, :cond_0

    return-void

    .line 867
    :cond_0
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ut/mini/UTAnalytics;->getDefaultTracker()Lcom/ut/mini/UTTracker;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/ut/mini/UTPageHitHelper;->pageDisAppear(Ljava/lang/Object;Lcom/ut/mini/UTTracker;)V

    return-void
.end method

.method public pageSwitchBackground()V
    .locals 2

    .line 1658
    iget-object v0, p0, Lcom/ut/mini/UTPageHitHelper;->mPageStateObjects:Ljava/util/Map;

    iget-object v1, p0, Lcom/ut/mini/UTPageHitHelper;->mLastCacheKey:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1659
    iget-object v0, p0, Lcom/ut/mini/UTPageHitHelper;->mPageStateObjects:Ljava/util/Map;

    iget-object v1, p0, Lcom/ut/mini/UTPageHitHelper;->mLastCacheKey:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 1661
    iput-boolean v1, v0, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mIsSwitchBackground:Z

    :cond_0
    return-void
.end method

.method public refreshUtParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    .line 1836
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object p2

    .line 1839
    :cond_0
    invoke-direct {p0, p1}, Lcom/ut/mini/UTPageHitHelper;->parseJsonToMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 1840
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v2

    if-ge v2, v0, :cond_1

    goto :goto_1

    .line 1844
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-object p1

    .line 1847
    :cond_2
    invoke-direct {p0, p2}, Lcom/ut/mini/UTPageHitHelper;->parseJsonToMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 1848
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v2

    if-ge v2, v0, :cond_3

    goto :goto_0

    .line 1852
    :cond_3
    invoke-interface {p2, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1853
    invoke-static {p2}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_0
    return-object p1

    :cond_5
    :goto_1
    return-object p2

    :catch_0
    move-exception p1

    .line 1855
    new-array p2, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, p2, v0

    const-string p1, ""

    invoke-static {p1, p2}, Lcom/alibaba/analytics/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p1
.end method

.method declared-synchronized setH5Called(Ljava/lang/Object;)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 512
    :try_start_0
    invoke-direct {p0, p1}, Lcom/ut/mini/UTPageHitHelper;->_getOrNewAUTPageEventObject(Ljava/lang/Object;)Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;

    move-result-object p1

    .line 513
    invoke-virtual {p1}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->getPageStatus()Lcom/ut/mini/UTPageStatus;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 514
    invoke-virtual {p1}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->setH5Called()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 517
    :cond_0
    :goto_0
    monitor-exit p0

    return-void
.end method

.method public setLastCacheKey(Ljava/lang/String;)V
    .locals 0

    .line 188
    iput-object p1, p0, Lcom/ut/mini/UTPageHitHelper;->mLastCacheKey:Ljava/lang/String;

    return-void
.end method

.method public setLastCacheKeyScmUrl(Ljava/lang/String;)V
    .locals 0

    .line 196
    iput-object p1, p0, Lcom/ut/mini/UTPageHitHelper;->mLastCacheKeyScmUrl:Ljava/lang/String;

    return-void
.end method

.method public setLastCacheKeySpmUrl(Ljava/lang/String;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lcom/ut/mini/UTPageHitHelper;->mLastCacheKeySpmUrl:Ljava/lang/String;

    return-void
.end method

.method public setLastCacheKeyUtParam(Ljava/lang/String;)V
    .locals 0

    .line 200
    iput-object p1, p0, Lcom/ut/mini/UTPageHitHelper;->mLastCacheKeyUtParam:Ljava/lang/String;

    return-void
.end method

.method public setLastCacheKeyUtParamCnt(Ljava/lang/String;)V
    .locals 0

    .line 204
    iput-object p1, p0, Lcom/ut/mini/UTPageHitHelper;->mLastCacheKeyUtParamCnt:Ljava/lang/String;

    return-void
.end method

.method declared-synchronized setPageStatusCode(Ljava/lang/Object;I)V
    .locals 0

    monitor-enter p0

    if-nez p1, :cond_0

    .line 857
    monitor-exit p0

    return-void

    .line 859
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/ut/mini/UTPageHitHelper;->_getOrNewAUTPageEventObject(Ljava/lang/Object;)Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;

    move-result-object p1

    .line 860
    invoke-virtual {p1, p2}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->setPageStatusCode(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 861
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized skipBack(Ljava/lang/Object;)V
    .locals 1

    monitor-enter p0

    if-nez p1, :cond_0

    .line 880
    monitor-exit p0

    return-void

    .line 883
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/ut/mini/UTPageHitHelper;->getOrNewUTPageStateObject(Ljava/lang/Object;)Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 885
    iput-boolean v0, p1, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mIsSkipBack:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 887
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized skipBackForever(Ljava/lang/Object;Z)V
    .locals 0

    monitor-enter p0

    if-nez p1, :cond_0

    .line 895
    monitor-exit p0

    return-void

    .line 898
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/ut/mini/UTPageHitHelper;->getOrNewUTPageStateObject(Ljava/lang/Object;)Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 900
    iput-boolean p2, p1, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mIsSkipBackForever:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 902
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized skipNextPageBack()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 890
    :try_start_0
    iput-boolean v0, p0, Lcom/ut/mini/UTPageHitHelper;->mNextPageSkipBack:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 891
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized skipPage(Ljava/lang/Object;)V
    .locals 0

    monitor-enter p0

    if-nez p1, :cond_0

    .line 872
    monitor-exit p0

    return-void

    .line 874
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/ut/mini/UTPageHitHelper;->_getOrNewAUTPageEventObject(Ljava/lang/Object;)Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;

    move-result-object p1

    .line 875
    invoke-virtual {p1}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->setToSkipPage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 876
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized turnOffAutoPageTrack()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    const/4 v0, 0x1

    .line 471
    :try_start_0
    iput-boolean v0, p0, Lcom/ut/mini/UTPageHitHelper;->mIsTurnOff:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 472
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized updateNextPageProperties(Ljava/util/Map;)V
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

    monitor-enter p0

    if-eqz p1, :cond_1

    .line 813
    :try_start_0
    iget-object v0, p0, Lcom/ut/mini/UTPageHitHelper;->mNextPageProperties:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 814
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/ut/mini/UTPageHitHelper;->mNextPageProperties:Ljava/util/Map;

    goto :goto_0

    .line 816
    :cond_0
    iget-object v0, p0, Lcom/ut/mini/UTPageHitHelper;->mNextPageProperties:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 819
    :cond_1
    :goto_0
    monitor-exit p0

    return-void
.end method

.method declared-synchronized updateNextPageUtparam(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    .line 822
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ""

    .line 824
    iget-object v1, p0, Lcom/ut/mini/UTPageHitHelper;->mNextPageProperties:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 825
    iget-object v0, p0, Lcom/ut/mini/UTPageHitHelper;->mNextPageProperties:Ljava/util/Map;

    const-string/jumbo v1, "utparam-url"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 827
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/ut/mini/UTPageHitHelper;->mNextPageProperties:Ljava/util/Map;

    .line 829
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/ut/mini/UTPageHitHelper;->refreshUtParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 830
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 831
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "utparam-url"

    .line 832
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 833
    iget-object p1, p0, Lcom/ut/mini/UTPageHitHelper;->mNextPageProperties:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 836
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized updateNextPageUtparamCnt(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    .line 839
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ""

    .line 841
    iget-object v1, p0, Lcom/ut/mini/UTPageHitHelper;->mNextPageProperties:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 842
    iget-object v0, p0, Lcom/ut/mini/UTPageHitHelper;->mNextPageProperties:Ljava/util/Map;

    const-string/jumbo v1, "utparam-cnt"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 844
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/ut/mini/UTPageHitHelper;->mNextPageProperties:Ljava/util/Map;

    .line 846
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/ut/mini/UTPageHitHelper;->refreshUtParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 847
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 848
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "utparam-cnt"

    .line 849
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 850
    iget-object p1, p0, Lcom/ut/mini/UTPageHitHelper;->mNextPageProperties:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 853
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized updatePageName(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_1

    .line 772
    :try_start_0
    invoke-static {p2}, Lcom/alibaba/analytics/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 775
    :cond_0
    invoke-direct {p0, p1}, Lcom/ut/mini/UTPageHitHelper;->_getOrNewAUTPageEventObject(Ljava/lang/Object;)Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;

    move-result-object p1

    .line 776
    invoke-virtual {p1, p2}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->setPageName(Ljava/lang/String;)V

    .line 777
    iput-object p2, p0, Lcom/ut/mini/UTPageHitHelper;->mCurPage:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 778
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 773
    :cond_1
    :goto_0
    monitor-exit p0

    return-void
.end method

.method declared-synchronized updatePageProperties(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 2
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

    monitor-enter p0

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 713
    :try_start_0
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 717
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 718
    invoke-interface {v0, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 719
    invoke-direct {p0, p1}, Lcom/ut/mini/UTPageHitHelper;->_getOrNewAUTPageEventObject(Ljava/lang/Object;)Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;

    move-result-object p1

    .line 720
    invoke-virtual {p1}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->getPageProperties()Ljava/util/Map;

    move-result-object p2

    if-nez p2, :cond_1

    .line 722
    invoke-virtual {p1, v0}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->setPageProperties(Ljava/util/Map;)V

    goto :goto_0

    .line 724
    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 725
    invoke-interface {v1, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 726
    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 727
    invoke-virtual {p1, v1}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->setPageProperties(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 729
    :goto_0
    monitor-exit p0

    return-void

    :cond_2
    :goto_1
    :try_start_1
    const-string p1, ""

    const/4 p2, 0x1

    .line 714
    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "failed to update project properties"

    aput-object v1, p2, v0

    invoke-static {p1, p2}, Lcom/alibaba/analytics/utils/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 715
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized updatePageProperties(Ljava/util/Map;)V
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 705
    :try_start_0
    iget-object v0, p0, Lcom/ut/mini/UTPageHitHelper;->mPageProperties:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 707
    :cond_0
    :goto_0
    monitor-exit p0

    return-void
.end method

.method declared-synchronized updatePageStatus(Ljava/lang/Object;Lcom/ut/mini/UTPageStatus;)V
    .locals 0

    monitor-enter p0

    if-nez p1, :cond_0

    .line 802
    monitor-exit p0

    return-void

    .line 804
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/ut/mini/UTPageHitHelper;->_getOrNewAUTPageEventObject(Ljava/lang/Object;)Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;

    move-result-object p1

    .line 805
    invoke-virtual {p1, p2}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->setPageStatus(Lcom/ut/mini/UTPageStatus;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 806
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized updatePageUrl(Ljava/lang/Object;Landroid/net/Uri;)V
    .locals 0

    monitor-enter p0

    if-nez p1, :cond_0

    .line 782
    monitor-exit p0

    return-void

    .line 784
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/ut/mini/UTPageHitHelper;->_getOrNewAUTPageEventObject(Ljava/lang/Object;)Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;

    move-result-object p1

    .line 785
    invoke-virtual {p1, p2}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->setPageUrl(Landroid/net/Uri;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 786
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized updatePageUtparam(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    if-eqz p1, :cond_3

    .line 749
    :try_start_0
    invoke-static {p2}, Lcom/alibaba/analytics/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 752
    :cond_0
    invoke-virtual {p0, p1}, Lcom/ut/mini/UTPageHitHelper;->getPageProperties(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_1

    const-string/jumbo v1, "utparam-cnt"

    .line 755
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    .line 757
    :cond_1
    invoke-virtual {p0, p2, v1}, Lcom/ut/mini/UTPageHitHelper;->refreshUtParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 758
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 759
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "utparam-cnt"

    .line 760
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 761
    invoke-virtual {p0, p1, v0}, Lcom/ut/mini/UTPageHitHelper;->updatePageProperties(Ljava/lang/Object;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 763
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 750
    :cond_3
    :goto_0
    monitor-exit p0

    return-void
.end method
