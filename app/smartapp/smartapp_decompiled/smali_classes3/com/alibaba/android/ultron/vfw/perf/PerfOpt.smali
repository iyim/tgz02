.class public Lcom/alibaba/android/ultron/vfw/perf/PerfOpt;
.super Ljava/lang/Object;
.source "PerfOpt.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/ultron/vfw/perf/PerfOpt$Config;
    }
.end annotation


# static fields
.field private static final FETCH_TEMPLATES:[Ljava/lang/String;

.field private static final PURCHASE_MODULE:Ljava/lang/String; = "purchase"

.field private static final PURCHASE_ULTRON_CACHE_MODULE:Ljava/lang/String; = "buy"

.field private static final TAG:Ljava/lang/String; = "PerfOpt.Tmq"

.field private static final buy_address_CreateCount:I = 0x1

.field private static final buy_image_text_CreateCount:I = 0x2

.field private static final buy_input_CreateCount:I = 0x1

.field private static final buy_item_CreateCount:I = 0x2

.field private static final buy_select_CreateCount:I = 0x5

.field private static final buy_subtotal_CreateCount:I = 0x1

.field private static volatile didPreFetchTemplate:Z

.field private static executor:Ljava/util/concurrent/Executor;


# instance fields
.field private final config:Lcom/alibaba/android/ultron/vfw/perf/PerfOpt$Config;

.field private preCreatedTemplateMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;",
            "Ljava/util/List<",
            "Lcom/taobao/android/dinamicx/DXResult<",
            "Lcom/taobao/android/dinamicx/DXRootView;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final remainCreateCountMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ">;"
        }
    .end annotation
.end field

.field private final viewEngine:Lcom/alibaba/android/ultron/vfw/core/ViewEngine;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const-string v0, "buy_alihealth_shop"

    const-string v1, "buy_fliggy_check_box"

    const-string v2, "buy_fliggy_insurance_type"

    const-string v3, "buy_fliggy_panel_add"

    const-string v4, "buy_fliggy_panel_header"

    const-string v5, "buy_fliggy_select_component"

    const-string v6, "fliggy_coupon_tips_list"

    .line 50
    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/ultron/vfw/perf/PerfOpt;->FETCH_TEMPLATES:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 55
    sput-boolean v0, Lcom/alibaba/android/ultron/vfw/perf/PerfOpt;->didPreFetchTemplate:Z

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Lcom/alibaba/android/ultron/vfw/core/ViewEngine;Lcom/alibaba/android/ultron/vfw/perf/PerfOpt$Config;)V
    .locals 2

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/ultron/vfw/perf/PerfOpt;->preCreatedTemplateMap:Ljava/util/Map;

    .line 88
    iput-object p1, p0, Lcom/alibaba/android/ultron/vfw/perf/PerfOpt;->viewEngine:Lcom/alibaba/android/ultron/vfw/core/ViewEngine;

    .line 89
    iput-object p2, p0, Lcom/alibaba/android/ultron/vfw/perf/PerfOpt;->config:Lcom/alibaba/android/ultron/vfw/perf/PerfOpt$Config;

    .line 91
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/alibaba/android/ultron/vfw/perf/PerfOpt;->remainCreateCountMap:Ljava/util/Map;

    .line 92
    iget-object p1, p0, Lcom/alibaba/android/ultron/vfw/perf/PerfOpt;->remainCreateCountMap:Ljava/util/Map;

    new-instance p2, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x1

    invoke-direct {p2, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    const-string v1, "buy_address"

    invoke-interface {p1, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    iget-object p1, p0, Lcom/alibaba/android/ultron/vfw/perf/PerfOpt;->remainCreateCountMap:Ljava/util/Map;

    new-instance p2, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x5

    invoke-direct {p2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    const-string v1, "buy_select"

    invoke-interface {p1, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    iget-object p1, p0, Lcom/alibaba/android/ultron/vfw/perf/PerfOpt;->remainCreateCountMap:Ljava/util/Map;

    new-instance p2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p2, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    const-string v1, "buy_input"

    invoke-interface {p1, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    iget-object p1, p0, Lcom/alibaba/android/ultron/vfw/perf/PerfOpt;->remainCreateCountMap:Ljava/util/Map;

    new-instance p2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p2, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    const-string v0, "buy_subtotal"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    iget-object p1, p0, Lcom/alibaba/android/ultron/vfw/perf/PerfOpt;->remainCreateCountMap:Ljava/util/Map;

    new-instance p2, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x2

    invoke-direct {p2, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    const-string v1, "buy_image_text"

    invoke-interface {p1, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    iget-object p1, p0, Lcom/alibaba/android/ultron/vfw/perf/PerfOpt;->remainCreateCountMap:Ljava/util/Map;

    new-instance p2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p2, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    const-string v0, "buy_item"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$100(Lcom/alibaba/android/ultron/vfw/perf/PerfOpt;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/alibaba/android/ultron/vfw/perf/PerfOpt;->preloadTemplate()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$300(Lcom/alibaba/android/ultron/vfw/perf/PerfOpt;Lcom/taobao/android/ultron/common/model/DynamicTemplate;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/alibaba/android/ultron/vfw/perf/PerfOpt;->createDinamicView(Lcom/taobao/android/ultron/common/model/DynamicTemplate;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private asyncCreateDinamicView(Lcom/taobao/android/ultron/common/model/DynamicTemplate;)V
    .locals 2

    .line 319
    sget-object v0, Lcom/alibaba/android/ultron/vfw/perf/PerfOpt;->executor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/alibaba/android/ultron/vfw/perf/PerfOpt$3;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/android/ultron/vfw/perf/PerfOpt$3;-><init>(Lcom/alibaba/android/ultron/vfw/perf/PerfOpt;Lcom/taobao/android/ultron/common/model/DynamicTemplate;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private convertToDXTemplateItem(Lcom/taobao/android/dinamicx/DinamicXEngineRouter;Lcom/taobao/android/ultron/common/model/DynamicTemplate;)Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;
    .locals 5

    .line 200
    invoke-static {p2}, Lcom/alibaba/android/ultron/vfw/convert/TemplateEntityConvert;->convertToDXTemplateItem(Lcom/taobao/android/ultron/common/model/DynamicTemplate;)Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;

    move-result-object p2

    .line 201
    iget-wide v0, p2, Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;->version:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 206
    :cond_0
    invoke-virtual {p1, p2}, Lcom/taobao/android/dinamicx/DinamicXEngineRouter;->fetchTemplate(Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;)Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;

    move-result-object p1

    return-object p1
.end method

.method private createDinamicView(Lcom/taobao/android/ultron/common/model/DynamicTemplate;)V
    .locals 7

    .line 334
    invoke-direct {p0}, Lcom/alibaba/android/ultron/vfw/perf/PerfOpt;->hackLooper()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 338
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/perf/PerfOpt;->viewEngine:Lcom/alibaba/android/ultron/vfw/core/ViewEngine;

    invoke-virtual {v0}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->getDinamicXEngineManager()Lcom/alibaba/android/ultron/vfw/dinamicx/DinamicXEngineManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/ultron/vfw/dinamicx/DinamicXEngineManager;->getDxEngine()Lcom/taobao/android/dinamicx/DinamicXEngineRouter;

    move-result-object v0

    .line 339
    invoke-direct {p0, v0, p1}, Lcom/alibaba/android/ultron/vfw/perf/PerfOpt;->convertToDXTemplateItem(Lcom/taobao/android/dinamicx/DinamicXEngineRouter;Lcom/taobao/android/ultron/common/model/DynamicTemplate;)Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    const/4 v2, 0x1

    .line 344
    new-array v3, v2, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createDinamicView:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "PerfOpt.Tmq"

    invoke-static {v4, v3}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->i(Ljava/lang/String;[Ljava/lang/String;)V

    .line 346
    iget-object v3, p0, Lcom/alibaba/android/ultron/vfw/perf/PerfOpt;->preCreatedTemplateMap:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-nez v3, :cond_3

    .line 348
    monitor-enter p0

    .line 349
    :try_start_0
    iget-object v3, p0, Lcom/alibaba/android/ultron/vfw/perf/PerfOpt;->preCreatedTemplateMap:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-nez v3, :cond_2

    .line 351
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 352
    iget-object v4, p0, Lcom/alibaba/android/ultron/vfw/perf/PerfOpt;->preCreatedTemplateMap:Ljava/util/Map;

    invoke-interface {v4, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    :cond_2
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 358
    :cond_3
    :goto_0
    :try_start_1
    iget-object v4, p0, Lcom/alibaba/android/ultron/vfw/perf/PerfOpt;->remainCreateCountMap:Ljava/util/Map;

    iget-object v6, v1, Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;->name:Ljava/lang/String;

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz v4, :cond_5

    .line 359
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v6

    if-lez v6, :cond_4

    goto :goto_1

    :cond_4
    const-string v0, "Tmq"

    .line 372
    new-array v1, v2, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createDinamicView "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/taobao/android/ultron/common/model/DynamicTemplate;->name:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " SKIP"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v5

    invoke-static {v0, v1}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->w(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    :goto_1
    if-eqz v4, :cond_6

    .line 361
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 364
    :cond_6
    iget-object p1, p0, Lcom/alibaba/android/ultron/vfw/perf/PerfOpt;->viewEngine:Lcom/alibaba/android/ultron/vfw/core/ViewEngine;

    invoke-virtual {p1}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v2, p0, Lcom/alibaba/android/ultron/vfw/perf/PerfOpt;->viewEngine:Lcom/alibaba/android/ultron/vfw/core/ViewEngine;

    .line 365
    invoke-virtual {v2}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v2

    .line 364
    invoke-virtual {v0, p1, v2, v1}, Lcom/taobao/android/dinamicx/DinamicXEngineRouter;->createView(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;)Lcom/taobao/android/dinamicx/DXResult;

    move-result-object p1

    .line 366
    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/DXResult;->hasError()Z

    move-result v0

    if-nez v0, :cond_7

    .line 367
    monitor-enter p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 368
    :try_start_2
    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 369
    monitor-exit p0

    goto :goto_2

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    throw p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception p1

    .line 375
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_7
    :goto_2
    return-void
.end method

.method private getCachedDXTemplate(Lcom/alibaba/fastjson/JSONObject;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/JSONObject;",
            ")",
            "Ljava/util/List<",
            "Lcom/taobao/android/ultron/common/model/DynamicTemplate;",
            ">;"
        }
    .end annotation

    .line 210
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "container"

    .line 212
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const-string v1, "data"

    .line 216
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v0

    .line 221
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    .line 223
    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 225
    new-instance v4, Lcom/taobao/android/ultron/common/model/DynamicTemplate;

    invoke-direct {v4, v3}, Lcom/taobao/android/ultron/common/model/DynamicTemplate;-><init>(Lcom/alibaba/fastjson/JSONObject;)V

    .line 226
    iget-object v3, v4, Lcom/taobao/android/ultron/common/model/DynamicTemplate;->name:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, v4, Lcom/taobao/android/ultron/common/model/DynamicTemplate;->name:Ljava/lang/String;

    const-string v5, "dialog"

    .line 227
    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, v4, Lcom/taobao/android/ultron/common/model/DynamicTemplate;->name:Ljava/lang/String;

    const-string v5, "popup"

    .line 228
    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 229
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method private hackLooper()Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 381
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-eq v2, v3, :cond_0

    .line 384
    const-class v2, Landroid/os/Looper;

    const-string v3, "sThreadLocal"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 385
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 386
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 387
    instance-of v3, v2, Ljava/lang/ThreadLocal;

    if-eqz v3, :cond_1

    .line 388
    nop

    nop

    .line 389
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return v1

    :catch_0
    move-exception v2

    .line 396
    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    const-string v2, "ViewEngine"

    invoke-static {v2, v1}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_1
    return v0
.end method

.method private preCreateDinamicView(Ljava/util/List;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/taobao/android/ultron/common/model/DynamicTemplate;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    if-eqz p1, :cond_10

    .line 238
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_10

    iget-object v1, v0, Lcom/alibaba/android/ultron/vfw/perf/PerfOpt;->config:Lcom/alibaba/android/ultron/vfw/perf/PerfOpt$Config;

    invoke-static {v1}, Lcom/alibaba/android/ultron/vfw/perf/PerfOpt$Config;->access$200(Lcom/alibaba/android/ultron/vfw/perf/PerfOpt$Config;)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_9

    :cond_0
    const-string v1, "preloadTemplate preCreateView start"

    .line 242
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "PerfOpt.Tmq"

    invoke-static {v2, v1}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    .line 244
    iget-object v1, v0, Lcom/alibaba/android/ultron/vfw/perf/PerfOpt;->viewEngine:Lcom/alibaba/android/ultron/vfw/core/ViewEngine;

    .line 245
    invoke-virtual {v1}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->getTemplateProviderManager()Lcom/alibaba/android/ultron/vfw/template/TemplateProviderManager;

    move-result-object v1

    const-string v2, "dinamicx"

    invoke-virtual {v1, v2}, Lcom/alibaba/android/ultron/vfw/template/TemplateProviderManager;->getTemplateProvider(Ljava/lang/String;)Lcom/alibaba/android/ultron/vfw/template/ITemplateProvider;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/ultron/vfw/template/DinamicXTemplateProvider;

    const/4 v1, 0x0

    .line 252
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const-string v6, "buy_address"

    const-string v7, "buy_select"

    const/4 v8, -0x1

    const/4 v9, 0x1

    if-eqz v5, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/taobao/android/ultron/common/model/DynamicTemplate;

    .line 253
    iget-object v10, v5, Lcom/taobao/android/ultron/common/model/DynamicTemplate;->name:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v11

    const v12, -0x33be8f2b    # -5.0709332E7f

    if-eq v11, v12, :cond_2

    const v7, 0x19cdb3b

    if-eq v11, v7, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v8, 0x0

    goto :goto_1

    :cond_2
    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v8, 0x1

    :cond_3
    :goto_1
    if-eqz v8, :cond_5

    if-eq v8, v9, :cond_4

    goto :goto_0

    :cond_4
    move-object v1, v5

    goto :goto_0

    :cond_5
    add-int/lit8 v4, v4, 0x1

    .line 256
    invoke-direct {v0, v5}, Lcom/alibaba/android/ultron/vfw/perf/PerfOpt;->asyncCreateDinamicView(Lcom/taobao/android/ultron/common/model/DynamicTemplate;)V

    goto :goto_0

    :cond_6
    if-eqz v1, :cond_7

    add-int/lit8 v4, v4, 0x1

    .line 266
    invoke-direct {v0, v1}, Lcom/alibaba/android/ultron/vfw/perf/PerfOpt;->asyncCreateDinamicView(Lcom/taobao/android/ultron/common/model/DynamicTemplate;)V

    .line 269
    :cond_7
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const-string v10, "buy_image_text"

    const-string v11, "buy_subtotal"

    const-string v12, "buy_input"

    const-string v13, "buy_item"

    const/4 v14, 0x3

    const/4 v15, 0x2

    if-eqz v5, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/taobao/android/ultron/common/model/DynamicTemplate;

    .line 270
    iget-object v3, v5, Lcom/taobao/android/ultron/common/model/DynamicTemplate;->name:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v16

    sparse-switch v16, :sswitch_data_0

    goto :goto_3

    :sswitch_0
    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    const/4 v3, 0x2

    goto :goto_4

    :sswitch_1
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    const/4 v3, 0x1

    goto :goto_4

    :sswitch_2
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    const/4 v3, 0x0

    goto :goto_4

    :sswitch_3
    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    const/4 v3, 0x3

    goto :goto_4

    :cond_8
    :goto_3
    const/4 v3, -0x1

    :goto_4
    if-eqz v3, :cond_a

    if-eq v3, v9, :cond_a

    if-eq v3, v15, :cond_9

    if-eq v3, v14, :cond_9

    goto :goto_2

    :cond_9
    add-int/lit8 v4, v4, 0x2

    .line 279
    invoke-direct {v0, v5}, Lcom/alibaba/android/ultron/vfw/perf/PerfOpt;->asyncCreateDinamicView(Lcom/taobao/android/ultron/common/model/DynamicTemplate;)V

    .line 280
    invoke-direct {v0, v5}, Lcom/alibaba/android/ultron/vfw/perf/PerfOpt;->asyncCreateDinamicView(Lcom/taobao/android/ultron/common/model/DynamicTemplate;)V

    goto :goto_2

    :cond_a
    add-int/lit8 v4, v4, 0x1

    .line 274
    invoke-direct {v0, v5}, Lcom/alibaba/android/ultron/vfw/perf/PerfOpt;->asyncCreateDinamicView(Lcom/taobao/android/ultron/common/model/DynamicTemplate;)V

    goto :goto_2

    :cond_b
    const/4 v3, 0x4

    if-eqz v1, :cond_c

    add-int/lit8 v4, v4, 0x4

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v3, :cond_c

    .line 288
    invoke-direct {v0, v1}, Lcom/alibaba/android/ultron/vfw/perf/PerfOpt;->asyncCreateDinamicView(Lcom/taobao/android/ultron/common/model/DynamicTemplate;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_c
    rsub-int/lit8 v1, v4, 0xf

    if-lez v1, :cond_10

    .line 294
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/taobao/android/ultron/common/model/DynamicTemplate;

    if-gtz v1, :cond_d

    goto :goto_9

    .line 298
    :cond_d
    iget-object v5, v4, Lcom/taobao/android/ultron/common/model/DynamicTemplate;->name:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v16

    sparse-switch v16, :sswitch_data_1

    goto :goto_7

    :sswitch_4
    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    const/4 v5, 0x5

    const/4 v3, 0x5

    goto :goto_8

    :sswitch_5
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    const/4 v3, 0x0

    goto :goto_8

    :sswitch_6
    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    goto :goto_8

    :sswitch_7
    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    const/4 v3, 0x3

    goto :goto_8

    :sswitch_8
    const-string v3, "buy_submit"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    const/4 v3, 0x1

    goto :goto_8

    :sswitch_9
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    const/4 v3, 0x2

    goto :goto_8

    :sswitch_a
    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    const/4 v3, 0x6

    goto :goto_8

    :cond_e
    :goto_7
    const/4 v3, -0x1

    :goto_8
    packed-switch v3, :pswitch_data_0

    .line 308
    iget-object v3, v4, Lcom/taobao/android/ultron/common/model/DynamicTemplate;->url:Ljava/lang/String;

    if-eqz v3, :cond_f

    iget-object v3, v4, Lcom/taobao/android/ultron/common/model/DynamicTemplate;->url:Ljava/lang/String;

    const-string v5, "xml"

    invoke-virtual {v3, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 309
    invoke-direct {v0, v4}, Lcom/alibaba/android/ultron/vfw/perf/PerfOpt;->asyncCreateDinamicView(Lcom/taobao/android/ultron/common/model/DynamicTemplate;)V

    :cond_f
    add-int/lit8 v1, v1, -0x1

    :pswitch_0
    const/4 v3, 0x4

    goto :goto_6

    :cond_10
    :goto_9
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x3aad26d4 -> :sswitch_3
        -0x1afa432f -> :sswitch_2
        -0x2b5163 -> :sswitch_1
        0x69f9cea -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x3aad26d4 -> :sswitch_a
        -0x33be8f2b -> :sswitch_9
        -0x32e1840f -> :sswitch_8
        -0x1afa432f -> :sswitch_7
        -0x2b5163 -> :sswitch_6
        0x19cdb3b -> :sswitch_5
        0x69f9cea -> :sswitch_4
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private preFetchTemplate(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/taobao/android/ultron/common/model/DynamicTemplate;",
            ">;)V"
        }
    .end annotation

    .line 187
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/perf/PerfOpt;->viewEngine:Lcom/alibaba/android/ultron/vfw/core/ViewEngine;

    invoke-virtual {v0}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->getDinamicXEngineManager()Lcom/alibaba/android/ultron/vfw/dinamicx/DinamicXEngineManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/ultron/vfw/dinamicx/DinamicXEngineManager;->getDxEngine()Lcom/taobao/android/dinamicx/DinamicXEngineRouter;

    move-result-object v0

    .line 188
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/android/ultron/common/model/DynamicTemplate;

    .line 189
    sget-object v2, Lcom/alibaba/android/ultron/vfw/perf/PerfOpt;->FETCH_TEMPLATES:[Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_0

    aget-object v5, v2, v4

    .line 190
    iget-object v6, v1, Lcom/taobao/android/ultron/common/model/DynamicTemplate;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 191
    invoke-direct {p0, v0, v1}, Lcom/alibaba/android/ultron/vfw/perf/PerfOpt;->convertToDXTemplateItem(Lcom/taobao/android/dinamicx/DinamicXEngineRouter;Lcom/taobao/android/ultron/common/model/DynamicTemplate;)Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/taobao/android/dinamicx/DinamicXEngineRouter;->fetchTemplate(Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;)Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;

    goto :goto_0

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private preloadTemplate()V
    .locals 6

    const/16 v0, 0xa

    .line 135
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 138
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/perf/PerfOpt;->viewEngine:Lcom/alibaba/android/ultron/vfw/core/ViewEngine;

    invoke-virtual {v0}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->getModuleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "purchase"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "buy"

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    return-void

    :cond_1
    const-string v1, "preloadTemplate start..."

    .line 146
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "PerfOpt.Tmq"

    invoke-static {v2, v1}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->i(Ljava/lang/String;[Ljava/lang/String;)V

    .line 148
    iget-object v1, p0, Lcom/alibaba/android/ultron/vfw/perf/PerfOpt;->viewEngine:Lcom/alibaba/android/ultron/vfw/core/ViewEngine;

    .line 149
    invoke-virtual {v1}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 148
    invoke-static {v1, v0}, Lcom/taobao/android/ultron/datamodel/cache/UltronTemplateManager;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/taobao/android/ultron/datamodel/cache/UltronTemplateManager;

    move-result-object v0

    .line 150
    invoke-virtual {v0}, Lcom/taobao/android/ultron/datamodel/cache/UltronTemplateManager;->getTemplateIds()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 152
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    .line 157
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 158
    invoke-virtual {v0, v3}, Lcom/taobao/android/ultron/datamodel/cache/UltronTemplateManager;->getTemplateById(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v3

    .line 160
    invoke-direct {p0, v3}, Lcom/alibaba/android/ultron/vfw/perf/PerfOpt;->getCachedDXTemplate(Lcom/alibaba/fastjson/JSONObject;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 162
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_3

    const/4 v0, 0x1

    .line 178
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "preloadTemplate "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v1

    invoke-static {v2, v0}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    .line 180
    invoke-direct {p0, v3}, Lcom/alibaba/android/ultron/vfw/perf/PerfOpt;->preCreateDinamicView(Ljava/util/List;)V

    :cond_4
    return-void

    :cond_5
    :goto_1
    const-string v0, "preloadTemplate empty"

    .line 153
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->w(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 426
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/perf/PerfOpt;->preCreatedTemplateMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public isEnableDownloadOpt()Z
    .locals 1

    .line 434
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/perf/PerfOpt;->config:Lcom/alibaba/android/ultron/vfw/perf/PerfOpt$Config;

    invoke-static {v0}, Lcom/alibaba/android/ultron/vfw/perf/PerfOpt$Config;->access$400(Lcom/alibaba/android/ultron/vfw/perf/PerfOpt$Config;)Z

    move-result v0

    return v0
.end method

.method public isEnablePreCreate()Z
    .locals 1

    .line 430
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/perf/PerfOpt;->config:Lcom/alibaba/android/ultron/vfw/perf/PerfOpt$Config;

    invoke-static {v0}, Lcom/alibaba/android/ultron/vfw/perf/PerfOpt$Config;->access$200(Lcom/alibaba/android/ultron/vfw/perf/PerfOpt$Config;)Z

    move-result v0

    return v0
.end method

.method public purchaseOpt()V
    .locals 2

    .line 101
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/perf/PerfOpt;->config:Lcom/alibaba/android/ultron/vfw/perf/PerfOpt$Config;

    invoke-static {v0}, Lcom/alibaba/android/ultron/vfw/perf/PerfOpt$Config;->access$000(Lcom/alibaba/android/ultron/vfw/perf/PerfOpt$Config;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 105
    :cond_0
    sget-object v0, Lcom/alibaba/android/ultron/vfw/perf/PerfOpt;->executor:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_2

    .line 106
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_1

    return-void

    .line 111
    :cond_1
    div-int/2addr v0, v1

    .line 112
    new-instance v1, Lcom/alibaba/android/ultron/vfw/perf/PerfOpt$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/ultron/vfw/perf/PerfOpt$1;-><init>(Lcom/alibaba/android/ultron/vfw/perf/PerfOpt;)V

    invoke-static {v0, v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/ultron/vfw/perf/PerfOpt;->executor:Ljava/util/concurrent/Executor;

    .line 122
    :cond_2
    sget-object v0, Lcom/alibaba/android/ultron/vfw/perf/PerfOpt;->executor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/alibaba/android/ultron/vfw/perf/PerfOpt$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/ultron/vfw/perf/PerfOpt$2;-><init>(Lcom/alibaba/android/ultron/vfw/perf/PerfOpt;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public takePreCreatedDinamic(Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;)Lcom/taobao/android/dinamicx/DXResult;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;",
            ")",
            "Lcom/taobao/android/dinamicx/DXResult<",
            "Lcom/taobao/android/dinamicx/DXRootView;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 406
    :cond_0
    monitor-enter p0

    .line 407
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/android/ultron/vfw/perf/PerfOpt;->preCreatedTemplateMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_1

    .line 408
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 409
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    .line 410
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/android/dinamicx/DXResult;

    .line 411
    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 412
    monitor-exit p0

    return-object v0

    .line 414
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 417
    iget-object v1, p0, Lcom/alibaba/android/ultron/vfw/perf/PerfOpt;->remainCreateCountMap:Ljava/util/Map;

    iget-object p1, p1, Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;->name:Ljava/lang/String;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz p1, :cond_2

    .line 419
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    :cond_2
    return-object v0

    :catchall_0
    move-exception p1

    .line 414
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
