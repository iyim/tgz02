.class public Lcom/alibaba/jsi/standard/JSEngine;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/jsi/standard/JSEngine$a;
    }
.end annotation


# static fields
.field private static final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/alibaba/jsi/standard/JSEngine;",
            ">;"
        }
    .end annotation
.end field

.field private static final g:Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Landroid/os/Handler;

.field private final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/alibaba/jsi/standard/JSContext;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/lang/Runnable;

.field private h:J

.field private i:Z

.field private j:Z

.field private final k:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/alibaba/jsi/standard/js/Deletable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alibaba/jsi/standard/JSEngine;->e:Ljava/util/Map;

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alibaba/jsi/standard/JSEngine;->f:Ljava/util/Map;

    .line 50
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/alibaba/jsi/standard/JSEngine;->g:Ljava/lang/Object;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLandroid/os/Handler;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p5

    .line 59
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v0, Lcom/alibaba/jsi/standard/JSEngine;->c:Ljava/util/ArrayList;

    .line 39
    new-instance v4, Lcom/alibaba/jsi/standard/JSEngine$a;

    const/4 v5, 0x4

    invoke-direct {v4, v0, v5}, Lcom/alibaba/jsi/standard/JSEngine$a;-><init>(Lcom/alibaba/jsi/standard/JSEngine;I)V

    iput-object v4, v0, Lcom/alibaba/jsi/standard/JSEngine;->d:Ljava/lang/Runnable;

    const-wide/16 v4, 0x0

    .line 52
    iput-wide v4, v0, Lcom/alibaba/jsi/standard/JSEngine;->h:J

    const/4 v6, 0x1

    .line 53
    iput-boolean v6, v0, Lcom/alibaba/jsi/standard/JSEngine;->i:Z

    const/4 v6, 0x0

    .line 55
    iput-boolean v6, v0, Lcom/alibaba/jsi/standard/JSEngine;->j:Z

    .line 56
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    iput-object v6, v0, Lcom/alibaba/jsi/standard/JSEngine;->k:Ljava/util/Set;

    if-eqz v1, :cond_0

    .line 62
    invoke-static/range {p1 .. p1}, Lcom/alibaba/jsi/standard/b;->a(Landroid/content/Context;)V

    :cond_0
    move-object/from16 v6, p2

    .line 65
    iput-object v6, v0, Lcom/alibaba/jsi/standard/JSEngine;->a:Ljava/lang/String;

    if-nez p7, :cond_1

    .line 67
    new-instance v6, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    goto :goto_0

    :cond_1
    move-object/from16 v6, p7

    .line 69
    :goto_0
    iput-object v6, v0, Lcom/alibaba/jsi/standard/JSEngine;->b:Landroid/os/Handler;

    cmp-long v6, v2, v4

    if-nez v6, :cond_3

    const-string v2, ""

    if-eqz v1, :cond_2

    .line 76
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 77
    invoke-static {v1, v2}, Lcom/alibaba/jsi/standard/JSEngine;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v13, v1

    move-object v9, v2

    goto :goto_1

    :cond_2
    move-object v9, v2

    move-object v13, v9

    :goto_1
    const-wide/16 v6, 0x0

    const-wide/16 v10, 0x0

    const-string v8, "app-package"

    .line 79
    invoke-static/range {v6 .. v11}, Lcom/alibaba/jsi/standard/JNIBridge;->nativeSetInfo(JLjava/lang/String;Ljava/lang/String;J)Z

    const-wide/16 v14, 0x0

    const-string v12, "app-version"

    .line 80
    invoke-static/range {v10 .. v15}, Lcom/alibaba/jsi/standard/JNIBridge;->nativeSetInfo(JLjava/lang/String;Ljava/lang/String;J)Z

    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/alibaba/jsi/standard/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, p4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 83
    iget-object v2, v0, Lcom/alibaba/jsi/standard/JSEngine;->a:Ljava/lang/String;

    move-object/from16 v3, p3

    invoke-static {v1, v2, v3}, Lcom/alibaba/jsi/standard/JNIBridge;->nativeInitInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/alibaba/jsi/standard/JSEngine;->h:J

    .line 85
    invoke-virtual {v0, v4, v5}, Lcom/alibaba/jsi/standard/JSEngine;->a(J)V

    return-void

    .line 88
    :cond_3
    iput-wide v2, v0, Lcom/alibaba/jsi/standard/JSEngine;->h:J

    return-void
.end method

.method static synthetic a(Lcom/alibaba/jsi/standard/JSEngine;)J
    .locals 2

    .line 21
    iget-wide v0, p0, Lcom/alibaba/jsi/standard/JSEngine;->h:J

    return-wide v0
.end method

.method static a()Lcom/alibaba/jsi/standard/JSEngine;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x3

    .line 156
    invoke-static {v0, v1}, Lcom/alibaba/jsi/standard/js/Bridge;->cmd(Lcom/alibaba/jsi/standard/JSContext;I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 157
    instance-of v2, v1, Ljava/lang/Long;

    if-eqz v2, :cond_0

    .line 158
    nop

    nop

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/alibaba/jsi/standard/JSEngine;->getInstance(J)Lcom/alibaba/jsi/standard/JSEngine;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLandroid/os/Handler;)Lcom/alibaba/jsi/standard/JSEngine;
    .locals 12

    move-object v0, p1

    move-object v9, p3

    .line 128
    sget-object v10, Lcom/alibaba/jsi/standard/JSEngine;->f:Ljava/util/Map;

    monitor-enter v10

    .line 129
    :try_start_0
    sget-object v1, Lcom/alibaba/jsi/standard/JSEngine;->e:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    if-eqz v1, :cond_0

    .line 130
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_0

    .line 131
    sget-object v2, Lcom/alibaba/jsi/standard/JSEngine;->f:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/jsi/standard/JSEngine;

    if-eqz v1, :cond_0

    const-string v2, "jsi"

    .line 133
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Instance \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\' already created!"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    monitor-exit v10

    return-object v1

    .line 139
    :cond_0
    new-instance v11, Lcom/alibaba/jsi/standard/JSEngine;

    move-object v1, v11

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v5, p4

    move-wide/from16 v6, p5

    move-object/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Lcom/alibaba/jsi/standard/JSEngine;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLandroid/os/Handler;)V

    .line 141
    sget-object v1, Lcom/alibaba/jsi/standard/JSEngine;->e:Ljava/util/Map;

    iget-wide v2, v11, Lcom/alibaba/jsi/standard/JSEngine;->h:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    sget-object v0, Lcom/alibaba/jsi/standard/JSEngine;->f:Ljava/util/Map;

    iget-wide v1, v11, Lcom/alibaba/jsi/standard/JSEngine;->h:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v9, :cond_2

    .line 144
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    const-string v0, "--disable-print-objects-at-dispose"

    .line 146
    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, v11, Lcom/alibaba/jsi/standard/JSEngine;->i:Z

    .line 148
    iget-wide v0, v11, Lcom/alibaba/jsi/standard/JSEngine;->h:J

    const-string v2, "flags"

    const-wide/16 v4, 0x0

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lcom/alibaba/jsi/standard/JNIBridge;->nativeSetInfo(JLjava/lang/String;Ljava/lang/String;J)Z

    .line 151
    :cond_2
    monitor-exit v10

    return-object v11

    :catchall_0
    move-exception v0

    .line 152
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 488
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    .line 489
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 490
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const-string p0, "<unknown>"

    return-object p0
.end method

.method private b()V
    .locals 4

    .line 551
    iget-object v0, p0, Lcom/alibaba/jsi/standard/JSEngine;->c:Ljava/util/ArrayList;

    monitor-enter v0

    .line 552
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/jsi/standard/JSEngine;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 553
    iget-object v1, p0, Lcom/alibaba/jsi/standard/JSEngine;->c:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/jsi/standard/JSContext;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 555
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 556
    iget-object v2, p0, Lcom/alibaba/jsi/standard/JSEngine;->k:Ljava/util/Set;

    monitor-enter v2

    .line 557
    :try_start_1
    iget-object v0, p0, Lcom/alibaba/jsi/standard/JSEngine;->k:Ljava/util/Set;

    iget-object v3, p0, Lcom/alibaba/jsi/standard/JSEngine;->a:Ljava/lang/String;

    invoke-static {v1, v0, v3}, Lcom/alibaba/jsi/standard/a;->a(Lcom/alibaba/jsi/standard/JSContext;Ljava/util/Set;Ljava/lang/String;)V

    .line 558
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    .line 555
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method static synthetic b(Lcom/alibaba/jsi/standard/JSEngine;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/alibaba/jsi/standard/JSEngine;->b()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static createInstance(Landroid/content/Context;Landroid/os/Bundle;)Lcom/alibaba/jsi/standard/JSEngine;
    .locals 1

    const/4 v0, 0x0

    .line 217
    invoke-static {p0, p1, v0}, Lcom/alibaba/jsi/standard/JSEngine;->createInstance(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Handler;)Lcom/alibaba/jsi/standard/JSEngine;

    move-result-object p0

    return-object p0
.end method

.method public static createInstance(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Handler;)Lcom/alibaba/jsi/standard/JSEngine;
    .locals 9

    if-eqz p0, :cond_4

    if-eqz p1, :cond_4

    const-string v0, "name"

    .line 242
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    const-string v0, ""

    const-string v1, "version"

    .line 246
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v1, "flags"

    .line 247
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x0

    const-string v1, "datadir"

    .line 248
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 249
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string p1, "shared"

    :cond_1
    move-object v5, p1

    const-string p1, "/"

    .line 252
    invoke-virtual {v5, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    const-wide/16 v6, 0x0

    move-object v1, p0

    move-object v8, p2

    .line 256
    invoke-static/range {v1 .. v8}, Lcom/alibaba/jsi/standard/JSEngine;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLandroid/os/Handler;)Lcom/alibaba/jsi/standard/JSEngine;

    move-result-object p0

    return-object p0

    .line 253
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\'datadir\' can not be a absolute path!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 244
    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "\'name\' not set!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 240
    :cond_4
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "context and args can not be null!"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getEngineType()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x4

    .line 442
    invoke-static {v0, v1}, Lcom/alibaba/jsi/standard/js/Bridge;->cmd(Lcom/alibaba/jsi/standard/JSContext;I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 443
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 444
    nop

    nop

    return-object v1

    :cond_0
    return-object v0
.end method

.method public static getInstance(J)Lcom/alibaba/jsi/standard/JSEngine;
    .locals 2

    .line 120
    sget-object v0, Lcom/alibaba/jsi/standard/JSEngine;->f:Ljava/util/Map;

    monitor-enter v0

    .line 121
    :try_start_0
    sget-object v1, Lcom/alibaba/jsi/standard/JSEngine;->f:Ljava/util/Map;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/alibaba/jsi/standard/JSEngine;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 122
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static getInstance(Ljava/lang/String;)Lcom/alibaba/jsi/standard/JSEngine;
    .locals 6

    .line 266
    sget-object v0, Lcom/alibaba/jsi/standard/JSEngine;->f:Ljava/util/Map;

    monitor-enter v0

    .line 267
    :try_start_0
    sget-object v1, Lcom/alibaba/jsi/standard/JSEngine;->e:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    if-eqz p0, :cond_0

    .line 268
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    .line 269
    sget-object v1, Lcom/alibaba/jsi/standard/JSEngine;->f:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/alibaba/jsi/standard/JSEngine;

    monitor-exit v0

    return-object p0

    .line 271
    :cond_0
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 453
    invoke-static {v0}, Lcom/alibaba/jsi/standard/JNIBridge;->nativeGetVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getVersionInt()I
    .locals 5

    const-wide/16 v0, 0x3

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    .line 460
    invoke-static {v0, v1, v2, v3, v4}, Lcom/alibaba/jsi/standard/JNIBridge;->nativeCommand(JJ[Ljava/lang/Object;)J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method public static loadSo(Landroid/content/Context;Landroid/os/Bundle;)Z
    .locals 1

    if-eqz p0, :cond_2

    if-eqz p1, :cond_1

    .line 187
    invoke-static {p0}, Lcom/alibaba/jsi/standard/b;->a(Landroid/content/Context;)V

    const-string p0, "jsiSoPath"

    .line 189
    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "p8SoPath"

    .line 192
    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    const-string v0, "jsEngineSoPath"

    .line 194
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 195
    sget-object v0, Lcom/alibaba/jsi/standard/JSEngine;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 196
    :try_start_0
    invoke-static {p0, p1}, Lcom/alibaba/jsi/standard/b;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 197
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 184
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "args can not be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 181
    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "context can not be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method final a(J)V
    .locals 2

    .line 482
    iget-object v0, p0, Lcom/alibaba/jsi/standard/JSEngine;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alibaba/jsi/standard/JSEngine;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 483
    iget-object v0, p0, Lcom/alibaba/jsi/standard/JSEngine;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alibaba/jsi/standard/JSEngine;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method final a(Lcom/alibaba/jsi/standard/js/Deletable;)V
    .locals 2

    .line 468
    iget-boolean v0, p0, Lcom/alibaba/jsi/standard/JSEngine;->j:Z

    if-nez v0, :cond_0

    return-void

    .line 469
    :cond_0
    iget-object v0, p0, Lcom/alibaba/jsi/standard/JSEngine;->k:Ljava/util/Set;

    monitor-enter v0

    .line 470
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/jsi/standard/JSEngine;->k:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 471
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method final declared-synchronized a(Z)V
    .locals 4

    monitor-enter p0

    .line 97
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/jsi/standard/JSEngine;->getContexts()Ljava/util/List;

    move-result-object v0

    .line 98
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/jsi/standard/JSContext;

    .line 99
    invoke-virtual {p0, v1}, Lcom/alibaba/jsi/standard/JSEngine;->removeContext(Lcom/alibaba/jsi/standard/JSContext;)V

    goto :goto_0

    .line 102
    :cond_0
    iget-boolean v0, p0, Lcom/alibaba/jsi/standard/JSEngine;->j:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/alibaba/jsi/standard/JSEngine;->i:Z

    if-eqz v0, :cond_1

    const-string v0, "jsi"

    const-string v1, "Print java objects at dispose ..."

    .line 103
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    invoke-direct {p0}, Lcom/alibaba/jsi/standard/JSEngine;->b()V

    .line 107
    :cond_1
    iget-wide v0, p0, Lcom/alibaba/jsi/standard/JSEngine;->h:J

    const-wide/16 v2, 0x0

    .line 108
    iput-wide v2, p0, Lcom/alibaba/jsi/standard/JSEngine;->h:J

    if-nez p1, :cond_2

    .line 110
    invoke-static {v0, v1}, Lcom/alibaba/jsi/standard/JNIBridge;->nativeDisposeInstance(J)V

    .line 113
    :cond_2
    sget-object p1, Lcom/alibaba/jsi/standard/JSEngine;->f:Ljava/util/Map;

    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 114
    :try_start_1
    sget-object v2, Lcom/alibaba/jsi/standard/JSEngine;->e:Ljava/util/Map;

    iget-object v3, p0, Lcom/alibaba/jsi/standard/JSEngine;->a:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget-object v2, Lcom/alibaba/jsi/standard/JSEngine;->f:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method final b(Lcom/alibaba/jsi/standard/js/Deletable;)V
    .locals 2

    .line 475
    iget-boolean v0, p0, Lcom/alibaba/jsi/standard/JSEngine;->j:Z

    if-nez v0, :cond_0

    return-void

    .line 476
    :cond_0
    iget-object v0, p0, Lcom/alibaba/jsi/standard/JSEngine;->k:Ljava/util/Set;

    monitor-enter v0

    .line 477
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/jsi/standard/JSEngine;->k:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 478
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public createContext(Ljava/lang/String;)Lcom/alibaba/jsi/standard/JSContext;
    .locals 3

    .line 347
    new-instance v0, Lcom/alibaba/jsi/standard/JSContext;

    invoke-direct {v0, p1, p0}, Lcom/alibaba/jsi/standard/JSContext;-><init>(Ljava/lang/String;Lcom/alibaba/jsi/standard/JSEngine;)V

    .line 348
    iget-object p1, p0, Lcom/alibaba/jsi/standard/JSEngine;->c:Ljava/util/ArrayList;

    monitor-enter p1

    .line 349
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/jsi/standard/JSEngine;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 350
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v1, 0x0

    .line 352
    invoke-virtual {p0, v1, v2}, Lcom/alibaba/jsi/standard/JSEngine;->a(J)V

    return-object v0

    :catchall_0
    move-exception v0

    .line 350
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public dispose()V
    .locals 1

    const/4 v0, 0x0

    .line 287
    invoke-virtual {p0, v0}, Lcom/alibaba/jsi/standard/JSEngine;->a(Z)V

    return-void
.end method

.method public getContext(J)Lcom/alibaba/jsi/standard/JSContext;
    .locals 6

    .line 329
    iget-object v0, p0, Lcom/alibaba/jsi/standard/JSEngine;->c:Ljava/util/ArrayList;

    monitor-enter v0

    .line 330
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/jsi/standard/JSEngine;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/jsi/standard/JSContext;

    .line 331
    invoke-virtual {v2}, Lcom/alibaba/jsi/standard/JSContext;->getId()J

    move-result-wide v3

    cmp-long v5, v3, p1

    if-nez v5, :cond_0

    .line 332
    monitor-exit v0

    return-object v2

    .line 335
    :cond_1
    monitor-exit v0

    const/4 p1, 0x0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :goto_0
    throw p1

    :goto_1
    goto :goto_0
.end method

.method public getContextCount()I
    .locals 2

    .line 318
    iget-object v0, p0, Lcom/alibaba/jsi/standard/JSEngine;->c:Ljava/util/ArrayList;

    monitor-enter v0

    .line 319
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/jsi/standard/JSEngine;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 320
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getContexts()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/jsi/standard/JSContext;",
            ">;"
        }
    .end annotation

    .line 303
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 304
    iget-object v1, p0, Lcom/alibaba/jsi/standard/JSEngine;->c:Ljava/util/ArrayList;

    monitor-enter v1

    .line 305
    :try_start_0
    iget-object v2, p0, Lcom/alibaba/jsi/standard/JSEngine;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/jsi/standard/JSContext;

    .line 306
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 308
    :cond_0
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public getEmbedderName()Ljava/lang/String;
    .locals 1

    .line 280
    iget-object v0, p0, Lcom/alibaba/jsi/standard/JSEngine;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getNativeInstance()J
    .locals 2

    .line 93
    iget-wide v0, p0, Lcom/alibaba/jsi/standard/JSEngine;->h:J

    return-wide v0
.end method

.method public isDisposed()Z
    .locals 5

    .line 294
    iget-wide v0, p0, Lcom/alibaba/jsi/standard/JSEngine;->h:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onLowMemory()V
    .locals 3

    .line 405
    iget-object v0, p0, Lcom/alibaba/jsi/standard/JSEngine;->b:Landroid/os/Handler;

    new-instance v1, Lcom/alibaba/jsi/standard/JSEngine$a;

    const/4 v2, 0x5

    invoke-direct {v1, p0, v2}, Lcom/alibaba/jsi/standard/JSEngine$a;-><init>(Lcom/alibaba/jsi/standard/JSEngine;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public printObjects()V
    .locals 3

    .line 433
    iget-object v0, p0, Lcom/alibaba/jsi/standard/JSEngine;->b:Landroid/os/Handler;

    new-instance v1, Lcom/alibaba/jsi/standard/JSEngine$a;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lcom/alibaba/jsi/standard/JSEngine$a;-><init>(Lcom/alibaba/jsi/standard/JSEngine;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public removeContext(Lcom/alibaba/jsi/standard/JSContext;)V
    .locals 2

    .line 363
    invoke-virtual {p1}, Lcom/alibaba/jsi/standard/JSContext;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 364
    invoke-virtual {p1}, Lcom/alibaba/jsi/standard/JSContext;->dispose()V

    .line 366
    :cond_0
    iget-object v0, p0, Lcom/alibaba/jsi/standard/JSEngine;->c:Ljava/util/ArrayList;

    monitor-enter v0

    .line 367
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/jsi/standard/JSEngine;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 368
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v0, 0x0

    .line 369
    invoke-virtual {p0, v0, v1}, Lcom/alibaba/jsi/standard/JSEngine;->a(J)V

    return-void

    :catchall_0
    move-exception p1

    .line 368
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setEnableStats(Z)V
    .locals 3

    if-nez p1, :cond_0

    .line 415
    iget-object v0, p0, Lcom/alibaba/jsi/standard/JSEngine;->k:Ljava/util/Set;

    monitor-enter v0

    .line 416
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/jsi/standard/JSEngine;->k:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 417
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 419
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/alibaba/jsi/standard/JSEngine;->j:Z

    if-eq v0, p1, :cond_1

    .line 420
    invoke-static {p1}, Lcom/alibaba/jsi/standard/a;->a(Z)V

    .line 421
    iput-boolean p1, p0, Lcom/alibaba/jsi/standard/JSEngine;->j:Z

    :cond_1
    const/4 v0, 0x5

    if-eqz p1, :cond_2

    const-wide/16 v1, 0x1

    goto :goto_1

    :cond_2
    const-wide/16 v1, 0x0

    .line 423
    :goto_1
    invoke-static {p0, v0, v1, v2}, Lcom/alibaba/jsi/standard/js/Bridge;->engineCmd(Lcom/alibaba/jsi/standard/JSEngine;IJ)Ljava/lang/Object;

    return-void
.end method

.method public startTrace(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    if-nez p1, :cond_0

    const-string p1, "/sdcard/jsi_trace_${pid}_${time}_${index}.json"

    :cond_0
    if-nez p2, :cond_1

    const-string p2, "jsi,v8,v8.compile,disabled-by-default-v8.compile"

    .line 388
    :cond_1
    iget-object v0, p0, Lcom/alibaba/jsi/standard/JSEngine;->b:Landroid/os/Handler;

    new-instance v1, Lcom/alibaba/jsi/standard/JSEngine$a;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object p2, v2, p1

    invoke-direct {v1, p0, v2}, Lcom/alibaba/jsi/standard/JSEngine$a;-><init>(Lcom/alibaba/jsi/standard/JSEngine;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public stopTrace()V
    .locals 3

    .line 398
    iget-object v0, p0, Lcom/alibaba/jsi/standard/JSEngine;->b:Landroid/os/Handler;

    new-instance v1, Lcom/alibaba/jsi/standard/JSEngine$a;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/alibaba/jsi/standard/JSEngine$a;-><init>(Lcom/alibaba/jsi/standard/JSEngine;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
