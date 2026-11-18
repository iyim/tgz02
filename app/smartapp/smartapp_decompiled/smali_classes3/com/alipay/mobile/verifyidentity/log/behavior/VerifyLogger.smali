.class public Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;
.super Ljava/lang/Object;
.source "VerifyLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger$VerifyLogTask;
    }
.end annotation


# static fields
.field public static final Dispersed_Type:Ljava/lang/String; = "event"

.field public static final Verify_Type:Ljava/lang/String; = "verify"

.field private static final a:Ljava/lang/String; = "VerifyLogger"

.field private static b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/StringBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private static h:Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;


# instance fields
.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:I

.field private f:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger$VerifyLogTask;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;->b:Ljava/util/Map;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;->c:Ljava/util/List;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;->d:Ljava/util/List;

    const/4 v0, 0x2

    .line 46
    iput v0, p0, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;->e:I

    .line 51
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;->f:Ljava/util/concurrent/BlockingQueue;

    .line 52
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hackbyte "

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private a()Ljava/lang/String;
    .locals 1

    .line 201
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->getInstance()Lcom/alipay/mobile/verifyidentity/engine/TaskManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->getCurrentTask()Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 202
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->getInstance()Lcom/alipay/mobile/verifyidentity/engine/TaskManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->getCurrentTask()Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->getVerifyId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    const-string v0, ""

    :cond_1
    return-object v0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 211
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "-"

    :cond_0
    return-object p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "event"

    .line 314
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, ")]"

    goto :goto_0

    :cond_0
    const-string p1, ")"

    .line 315
    :goto_0
    invoke-direct {p0, p2}, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 316
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p2}, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ",("

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    invoke-direct {p0, p3}, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ";"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    invoke-direct {p0}, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;->d()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    invoke-direct {p0, p4, p5, p6, p7}, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 320
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/log/DebugViewer;->getInstance()Lcom/alipay/mobile/verifyidentity/log/BaseDebugViewer;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "]"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3}, Lcom/alipay/mobile/verifyidentity/log/BaseDebugViewer;->getEnvironParams(Ljava/lang/String;)V

    return-object p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "endSymbol"

    .line 344
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, ")]"

    goto :goto_0

    :cond_0
    const-string p1, ")"

    .line 345
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ",("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p2}, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ";"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    invoke-direct {p0}, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    invoke-direct {p0, p3, p4, p5, p6}, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 376
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1}, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ";"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p2}, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p3}, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p4}, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a(Ljava/util/Map;)Ljava/lang/String;
    .locals 9
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

    if-eqz p1, :cond_4

    .line 382
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 383
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 384
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const-string v5, "&"

    if-ge v3, v4, :cond_2

    .line 385
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 386
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 387
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    const-string v8, "="

    if-ne v3, v7, :cond_0

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 388
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v6}, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 390
    :cond_0
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 391
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v6}, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 395
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 396
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 398
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 400
    :goto_2
    invoke-direct {p0, p1}, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4
    const-string p1, "-"

    return-object p1
.end method

.method private a([Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 466
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    .line 467
    :cond_1
    aget-object v2, p1, v1

    if-nez v2, :cond_2

    const/16 v2, 0x10

    goto :goto_0

    :cond_2
    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    :goto_0
    add-int/lit8 v2, v2, 0x1

    mul-int v2, v2, v0

    .line 468
    :goto_1
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    :goto_2
    if-ge v1, v0, :cond_5

    if-lez v1, :cond_3

    .line 472
    invoke-virtual {v3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 474
    :cond_3
    aget-object v2, p1, v1

    if-eqz v2, :cond_4

    .line 475
    aget-object v2, p1, v1

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 478
    :cond_5
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    .line 249
    :try_start_0
    invoke-direct {p0, p1}, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;->c(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 250
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized a(Ljava/lang/String;Ljava/lang/StringBuffer;)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 244
    :try_start_0
    sget-object v0, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 246
    :cond_0
    :goto_0
    monitor-exit p0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$000(Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;)Ljava/lang/String;
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;->a()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 37
    sget-object v0, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1100(Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;Ljava/lang/String;Ljava/lang/StringBuffer;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;->a(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$1200(Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;Ljava/lang/String;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;->d(Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$1300(Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 0

    .line 37
    invoke-direct/range {p0 .. p6}, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1400(Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$1500(Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;Ljava/lang/String;)Ljava/lang/StringBuffer;
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;->c(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;)Ljava/util/concurrent/BlockingQueue;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;->f:Ljava/util/concurrent/BlockingQueue;

    return-object p0
.end method

.method static synthetic access$300(Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 0

    .line 37
    invoke-direct/range {p0 .. p7}, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;Ljava/lang/String;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;->j(Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$500(Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;)I
    .locals 0

    .line 37
    iget p0, p0, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;->e:I

    return p0
.end method

.method static synthetic access$502(Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;I)I
    .locals 0

    .line 37
    iput p1, p0, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;->e:I

    return p1
.end method

.method static synthetic access$600(Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;)Ljava/util/List;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;->d:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$700(Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;[Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;->a([Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;->f()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$900(Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;->b()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 217
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "NULL_VID_TOBE_REPLACED"

    :cond_0
    return-object p1
.end method

.method private declared-synchronized b()V
    .locals 1

    monitor-enter p0

    .line 265
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 266
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized b(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    monitor-enter p0

    .line 281
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 282
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;->c:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 283
    sget-object p1, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;->a:Ljava/lang/String;

    const-string p2, "cacheOnNoVerifyId"

    invoke-static {p1, p2}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 284
    monitor-exit p0

    return p1

    :cond_0
    const/4 p1, 0x0

    .line 286
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private c()Ljava/lang/String;
    .locals 2

    .line 353
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss:SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 354
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized c(Ljava/lang/String;)Ljava/lang/StringBuffer;
    .locals 2

    monitor-enter p0

    if-eqz p1, :cond_1

    .line 231
    :try_start_0
    sget-object v0, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuffer;

    if-nez v0, :cond_0

    .line 236
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 237
    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;->a(Ljava/lang/String;Ljava/lang/StringBuffer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 239
    :cond_0
    monitor-exit p0

    return-object v0

    .line 233
    :cond_1
    :try_start_1
    new-instance p1, Ljava/lang/StringBuffer;

    const-string v0, ""

    invoke-direct {p1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private d()Ljava/lang/String;
    .locals 2

    .line 358
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm:ss:SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 359
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized d(Ljava/lang/String;)V
    .locals 4

    monitor-enter p0

    .line 256
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "NULL_VID_TOBE_REPLACED"

    .line 257
    invoke-direct {p0, p1}, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 258
    invoke-direct {p0, p1, v1}, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    sget-object v1, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;->a:Ljava/lang/String;

    const-string v2, "appendNoVerifyIdLogCache"

    invoke-static {v1, v2}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 261
    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 262
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

.method private e()Ljava/lang/String;
    .locals 3

    .line 430
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->getInstance()Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    .line 431
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 433
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 434
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    const-string v2, "-"

    if-eqz v1, :cond_1

    .line 436
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "WIFI"

    return-object v0

    :cond_0
    if-nez v0, :cond_1

    const-string v0, "4G/3G"

    return-object v0

    :cond_1
    return-object v2
.end method

.method private e(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 325
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    invoke-direct {p0}, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/info/AppInfo;->getInstance()Lcom/alipay/mobile/verifyidentity/info/AppInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/verifyidentity/info/AppInfo;->getAppVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/info/AppInfo;->getInstance()Lcom/alipay/mobile/verifyidentity/info/AppInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/verifyidentity/info/AppInfo;->getAppName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/info/AppInfo;->getInstance()Lcom/alipay/mobile/verifyidentity/info/AppInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/verifyidentity/info/AppInfo;->getViSdkVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/info/DeviceInfo;->getInstance()Lcom/alipay/mobile/verifyidentity/info/DeviceInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/verifyidentity/info/DeviceInfo;->getMobileBrand()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/info/DeviceInfo;->getInstance()Lcom/alipay/mobile/verifyidentity/info/DeviceInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/verifyidentity/info/DeviceInfo;->getOsVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    invoke-direct {p0}, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/utils/VIUtils;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/info/AppInfo;->getInstance()Lcom/alipay/mobile/verifyidentity/info/AppInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/verifyidentity/info/AppInfo;->getApdid()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/info/EnvInfoUtil;->getBirdNestInfo()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    invoke-direct {p0, p1}, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/info/DeviceInfo;->getInstance()Lcom/alipay/mobile/verifyidentity/info/DeviceInfo;

    move-result-object p1

    invoke-static {}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->getInstance()Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/alipay/mobile/verifyidentity/info/DeviceInfo;->getUtdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private f(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "-"

    .line 363
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 364
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x2

    aget-object v2, p1, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x3

    aget-object p1, p1, v0

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private declared-synchronized f()V
    .locals 1

    monitor-enter p0

    .line 457
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 458
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private g(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, "\\(|\\)"

    const-string v1, ""

    .line 369
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "-"

    return-object p1
.end method

.method public static getInstance()Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;
    .locals 2

    .line 56
    sget-object v0, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;->h:Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;

    if-nez v0, :cond_1

    .line 57
    const-class v0, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;

    monitor-enter v0

    .line 58
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;->h:Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;

    if-nez v1, :cond_0

    .line 59
    new-instance v1, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;

    invoke-direct {v1}, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;-><init>()V

    sput-object v1, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;->h:Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;

    .line 61
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 63
    :cond_1
    :goto_0
    sget-object v0, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;->h:Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;

    return-object v0
.end method

.method private h(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, "#"

    const-string v1, "\\r"

    .line 408
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "\\n"

    .line 409
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, ","

    const-string v1, "\uff0c"

    .line 410
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\\["

    const-string v1, "\u3010"

    .line 411
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\\]"

    const-string v1, "\u3011"

    .line 412
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\\("

    const-string v1, "\uff08"

    .line 413
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\\)"

    const-string v1, "\uff09"

    .line 414
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, ";"

    const-string v1, "\uff1b"

    .line 415
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "-"

    return-object p1
.end method

.method private i(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "&"

    const-string v1, "^"

    .line 424
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private declared-synchronized j(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 451
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 452
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 454
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public eventBehavior(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v1, "event"

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 102
    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;->logBehavior(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public logBehavior(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 107
    sget-object v0, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;->h:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Y"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 110
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;->startLogger()V

    move-object v0, p0

    .line 111
    iget-object v9, v0, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;->f:Ljava/util/concurrent/BlockingQueue;

    new-instance v10, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger$VerifyLogTask;

    move-object v1, v10

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger$VerifyLogTask;-><init>(Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-interface {v9, v10}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    .line 112
    sget-object v1, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "userCaseID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v3, p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized remove(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 270
    :try_start_0
    sget-object v0, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 272
    :cond_0
    :goto_0
    monitor-exit p0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public declared-synchronized startLogger()V
    .locals 3

    monitor-enter p0

    .line 119
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 120
    monitor-exit p0

    return-void

    .line 124
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/utils/task/AsyncTaskExecutor;->a()Lcom/alipay/mobile/verifyidentity/utils/task/AsyncTaskExecutor;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger$1;-><init>(Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;)V

    const-string v2, "VI-logBehavior"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/verifyidentity/utils/task/AsyncTaskExecutor;->a(Ljava/lang/Runnable;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 194
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public verifyBehavior(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v1, "verify"

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 97
    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;->logBehavior(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public declared-synchronized writeCrashLog(Ljava/lang/String;)V
    .locals 5

    monitor-enter p0

    .line 294
    :try_start_0
    sget-object v0, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;->a:Ljava/lang/String;

    const-string v1, "writeCrashLog"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    invoke-direct {p0}, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;->a()Ljava/lang/String;

    move-result-object v0

    .line 296
    invoke-direct {p0, v0}, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;->d(Ljava/lang/String;)V

    .line 297
    invoke-direct {p0, v0}, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;->c(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 298
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 299
    sget-object v2, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u5f02\u5e38\u540e | verify\u57cb\u70b9\u5185\u5bb9:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/log/utils/LogReportHelper;->getLogFileName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/alipay/mobile/verifyidentity/log/utils/EncryptFileUtils;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 302
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v0}, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 303
    invoke-direct {p0, p1}, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;->j(Ljava/lang/String;)V

    .line 304
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;->d:Ljava/util/List;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;->d:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 305
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;->d:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object p1

    const-string v0, ","

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;->a([Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 306
    sget-object v0, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5f02\u5e38\u540e | event\u57cb\u70b9\u5185\u5bb9:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/log/utils/LogReportHelper;->getDispersedLogFileName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/alipay/mobile/verifyidentity/log/utils/EncryptFileUtils;->write(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 309
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
