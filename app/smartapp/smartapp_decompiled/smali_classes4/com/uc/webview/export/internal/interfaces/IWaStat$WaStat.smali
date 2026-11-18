.class public Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;
.super Ljava/lang/Object;
.source "U4Source"


# annotations
.annotation build Lcom/uc/webview/export/annotations/Api;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uc/webview/export/internal/interfaces/IWaStat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WaStat"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat$ISaveListener;
    }
.end annotation


# static fields
.field static a:Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat$ISaveListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private static a(Ljava/lang/String;)V
    .locals 1

    .line 353
    :try_start_0
    invoke-static {}, Lcom/uc/webview/export/internal/uc/wa/a;->a()Lcom/uc/webview/export/internal/uc/wa/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 354
    invoke-static {}, Lcom/uc/webview/export/internal/uc/wa/a;->a()Lcom/uc/webview/export/internal/uc/wa/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/uc/webview/export/internal/uc/wa/a;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string p0, "SDKWaStat"

    const-string v0, "stat>>WaStatImp not inited"

    .line 356
    invoke-static {p0, v0}, Lcom/uc/webview/export/internal/utility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 359
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public static getPrintLogEnable()Z
    .locals 1

    .line 321
    sget-boolean v0, Lcom/uc/webview/export/internal/uc/wa/a;->b:Z

    return v0
.end method

.method public static saveData()V
    .locals 2

    .line 461
    sget-object v0, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->a:Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat$ISaveListener;

    if-eqz v0, :cond_0

    .line 462
    invoke-interface {v0}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat$ISaveListener;->onWillSave()V

    .line 465
    :cond_0
    invoke-static {}, Lcom/uc/webview/export/internal/uc/wa/a;->a()Lcom/uc/webview/export/internal/uc/wa/a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 466
    invoke-static {}, Lcom/uc/webview/export/internal/uc/wa/a;->a()Lcom/uc/webview/export/internal/uc/wa/a;

    move-result-object v0

    const/4 v1, 0x0

    .line 2462
    invoke-virtual {v0, v1}, Lcom/uc/webview/export/internal/uc/wa/a;->a(Z)V

    :cond_1
    return-void
.end method

.method public static saveData(Z)V
    .locals 1

    .line 474
    sget-object v0, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->a:Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat$ISaveListener;

    if-eqz v0, :cond_0

    .line 475
    invoke-interface {v0}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat$ISaveListener;->onWillSave()V

    .line 478
    :cond_0
    invoke-static {}, Lcom/uc/webview/export/internal/uc/wa/a;->a()Lcom/uc/webview/export/internal/uc/wa/a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 479
    invoke-static {}, Lcom/uc/webview/export/internal/uc/wa/a;->a()Lcom/uc/webview/export/internal/uc/wa/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/uc/webview/export/internal/uc/wa/a;->a(Z)V

    :cond_1
    return-void
.end method

.method public static setPrintLogEnable(Z)V
    .locals 0

    .line 314
    sput-boolean p0, Lcom/uc/webview/export/internal/uc/wa/a;->b:Z

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static setSaveListener(Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat$ISaveListener;)V
    .locals 0

    .line 484
    sput-object p0, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->a:Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat$ISaveListener;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static setUploadInterval(I)V
    .locals 0

    .line 317
    sput p0, Lcom/uc/webview/export/internal/uc/wa/a;->c:I

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static stat(Landroid/util/Pair;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 434
    instance-of v0, p0, Landroid/util/Pair;

    if-eqz v0, :cond_0

    .line 435
    invoke-static {p0}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->statAKV(Landroid/util/Pair;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 436
    :cond_0
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 437
    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->a(Ljava/lang/String;)V

    :cond_1
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static stat(Ljava/lang/String;)V
    .locals 1

    .line 344
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 345
    invoke-static {p0}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->a(Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 346
    :cond_0
    instance-of v0, p0, Landroid/util/Pair;

    if-eqz v0, :cond_1

    .line 347
    check-cast p0, Landroid/util/Pair;

    invoke-static {p0}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->statAKV(Landroid/util/Pair;)V

    :cond_1
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static stat(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 404
    :try_start_0
    invoke-static {}, Lcom/uc/webview/export/internal/uc/wa/a;->a()Lcom/uc/webview/export/internal/uc/wa/a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 405
    invoke-static {}, Lcom/uc/webview/export/internal/uc/wa/a;->a()Lcom/uc/webview/export/internal/uc/wa/a;

    move-result-object v1

    .line 2322
    invoke-static {}, Lcom/uc/webview/export/internal/uc/wa/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v2, p0

    move-object v6, p1

    .line 2325
    invoke-virtual/range {v1 .. v6}, Lcom/uc/webview/export/internal/uc/wa/a;->a(Ljava/lang/String;IIILjava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    const-string p0, "SDKWaStat"

    const-string p1, "stat>>WaStatImp not inited"

    .line 407
    invoke-static {p0, p1}, Lcom/uc/webview/export/internal/utility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 410
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public static stat(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7

    .line 422
    :try_start_0
    invoke-static {}, Lcom/uc/webview/export/internal/uc/wa/a;->a()Lcom/uc/webview/export/internal/uc/wa/a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 423
    invoke-static {}, Lcom/uc/webview/export/internal/uc/wa/a;->a()Lcom/uc/webview/export/internal/uc/wa/a;

    move-result-object v1

    .line 2336
    invoke-static {}, Lcom/uc/webview/export/internal/uc/wa/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v3, 0x1

    const/4 v5, 0x0

    move-object v2, p0

    move v4, p2

    move-object v6, p1

    .line 2339
    invoke-virtual/range {v1 .. v6}, Lcom/uc/webview/export/internal/uc/wa/a;->a(Ljava/lang/String;IIILjava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    const-string p0, "SDKWaStat"

    const-string p1, "stat>>WaStatImp not inited"

    .line 425
    invoke-static {p0, p1}, Lcom/uc/webview/export/internal/utility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 428
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public static statAKV(Landroid/util/Pair;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 447
    :try_start_0
    invoke-static {}, Lcom/uc/webview/export/internal/uc/wa/a;->a()Lcom/uc/webview/export/internal/uc/wa/a;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 448
    invoke-static {}, Lcom/uc/webview/export/internal/uc/wa/a;->a()Lcom/uc/webview/export/internal/uc/wa/a;

    move-result-object v0

    .line 2367
    invoke-static {p0}, Lcom/uc/webview/export/internal/uc/wa/a;->a(Landroid/util/Pair;)V

    .line 2369
    invoke-static {}, Lcom/uc/webview/export/internal/uc/wa/a;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x64

    .line 2372
    iget-object v2, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 2373
    sget-boolean v1, Lcom/uc/webview/export/internal/uc/wa/a;->b:Z

    if-eqz v1, :cond_0

    const-string v1, "SDKWaStat"

    .line 2374
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "second length("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") more then 100"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2377
    :cond_0
    iget-object v1, v0, Lcom/uc/webview/export/internal/uc/wa/a;->i:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2378
    :try_start_1
    iget-object v2, v0, Lcom/uc/webview/export/internal/uc/wa/a;->d:Ljava/util/List;

    if-nez v2, :cond_1

    .line 2379
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/uc/webview/export/internal/uc/wa/a;->d:Ljava/util/List;

    .line 2381
    :cond_1
    new-instance v2, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 2382
    iget-object v3, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/util/HashMap;

    const-string v4, "tm"

    iget-object v5, v0, Lcom/uc/webview/export/internal/uc/wa/a;->h:Ljava/text/SimpleDateFormat;

    invoke-virtual {v5, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2383
    iget-object v2, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/util/Map;

    invoke-static {v2}, Lcom/uc/webview/export/internal/uc/wa/a;->a(Ljava/util/Map;)V

    .line 2384
    iget-object v2, v0, Lcom/uc/webview/export/internal/uc/wa/a;->d:Ljava/util/List;

    new-instance v3, Lcom/uc/webview/export/internal/uc/wa/a$b;

    iget-object v4, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/util/Map;

    invoke-direct {v3, v0, v4, p0}, Lcom/uc/webview/export/internal/uc/wa/a$b;-><init>(Lcom/uc/webview/export/internal/uc/wa/a;Ljava/lang/String;Ljava/util/Map;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2385
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0

    :cond_2
    return-void

    :cond_3
    const-string p0, "SDKWaStat"

    const-string v0, "stat>>WaStatImp not inited"

    .line 450
    invoke-static {p0, v0}, Lcom/uc/webview/export/internal/utility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 453
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public static statAdd(Ljava/lang/String;I)V
    .locals 7

    .line 370
    :try_start_0
    invoke-static {}, Lcom/uc/webview/export/internal/uc/wa/a;->a()Lcom/uc/webview/export/internal/uc/wa/a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 371
    invoke-static {}, Lcom/uc/webview/export/internal/uc/wa/a;->a()Lcom/uc/webview/export/internal/uc/wa/a;

    move-result-object v1

    .line 2295
    invoke-static {}, Lcom/uc/webview/export/internal/uc/wa/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    move v5, p1

    .line 2298
    invoke-virtual/range {v1 .. v6}, Lcom/uc/webview/export/internal/uc/wa/a;->a(Ljava/lang/String;IIILjava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    const-string p0, "SDKWaStat"

    const-string p1, "stat>>WaStatImp not inited"

    .line 373
    invoke-static {p0, p1}, Lcom/uc/webview/export/internal/utility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 376
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public static statAverage(Ljava/lang/String;I)V
    .locals 7

    .line 387
    :try_start_0
    invoke-static {}, Lcom/uc/webview/export/internal/uc/wa/a;->a()Lcom/uc/webview/export/internal/uc/wa/a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 388
    invoke-static {}, Lcom/uc/webview/export/internal/uc/wa/a;->a()Lcom/uc/webview/export/internal/uc/wa/a;

    move-result-object v1

    .line 2309
    invoke-static {}, Lcom/uc/webview/export/internal/uc/wa/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    move v5, p1

    .line 2312
    invoke-virtual/range {v1 .. v6}, Lcom/uc/webview/export/internal/uc/wa/a;->a(Ljava/lang/String;IIILjava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    const-string p0, "SDKWaStat"

    const-string p1, "stat>>WaStatImp not inited"

    .line 390
    invoke-static {p0, p1}, Lcom/uc/webview/export/internal/utility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 393
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public static statPV(Ljava/lang/String;)V
    .locals 7

    .line 330
    invoke-static {}, Lcom/uc/webview/export/internal/uc/wa/a;->a()Lcom/uc/webview/export/internal/uc/wa/a;

    move-result-object v0

    const-string v1, "SDKWaStat"

    if-eqz v0, :cond_6

    .line 331
    invoke-static {}, Lcom/uc/webview/export/internal/uc/wa/a;->a()Lcom/uc/webview/export/internal/uc/wa/a;

    move-result-object v0

    .line 1236
    invoke-static {}, Lcom/uc/webview/export/internal/uc/wa/a;->c()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1240
    invoke-static {p0}, Lcom/uc/webview/export/internal/utility/b;->a(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "ill_upv"

    if-eqz v2, :cond_0

    .line 1241
    invoke-virtual {v0, v3}, Lcom/uc/webview/export/internal/uc/wa/a;->a(Ljava/lang/String;)V

    return-void

    .line 1245
    :cond_0
    sget-boolean v2, Lcom/uc/webview/export/internal/uc/wa/a;->a:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    .line 1246
    sput-boolean v2, Lcom/uc/webview/export/internal/uc/wa/a;->a:Z

    .line 1248
    invoke-static {}, Lcom/uc/webview/export/internal/SDKFactory;->f()Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v4, "SdkStatFileLimit"

    .line 1251
    invoke-interface {v2, v4}, Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;->getIntValue(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1

    .line 1252
    sget v4, Lcom/uc/webview/export/internal/uc/wa/a;->f:I

    if-ge v2, v4, :cond_1

    .line 1255
    sput v2, Lcom/uc/webview/export/internal/uc/wa/a;->e:I

    add-int/lit16 v2, v2, 0x400

    sput v2, Lcom/uc/webview/export/internal/uc/wa/a;->g:I

    .line 1520
    :cond_1
    invoke-virtual {v0}, Lcom/uc/webview/export/internal/uc/wa/a;->b()Landroid/os/Handler;

    move-result-object v2

    new-instance v4, Lcom/uc/webview/export/internal/uc/wa/c;

    invoke-direct {v4, v0}, Lcom/uc/webview/export/internal/uc/wa/c;-><init>(Lcom/uc/webview/export/internal/uc/wa/a;)V

    const-wide/16 v5, 0x3e8

    invoke-virtual {v2, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1261
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string v2, "http://"

    .line 1262
    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "https://"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1263
    invoke-virtual {v0, v3}, Lcom/uc/webview/export/internal/uc/wa/a;->a(Ljava/lang/String;)V

    return-void

    .line 1266
    :cond_3
    sget-boolean v2, Lcom/uc/webview/export/internal/uc/wa/a;->b:Z

    if-eqz v2, :cond_4

    .line 1267
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "statPV:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const-string p0, "sum_pv"

    .line 1269
    invoke-virtual {v0, p0}, Lcom/uc/webview/export/internal/uc/wa/a;->a(Ljava/lang/String;)V

    .line 1270
    invoke-static {}, Lcom/uc/webview/export/internal/SDKFactory;->b()Z

    move-result p0

    if-eqz p0, :cond_5

    const/4 p0, 0x2

    .line 1271
    invoke-static {}, Lcom/uc/webview/export/internal/SDKFactory;->e()I

    move-result v1

    if-ne p0, v1, :cond_5

    const-string p0, "sum_swv_pv"

    .line 1272
    invoke-virtual {v0, p0}, Lcom/uc/webview/export/internal/uc/wa/a;->a(Ljava/lang/String;)V

    :cond_5
    return-void

    :cond_6
    const-string p0, "statPV>>WaStatImp not inited"

    .line 333
    invoke-static {v1, p0}, Lcom/uc/webview/export/internal/utility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static upload()V
    .locals 5

    .line 488
    invoke-static {}, Lcom/uc/webview/export/internal/uc/wa/a;->a()Lcom/uc/webview/export/internal/uc/wa/a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 489
    invoke-static {}, Lcom/uc/webview/export/internal/uc/wa/a;->a()Lcom/uc/webview/export/internal/uc/wa/a;

    move-result-object v0

    .line 2538
    invoke-static {}, Lcom/uc/webview/export/internal/uc/wa/a;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "process_private_data_dir_suffix"

    invoke-static {v1}, Lcom/uc/webview/export/extension/UCCore;->getGlobalOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/uc/webview/export/internal/utility/b;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 2541
    :cond_0
    invoke-virtual {v0}, Lcom/uc/webview/export/internal/uc/wa/a;->b()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/uc/webview/export/internal/uc/wa/d;

    invoke-direct {v2, v0}, Lcom/uc/webview/export/internal/uc/wa/d;-><init>(Lcom/uc/webview/export/internal/uc/wa/a;)V

    const-wide/16 v3, 0x3a98

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    nop

    :cond_1
    :goto_0
    return-void
.end method
