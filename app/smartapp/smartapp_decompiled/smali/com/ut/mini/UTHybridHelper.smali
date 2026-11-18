.class public Lcom/ut/mini/UTHybridHelper;
.super Ljava/lang/Object;
.source "UTHybridHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UTHybridHelper"

.field private static s_instance:Lcom/ut/mini/UTHybridHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    new-instance v0, Lcom/ut/mini/UTHybridHelper;

    invoke-direct {v0}, Lcom/ut/mini/UTHybridHelper;-><init>()V

    sput-object v0, Lcom/ut/mini/UTHybridHelper;->s_instance:Lcom/ut/mini/UTHybridHelper;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private _getPageEventObjectCacheKey(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .line 684
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 685
    move-object v0, p1

    nop

    nop

    goto :goto_0

    .line 687
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 689
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    .line 690
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getH5PageName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    .line 454
    invoke-static {p1}, Lcom/alibaba/analytics/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 457
    :cond_0
    invoke-static {p2}, Lcom/alibaba/analytics/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "?"

    .line 458
    invoke-virtual {p2, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    move-object p1, p2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 463
    invoke-virtual {p2, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    const-string p1, ""

    :goto_0
    return-object p1
.end method

.method public static getInstance()Lcom/ut/mini/UTHybridHelper;
    .locals 1

    .line 32
    sget-object v0, Lcom/ut/mini/UTHybridHelper;->s_instance:Lcom/ut/mini/UTHybridHelper;

    return-object v0
.end method

.method private getUTPageStateObjectSpmMap(Ljava/lang/Object;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
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

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 479
    invoke-direct/range {v0 .. v6}, Lcom/ut/mini/UTHybridHelper;->getUTPageStateObjectSpmMap(Ljava/lang/Object;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method private getUTPageStateObjectSpmMap(Ljava/lang/Object;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)Ljava/util/Map;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p2

    move-object/from16 v1, p5

    .line 487
    invoke-static {}, Lcom/ut/mini/UTPageHitHelper;->getInstance()Lcom/ut/mini/UTPageHitHelper;

    move-result-object v2

    move-object/from16 v3, p1

    invoke-virtual {v2, v3}, Lcom/ut/mini/UTPageHitHelper;->getOrNewUTPageStateObject(Ljava/lang/Object;)Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;

    move-result-object v2

    const/4 v4, 0x0

    if-nez v2, :cond_0

    return-object v4

    :cond_0
    const-string v5, ""

    const-string/jumbo v6, "utparam-cnt"

    const-string/jumbo v7, "utparam-url"

    if-eqz v1, :cond_1

    .line 495
    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 496
    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0

    :cond_1
    move-object v1, v5

    :goto_0
    const-string/jumbo v8, "spm-url"

    const-string/jumbo v9, "spm-cnt"

    const-string/jumbo v10, "utparam"

    const-string/jumbo v11, "spm"

    const-string/jumbo v12, "scm"

    if-eqz p6, :cond_8

    .line 505
    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 506
    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 507
    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 508
    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 509
    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 513
    :try_start_0
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_4

    .line 514
    invoke-static/range {p4 .. p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 515
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 516
    invoke-virtual {v3, v11}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 518
    :cond_2
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 519
    invoke-virtual {v3, v10}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 521
    :cond_3
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 522
    invoke-virtual {v3, v12}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 531
    :catch_0
    :cond_4
    :try_start_1
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 532
    invoke-static/range {p3 .. p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 533
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 534
    invoke-virtual {v3, v11}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 536
    :cond_5
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 537
    invoke-virtual {v3, v10}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 539
    :cond_6
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 540
    invoke-virtual {v3, v12}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v16, v3

    :catch_1
    :cond_7
    move-object v3, v4

    move-object/from16 v4, v16

    goto :goto_2

    :cond_8
    const-string/jumbo v3, "spmcnt"

    .line 547
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string/jumbo v13, "utparamcnt"

    .line 548
    invoke-interface {v0, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 551
    :try_start_2
    invoke-static/range {p3 .. p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    .line 552
    invoke-virtual {v14, v11}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 553
    :try_start_3
    invoke-virtual {v14, v10}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 554
    :try_start_4
    invoke-virtual {v14, v12}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    move-object v15, v10

    :goto_1
    move-object v14, v11

    goto :goto_2

    :catch_3
    move-object v15, v4

    goto :goto_1

    :catch_4
    move-object v14, v4

    move-object v15, v14

    .line 560
    :goto_2
    iget-object v10, v2, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mSpmUrl:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 561
    iput-object v14, v2, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mSpmUrl:Ljava/lang/String;

    .line 563
    :cond_9
    iget-object v10, v2, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mUtparamUrl:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 564
    iput-object v15, v2, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mUtparamUrl:Ljava/lang/String;

    .line 566
    :cond_a
    iget-object v10, v2, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mScmUrl:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 567
    iput-object v4, v2, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mScmUrl:Ljava/lang/String;

    .line 570
    :cond_b
    iget-boolean v10, v2, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mIsH5Page:Z

    const-string v11, "h5Page"

    move-object/from16 v16, v7

    const/4 v7, 0x1

    if-nez v10, :cond_f

    .line 571
    iput-object v3, v2, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mSpmCnt:Ljava/lang/String;

    .line 572
    iput-object v14, v2, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mSpmUrl:Ljava/lang/String;

    .line 573
    invoke-static {}, Lcom/ut/mini/UTPageHitHelper;->getInstance()Lcom/ut/mini/UTPageHitHelper;

    move-result-object v10

    invoke-virtual {v10}, Lcom/ut/mini/UTPageHitHelper;->getLastCacheKey()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_c

    .line 574
    invoke-static {}, Lcom/ut/mini/UTPageHitHelper;->getInstance()Lcom/ut/mini/UTPageHitHelper;

    move-result-object v10

    invoke-virtual {v10}, Lcom/ut/mini/UTPageHitHelper;->getLastCacheKeySpmUrl()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v2, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mSpmPre:Ljava/lang/String;

    .line 577
    :cond_c
    iput-object v4, v2, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mScmUrl:Ljava/lang/String;

    .line 578
    invoke-static {}, Lcom/ut/mini/UTPageHitHelper;->getInstance()Lcom/ut/mini/UTPageHitHelper;

    move-result-object v10

    invoke-virtual {v10}, Lcom/ut/mini/UTPageHitHelper;->getLastCacheKey()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_d

    .line 579
    invoke-static {}, Lcom/ut/mini/UTPageHitHelper;->getInstance()Lcom/ut/mini/UTPageHitHelper;

    move-result-object v10

    invoke-virtual {v10}, Lcom/ut/mini/UTPageHitHelper;->getLastCacheKeyScmUrl()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v2, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mScmPre:Ljava/lang/String;

    .line 581
    :cond_d
    iput-boolean v7, v2, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mIsBack:Z

    .line 583
    invoke-static {}, Lcom/ut/mini/UTPageHitHelper;->getInstance()Lcom/ut/mini/UTPageHitHelper;

    move-result-object v10

    invoke-virtual {v10, v13, v1}, Lcom/ut/mini/UTPageHitHelper;->refreshUtParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 584
    iput-object v13, v2, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mUtparamCnt:Ljava/lang/String;

    .line 585
    invoke-static {}, Lcom/ut/mini/UTPageHitHelper;->getInstance()Lcom/ut/mini/UTPageHitHelper;

    move-result-object v1

    invoke-virtual {v1, v15, v5}, Lcom/ut/mini/UTPageHitHelper;->refreshUtParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 586
    invoke-static {}, Lcom/ut/mini/UTPageHitHelper;->getInstance()Lcom/ut/mini/UTPageHitHelper;

    move-result-object v5

    .line 587
    invoke-static {}, Lcom/ut/mini/UTPageHitHelper;->getInstance()Lcom/ut/mini/UTPageHitHelper;

    move-result-object v10

    invoke-virtual {v10}, Lcom/ut/mini/UTPageHitHelper;->getLastCacheKeyUtParamCnt()Ljava/lang/String;

    move-result-object v10

    .line 586
    invoke-virtual {v5, v1, v10}, Lcom/ut/mini/UTPageHitHelper;->refreshUtParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 588
    iput-object v15, v2, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mUtparamUrl:Ljava/lang/String;

    .line 589
    invoke-static {}, Lcom/ut/mini/UTPageHitHelper;->getInstance()Lcom/ut/mini/UTPageHitHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ut/mini/UTPageHitHelper;->getLastCacheKeyUtParam()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 590
    invoke-static {}, Lcom/ut/mini/UTPageHitHelper;->getInstance()Lcom/ut/mini/UTPageHitHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ut/mini/UTPageHitHelper;->getLastCacheKeyUtParam()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mUtparamPre:Ljava/lang/String;

    .line 593
    :cond_e
    invoke-direct/range {p0 .. p1}, Lcom/ut/mini/UTHybridHelper;->_getPageEventObjectCacheKey(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 594
    invoke-static {}, Lcom/ut/mini/UTPageHitHelper;->getInstance()Lcom/ut/mini/UTPageHitHelper;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/ut/mini/UTPageHitHelper;->setLastCacheKey(Ljava/lang/String;)V

    .line 595
    invoke-static {}, Lcom/ut/mini/UTPageHitHelper;->getInstance()Lcom/ut/mini/UTPageHitHelper;

    move-result-object v1

    invoke-virtual {v1, v14}, Lcom/ut/mini/UTPageHitHelper;->setLastCacheKeySpmUrl(Ljava/lang/String;)V

    .line 596
    invoke-static {}, Lcom/ut/mini/UTPageHitHelper;->getInstance()Lcom/ut/mini/UTPageHitHelper;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/ut/mini/UTPageHitHelper;->setLastCacheKeyScmUrl(Ljava/lang/String;)V

    .line 597
    invoke-static {}, Lcom/ut/mini/UTPageHitHelper;->getInstance()Lcom/ut/mini/UTPageHitHelper;

    move-result-object v1

    invoke-virtual {v1, v15}, Lcom/ut/mini/UTPageHitHelper;->setLastCacheKeyUtParam(Ljava/lang/String;)V

    .line 598
    invoke-static {}, Lcom/ut/mini/UTPageHitHelper;->getInstance()Lcom/ut/mini/UTPageHitHelper;

    move-result-object v1

    invoke-virtual {v1, v13}, Lcom/ut/mini/UTPageHitHelper;->setLastCacheKeyUtParamCnt(Ljava/lang/String;)V

    .line 599
    new-array v1, v7, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mLastCacheKey:"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/ut/mini/UTPageHitHelper;->getInstance()Lcom/ut/mini/UTPageHitHelper;

    move-result-object v10

    invoke-virtual {v10}, Lcom/ut/mini/UTPageHitHelper;->getLastCacheKey()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ",mLastCacheKeySpmUrl:"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 600
    invoke-static {}, Lcom/ut/mini/UTPageHitHelper;->getInstance()Lcom/ut/mini/UTPageHitHelper;

    move-result-object v10

    invoke-virtual {v10}, Lcom/ut/mini/UTPageHitHelper;->getLastCacheKeySpmUrl()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ",mLastCacheKeyUtParam:"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 601
    invoke-static {}, Lcom/ut/mini/UTPageHitHelper;->getInstance()Lcom/ut/mini/UTPageHitHelper;

    move-result-object v10

    invoke-virtual {v10}, Lcom/ut/mini/UTPageHitHelper;->getLastCacheKeyUtParam()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ",mLastCacheKeyUtParamCnt:"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 602
    invoke-static {}, Lcom/ut/mini/UTPageHitHelper;->getInstance()Lcom/ut/mini/UTPageHitHelper;

    move-result-object v10

    invoke-virtual {v10}, Lcom/ut/mini/UTPageHitHelper;->getLastCacheKeyUtParamCnt()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v10, 0x0

    aput-object v5, v1, v10

    .line 599
    invoke-static {v11, v1}, Lcom/alibaba/analytics/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 603
    new-array v1, v7, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UTHybridHelper lPageStateObject:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->getPageStatMap(Z)Ljava/util/Map;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v10

    invoke-static {v11, v1}, Lcom/alibaba/analytics/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_f
    const/4 v1, 0x1

    .line 605
    iput-boolean v1, v2, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mIsH5Page:Z

    const-string/jumbo v5, "scm-pre"

    const-string v7, "UTHybridHelper mSpmPre:"

    const-string/jumbo v10, "spm-pre"

    if-eqz p6, :cond_12

    .line 611
    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 p1, v15

    move-object/from16 v15, v17

    check-cast v15, Ljava/lang/String;

    move-object/from16 v17, v6

    .line 612
    new-array v6, v1, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 p5, v13

    const-string v13, "UTHybridHelper spm-pre:"

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v13, 0x0

    aput-object v1, v6, v13

    invoke-static {v11, v6}, Lcom/alibaba/analytics/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 613
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 614
    iget-object v15, v2, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mSpmPre:Ljava/lang/String;

    const/4 v1, 0x1

    .line 615
    new-array v6, v1, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v13

    invoke-static {v11, v6}, Lcom/alibaba/analytics/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 617
    :cond_10
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v6, 0x1

    .line 618
    new-array v7, v6, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "UTHybridHelper scm-pre:"

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v13, 0x0

    aput-object v6, v7, v13

    invoke-static {v11, v7}, Lcom/alibaba/analytics/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 619
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 620
    iget-object v1, v2, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mScmPre:Ljava/lang/String;

    const/4 v6, 0x1

    .line 621
    new-array v7, v6, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "UTHybridHelper mScmPre:"

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v13, 0x0

    aput-object v6, v7, v13

    invoke-static {v11, v7}, Lcom/alibaba/analytics/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_11
    const-string/jumbo v6, "utparam-pre"

    .line 623
    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v6, 0x1

    .line 624
    new-array v7, v6, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "UTHybridHelper utparam-pre:"

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v13, 0x0

    aput-object v6, v7, v13

    invoke-static {v11, v7}, Lcom/alibaba/analytics/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 625
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_15

    .line 626
    iget-object v0, v2, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mUtparamPre:Ljava/lang/String;

    const/4 v2, 0x1

    .line 627
    new-array v2, v2, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UTHybridHelper mUtparamPre:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v2, v7

    invoke-static {v11, v2}, Lcom/alibaba/analytics/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_12
    move-object/from16 v17, v6

    move-object/from16 p5, v13

    move-object/from16 p1, v15

    const-string/jumbo v1, "spmpre"

    .line 630
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v6, 0x1

    .line 631
    new-array v13, v6, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "UTHybridHelper _spmpre:"

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v15, 0x0

    aput-object v6, v13, v15

    invoke-static {v11, v13}, Lcom/alibaba/analytics/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 632
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 633
    iget-object v1, v2, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mSpmPre:Ljava/lang/String;

    const/4 v6, 0x1

    .line 634
    new-array v13, v6, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v13, v15

    invoke-static {v11, v13}, Lcom/alibaba/analytics/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_13
    move-object v15, v1

    const-string/jumbo v1, "scmpre"

    .line 637
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v6, 0x1

    .line 638
    new-array v7, v6, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "UTHybridHelper _scmpre:"

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v13, 0x0

    aput-object v6, v7, v13

    invoke-static {v11, v7}, Lcom/alibaba/analytics/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 639
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_14

    .line 640
    iget-object v1, v2, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mScmPre:Ljava/lang/String;

    const/4 v6, 0x1

    .line 641
    new-array v7, v6, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "UTHybridHelper mScmPre:"

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v13, 0x0

    aput-object v6, v7, v13

    invoke-static {v11, v7}, Lcom/alibaba/analytics/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_14
    const-string/jumbo v6, "utparampre"

    .line 644
    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v6, 0x1

    .line 645
    new-array v7, v6, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "UTHybridHelper _utparampre:"

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v13, 0x0

    aput-object v6, v7, v13

    invoke-static {v11, v7}, Lcom/alibaba/analytics/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 646
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_15

    .line 647
    iget-object v0, v2, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mUtparamPre:Ljava/lang/String;

    const/4 v2, 0x1

    .line 648
    new-array v2, v2, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UTHybridHelper mUtparamPre:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v2, v7

    invoke-static {v11, v2}, Lcom/alibaba/analytics/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 652
    :cond_15
    :goto_3
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 653
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_16

    .line 654
    invoke-interface {v2, v9, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 656
    :cond_16
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_17

    .line 657
    invoke-interface {v2, v8, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 659
    :cond_17
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_18

    .line 660
    invoke-interface {v2, v10, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 662
    :cond_18
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_19

    .line 663
    invoke-interface {v2, v12, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 665
    :cond_19
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1a

    .line 666
    invoke-interface {v2, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 668
    :cond_1a
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1b

    move-object/from16 v13, p5

    move-object/from16 v1, v17

    .line 669
    invoke-interface {v2, v1, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 671
    :cond_1b
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1c

    move-object/from16 v15, p1

    move-object/from16 v1, v16

    .line 672
    invoke-interface {v2, v1, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 674
    :cond_1c
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1d

    const-string/jumbo v1, "utparam-pre"

    .line 675
    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1d
    return-object v2
.end method

.method private getUTPageStateObjectSpmMap(Ljava/lang/Object;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
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

    const-string v4, ""

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    .line 473
    invoke-direct/range {v0 .. v6}, Lcom/ut/mini/UTHybridHelper;->getUTPageStateObjectSpmMap(Ljava/lang/Object;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method private h5Ctrl(Ljava/lang/String;Ljava/util/Date;Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 p2, -0x1

    .line 283
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move v2, p1

    goto :goto_0

    :catch_0
    const/4 v2, -0x1

    :goto_0
    if-ne v2, p2, :cond_0

    return-void

    :cond_0
    if-eqz p3, :cond_a

    .line 290
    invoke-interface {p3}, Ljava/util/Map;->size()I

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_6

    :cond_1
    const-string/jumbo p1, "urlpagename"

    .line 294
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string/jumbo p2, "url"

    .line 295
    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 296
    invoke-direct {p0, p1, p2}, Lcom/ut/mini/UTHybridHelper;->getH5PageName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string p1, "h5Ctrl"

    const/4 p2, 0x0

    const/4 v7, 0x1

    if-eqz v1, :cond_9

    .line 298
    invoke-static {v1}, Lcom/alibaba/analytics/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_5

    :cond_2
    const-string v0, "logkey"

    .line 303
    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_8

    .line 305
    invoke-static {v3}, Lcom/alibaba/analytics/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_4

    :cond_3
    const/4 p1, 0x0

    const-string/jumbo v0, "utjstype"

    .line 311
    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 312
    invoke-interface {p3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v4, :cond_5

    const-string v0, "0"

    .line 313
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    const-string v0, "1"

    .line 315
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 316
    invoke-direct {p0, p3}, Lcom/ut/mini/UTHybridHelper;->h5CtrlParseArgsWithOutAplus(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    goto :goto_2

    .line 314
    :cond_5
    :goto_1
    invoke-direct {p0, p3}, Lcom/ut/mini/UTHybridHelper;->h5CtrlParseArgsWithAplus(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    :cond_6
    :goto_2
    move-object v6, p1

    .line 319
    new-instance p1, Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 320
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object p3

    invoke-virtual {p3}, Lcom/ut/mini/UTAnalytics;->getDefaultTracker()Lcom/ut/mini/UTTracker;

    move-result-object p3

    if-eqz p3, :cond_7

    .line 322
    invoke-virtual {p1}, Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;->build()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/ut/mini/UTTracker;->send(Ljava/util/Map;)V

    goto :goto_3

    .line 324
    :cond_7
    new-array p1, v7, [Ljava/lang/Object;

    const-string p3, "Fatal Error,must call setRequestAuthentication method first."

    aput-object p3, p1, p2

    const-string p2, "h5Ctrl event error"

    invoke-static {p2, p1}, Lcom/alibaba/analytics/utils/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_3
    return-void

    .line 306
    :cond_8
    :goto_4
    new-array p3, v7, [Ljava/lang/Object;

    const-string v0, "logkey is null,return"

    aput-object v0, p3, p2

    invoke-static {p1, p3}, Lcom/alibaba/analytics/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 299
    :cond_9
    :goto_5
    new-array p3, v7, [Ljava/lang/Object;

    const-string v0, "pageName is null,return"

    aput-object v0, p3, p2

    invoke-static {p1, p3}, Lcom/alibaba/analytics/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_a
    :goto_6
    return-void
.end method

.method private h5Ctrl2(Ljava/util/Map;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_7

    .line 94
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    const/4 v0, -0x1

    :try_start_0
    const-string v1, "funcId"

    .line 99
    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 100
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v1

    goto :goto_0

    :catch_0
    const/4 v4, -0x1

    :goto_0
    if-ne v4, v0, :cond_1

    return-void

    :cond_1
    const-string/jumbo v0, "url"

    .line 107
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    const-string v0, "h5Ctrl"

    const/4 v1, 0x0

    const/4 v9, 0x1

    if-eqz v3, :cond_6

    .line 109
    invoke-static {v3}, Lcom/alibaba/analytics/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_3

    :cond_2
    const-string v2, "logkey"

    .line 114
    invoke-interface {p1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_5

    .line 115
    invoke-static {v5}, Lcom/alibaba/analytics/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_2

    .line 120
    :cond_3
    new-instance v0, Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v0

    move-object v8, p1

    invoke-direct/range {v2 .. v8}, Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 121
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ut/mini/UTAnalytics;->getDefaultTracker()Lcom/ut/mini/UTTracker;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 123
    invoke-virtual {v0}, Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;->build()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ut/mini/UTTracker;->send(Ljava/util/Map;)V

    goto :goto_1

    .line 125
    :cond_4
    new-array p1, v9, [Ljava/lang/Object;

    const-string v0, "Fatal Error,must call setRequestAuthentication method first."

    aput-object v0, p1, v1

    const-string v0, "h5Ctrl event error"

    invoke-static {v0, p1}, Lcom/alibaba/analytics/utils/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    return-void

    .line 116
    :cond_5
    :goto_2
    new-array p1, v9, [Ljava/lang/Object;

    const-string v2, "logkey is null,return"

    aput-object v2, p1, v1

    invoke-static {v0, p1}, Lcom/alibaba/analytics/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 110
    :cond_6
    :goto_3
    new-array p1, v9, [Ljava/lang/Object;

    const-string v2, "pageName is null,return"

    aput-object v2, p1, v1

    invoke-static {v0, p1}, Lcom/alibaba/analytics/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_7
    :goto_4
    return-void
.end method

.method private h5CtrlParseArgsWithAplus(Ljava/util/Map;)Ljava/util/Map;
    .locals 4
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

    if-eqz p1, :cond_4

    .line 421
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 425
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "logkeyargs"

    .line 426
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, ""

    if-nez v1, :cond_1

    move-object v1, v2

    :cond_1
    const-string v3, "_lka"

    .line 427
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "cna"

    .line 429
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_2

    move-object v1, v2

    :cond_2
    const-string v3, "_cna"

    .line 430
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "extendargs"

    .line 432
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_3

    move-object p1, v2

    :cond_3
    const-string v1, "_h5ea"

    .line 433
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "_ish5"

    const-string v1, "1"

    .line 434
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :cond_4
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private h5CtrlParseArgsWithOutAplus(Ljava/util/Map;)Ljava/util/Map;
    .locals 2
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

    if-eqz p1, :cond_2

    .line 440
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 444
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "extendargs"

    .line 445
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_1

    const-string p1, ""

    :cond_1
    const-string v1, "_h5ea"

    .line 446
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "_ish5"

    const-string v1, "1"

    .line 447
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private h5Page(Ljava/util/Date;Ljava/util/Map;Ljava/lang/Object;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    move-object/from16 v2, p3

    .line 200
    invoke-static {}, Lcom/alibaba/analytics/utils/Logger;->d()V

    if-eqz v0, :cond_b

    .line 201
    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->size()I

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_7

    :cond_0
    const-string/jumbo v3, "urlpagename"

    .line 205
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string/jumbo v4, "url"

    .line 206
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 207
    invoke-direct {v1, v3, v4}, Lcom/ut/mini/UTHybridHelper;->getH5PageName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_a

    .line 210
    invoke-static {v3}, Lcom/alibaba/analytics/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto/16 :goto_6

    :cond_1
    const-string/jumbo v5, "utjstype"

    .line 217
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 218
    invoke-interface {v0, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v14, 0x0

    if-eqz v6, :cond_4

    const-string v5, "0"

    .line 219
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_0

    :cond_2
    const-string v5, "1"

    .line 222
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 223
    invoke-direct {v1, v0}, Lcom/ut/mini/UTHybridHelper;->h5PageParseArgsWithOutAplus(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v5

    goto :goto_1

    :cond_3
    move-object v11, v14

    goto :goto_2

    .line 220
    :cond_4
    :goto_0
    invoke-direct {v1, v0}, Lcom/ut/mini/UTHybridHelper;->h5PageParseArgsWithAplus(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v5

    :goto_1
    move-object v11, v5

    :goto_2
    const/16 v5, 0x7d6

    .line 230
    invoke-static {}, Lcom/ut/mini/UTPageHitHelper;->getInstance()Lcom/ut/mini/UTPageHitHelper;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/ut/mini/UTPageHitHelper;->isH52001(Ljava/lang/Object;)Z

    move-result v6

    const/16 v15, 0x7d1

    if-eqz v6, :cond_5

    const/16 v10, 0x7d1

    goto :goto_3

    :cond_5
    const/16 v10, 0x7d6

    .line 234
    :goto_3
    invoke-static {}, Lcom/ut/mini/UTVariables;->getInstance()Lcom/ut/mini/UTVariables;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ut/mini/UTVariables;->getRefPage()Ljava/lang/String;

    move-result-object v8

    .line 235
    new-instance v9, Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v5, v9

    move-object v6, v3

    move v7, v10

    move-object v12, v9

    move-object/from16 v9, v16

    move v13, v10

    move-object/from16 v10, v17

    invoke-direct/range {v5 .. v11}, Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    if-ne v15, v13, :cond_7

    .line 239
    invoke-static {}, Lcom/ut/mini/UTVariables;->getInstance()Lcom/ut/mini/UTVariables;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/ut/mini/UTVariables;->setRefPage(Ljava/lang/String;)V

    .line 242
    invoke-static {}, Lcom/ut/mini/UTPageHitHelper;->getInstance()Lcom/ut/mini/UTPageHitHelper;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/ut/mini/UTPageHitHelper;->getNextPageProperties(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 243
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v5

    if-lez v5, :cond_6

    .line 244
    invoke-virtual {v12, v3}, Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;->setProperties(Ljava/util/Map;)Lcom/ut/mini/UTHitBuilders$UTHitBuilder;

    .line 248
    :cond_6
    instance-of v5, v2, Landroid/app/Activity;

    if-eqz v5, :cond_7

    .line 249
    invoke-direct {v1, v2, v0, v4, v3}, Lcom/ut/mini/UTHybridHelper;->getUTPageStateObjectSpmMap(Ljava/lang/Object;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;->setProperties(Ljava/util/Map;)Lcom/ut/mini/UTHitBuilders$UTHitBuilder;

    .line 258
    :cond_7
    :try_start_0
    invoke-static {}, Lcom/alibaba/analytics/core/config/UTTPKBiz;->getInstance()Lcom/alibaba/analytics/core/config/UTTPKBiz;

    move-result-object v0

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3, v14}, Lcom/alibaba/analytics/core/config/UTTPKBiz;->getTpkString(Landroid/net/Uri;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 260
    invoke-static {v0}, Lcom/alibaba/analytics/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    const-string v3, "_tpk"

    .line 261
    invoke-virtual {v12, v3, v0}, Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/ut/mini/UTHitBuilders$UTHitBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    .line 264
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 270
    :cond_8
    :goto_4
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ut/mini/UTAnalytics;->getDefaultTracker()Lcom/ut/mini/UTTracker;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 272
    invoke-virtual {v12}, Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;->build()Ljava/util/Map;

    move-result-object v3

    invoke-static {v13, v3}, Lcom/ut/mini/UTPvidHelper;->processH5PagePvid(ILjava/util/Map;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/ut/mini/UTTracker;->send(Ljava/util/Map;)V

    goto :goto_5

    :cond_9
    const/4 v3, 0x1

    .line 274
    new-array v0, v3, [Ljava/lang/Object;

    const-string v3, "Fatal Error,must call setRequestAuthentication method first."

    const/4 v4, 0x0

    aput-object v3, v0, v4

    const-string v3, "h5Page event error"

    invoke-static {v3, v0}, Lcom/alibaba/analytics/utils/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 277
    :goto_5
    invoke-static {}, Lcom/ut/mini/UTPageHitHelper;->getInstance()Lcom/ut/mini/UTPageHitHelper;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/ut/mini/UTPageHitHelper;->setH5Called(Ljava/lang/Object;)V

    return-void

    :cond_a
    :goto_6
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 211
    new-array v0, v3, [Ljava/lang/Object;

    const-string v2, "pageName is null,return"

    aput-object v2, v0, v4

    const-string v2, "h5Page"

    invoke-static {v2, v0}, Lcom/alibaba/analytics/utils/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_b
    :goto_7
    return-void
.end method

.method private h5Page2(Ljava/util/Map;Ljava/lang/Object;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v7, p2

    .line 130
    invoke-static {}, Lcom/alibaba/analytics/utils/Logger;->d()V

    const-string v1, "h5Page2"

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v0, :cond_8

    .line 131
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->size()I

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_4

    :cond_0
    const-string/jumbo v2, "url"

    .line 136
    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Ljava/lang/String;

    if-eqz v11, :cond_7

    .line 138
    invoke-static {v11}, Lcom/alibaba/analytics/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_3

    .line 142
    :cond_1
    invoke-static {}, Lcom/ut/mini/UTVariables;->getInstance()Lcom/ut/mini/UTVariables;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ut/mini/UTVariables;->getRefPage()Ljava/lang/String;

    move-result-object v13

    const/16 v1, 0x7d6

    .line 145
    invoke-static {}, Lcom/ut/mini/UTPageHitHelper;->getInstance()Lcom/ut/mini/UTPageHitHelper;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/ut/mini/UTPageHitHelper;->isH52001(Ljava/lang/Object;)Z

    move-result v2

    const/16 v3, 0x7d1

    if-eqz v2, :cond_2

    const/16 v15, 0x7d1

    goto :goto_0

    :cond_2
    const/16 v15, 0x7d6

    .line 148
    :goto_0
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    const-string v12, "_h5url"

    if-ne v3, v15, :cond_4

    .line 150
    invoke-static {}, Lcom/ut/mini/UTVariables;->getInstance()Lcom/ut/mini/UTVariables;

    move-result-object v1

    invoke-virtual {v1, v11}, Lcom/ut/mini/UTVariables;->setRefPage(Ljava/lang/String;)V

    .line 153
    invoke-static {}, Lcom/ut/mini/UTPageHitHelper;->getInstance()Lcom/ut/mini/UTPageHitHelper;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/ut/mini/UTPageHitHelper;->getNextPageProperties(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 154
    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 155
    invoke-interface {v14, v6}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 159
    :cond_3
    instance-of v1, v7, Landroid/app/Activity;

    if-eqz v1, :cond_4

    .line 160
    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Ljava/lang/String;

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p1

    move-object v4, v11

    .line 161
    invoke-direct/range {v1 .. v6}, Lcom/ut/mini/UTHybridHelper;->getUTPageStateObjectSpmMap(Ljava/lang/Object;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 164
    invoke-interface {v14, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 169
    :cond_4
    new-instance v1, Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v10, v1

    move-object v4, v12

    move v12, v15

    move-object v5, v14

    move-object v14, v2

    move v2, v15

    move-object v15, v3

    move-object/from16 v16, v5

    invoke-direct/range {v10 .. v16}, Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const/4 v3, 0x0

    .line 176
    :try_start_0
    invoke-static {}, Lcom/alibaba/analytics/core/config/UTTPKBiz;->getInstance()Lcom/alibaba/analytics/core/config/UTTPKBiz;

    move-result-object v5

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v5, v0, v3}, Lcom/alibaba/analytics/core/config/UTTPKBiz;->getTpkString(Landroid/net/Uri;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 178
    invoke-static {v0}, Lcom/alibaba/analytics/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "_tpk"

    .line 179
    invoke-virtual {v1, v4, v0}, Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/ut/mini/UTHitBuilders$UTHitBuilder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 182
    new-array v4, v9, [Ljava/lang/Object;

    invoke-static {v3, v0, v4}, Lcom/alibaba/analytics/utils/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 188
    :cond_5
    :goto_1
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ut/mini/UTAnalytics;->getDefaultTracker()Lcom/ut/mini/UTTracker;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 190
    invoke-virtual {v1}, Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;->build()Ljava/util/Map;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/ut/mini/UTPvidHelper;->processH5PagePvid(ILjava/util/Map;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ut/mini/UTTracker;->send(Ljava/util/Map;)V

    goto :goto_2

    .line 192
    :cond_6
    new-array v0, v8, [Ljava/lang/Object;

    const-string v1, "Fatal Error,must call setRequestAuthentication method first."

    aput-object v1, v0, v9

    const-string v1, "h5Page event error"

    invoke-static {v1, v0}, Lcom/alibaba/analytics/utils/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 195
    :goto_2
    invoke-static {}, Lcom/ut/mini/UTPageHitHelper;->getInstance()Lcom/ut/mini/UTPageHitHelper;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/ut/mini/UTPageHitHelper;->setH5Called(Ljava/lang/Object;)V

    return-void

    .line 139
    :cond_7
    :goto_3
    new-array v0, v8, [Ljava/lang/Object;

    const-string v2, "pageName is null,return"

    aput-object v2, v0, v9

    invoke-static {v1, v0}, Lcom/alibaba/analytics/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 132
    :cond_8
    :goto_4
    new-array v0, v8, [Ljava/lang/Object;

    const-string v2, "dataMap is null or empty,return"

    aput-object v2, v0, v9

    invoke-static {v1, v0}, Lcom/alibaba/analytics/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private h5PageParseArgsWithAplus(Ljava/util/Map;)Ljava/util/Map;
    .locals 8
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

    if-eqz p1, :cond_d

    .line 330
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 334
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "url"

    .line 335
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, ""

    if-nez v1, :cond_1

    move-object v3, v2

    goto :goto_0

    :cond_1
    move-object v3, v1

    :goto_0
    const-string v4, "_h5url"

    .line 337
    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_2

    const/16 v3, 0x3f

    .line 344
    :try_start_0
    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-lez v3, :cond_2

    const/4 v4, 0x0

    .line 346
    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 347
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/taobao/ju/track/JTrack$Page;->getArgsMap(Ljava/lang/String;Landroid/net/Uri;)Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 349
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    const-string v3, "1"

    const-string v4, "0.0.0.0"

    const-string/jumbo v5, "spm"

    if-eqz v1, :cond_6

    .line 361
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 362
    invoke-virtual {v1, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 363
    invoke-static {v6}, Lcom/alibaba/analytics/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 364
    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 366
    :cond_3
    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    const-string/jumbo v4, "scm"

    .line 369
    invoke-virtual {v1, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 370
    invoke-static {v5}, Lcom/alibaba/analytics/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 371
    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    const-string v4, "pg1stepk"

    .line 373
    invoke-virtual {v1, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 374
    invoke-static {v5}, Lcom/alibaba/analytics/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 375
    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    const-string v4, "point"

    .line 377
    invoke-virtual {v1, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 378
    invoke-static {v1}, Lcom/alibaba/analytics/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "issb"

    .line 379
    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 382
    :cond_6
    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    :goto_2
    const-string/jumbo v1, "spmcnt"

    .line 384
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_8

    move-object v1, v2

    :cond_8
    const-string v4, "_spmcnt"

    .line 385
    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "spmpre"

    .line 387
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_9

    move-object v1, v2

    :cond_9
    const-string v4, "_spmpre"

    .line 388
    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "lzsid"

    .line 390
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_a

    move-object v1, v2

    :cond_a
    const-string v4, "_lzsid"

    .line 391
    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "extendargs"

    .line 393
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_b

    move-object v1, v2

    :cond_b
    const-string v4, "_h5ea"

    .line 394
    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "cna"

    .line 396
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_c

    move-object p1, v2

    :cond_c
    const-string v1, "_cna"

    .line 397
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "_ish5"

    .line 399
    invoke-virtual {v0, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :cond_d
    :goto_3
    const/4 p1, 0x0

    return-object p1
.end method

.method private h5PageParseArgsWithOutAplus(Ljava/util/Map;)Ljava/util/Map;
    .locals 4
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

    if-eqz p1, :cond_3

    .line 405
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 409
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "url"

    .line 410
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, ""

    if-nez v1, :cond_1

    move-object v1, v2

    :cond_1
    const-string v3, "_h5url"

    .line 411
    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "extendargs"

    .line 413
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_2

    move-object p1, v2

    :cond_2
    const-string v1, "_h5ea"

    .line 414
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "_ish5"

    const-string v1, "1"

    .line 415
    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :cond_3
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public h5UT(Ljava/util/Map;Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x2

    .line 40
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "h5UT view"

    aput-object v2, v0, v1

    const/4 v2, 0x1

    aput-object p2, v0, v2

    const-string v3, "UTHybridHelper"

    invoke-static {v3, v0}, Lcom/alibaba/analytics/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "h5UT"

    if-eqz p1, :cond_4

    .line 41
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    const-string v3, "functype"

    .line 47
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-nez v4, :cond_1

    .line 50
    new-array p1, v2, [Ljava/lang/Object;

    const-string p2, "funcType is null"

    aput-object p2, p1, v1

    invoke-static {v0, p1}, Lcom/alibaba/analytics/utils/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    const-string/jumbo v5, "utjstype"

    .line 53
    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_2

    const-string v6, "0"

    .line 54
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 55
    new-array p1, v2, [Ljava/lang/Object;

    const-string/jumbo p2, "utjstype should be 1 or 0 or null"

    aput-object p2, p1, v1

    invoke-static {v0, p1}, Lcom/alibaba/analytics/utils/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 59
    :cond_2
    invoke-interface {p1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    const-string v1, "2001"

    .line 61
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 62
    invoke-direct {p0, v0, p1, p2}, Lcom/ut/mini/UTHybridHelper;->h5Page(Ljava/util/Date;Ljava/util/Map;Ljava/lang/Object;)V

    .line 63
    invoke-static {}, Lcom/ut/mini/internal/UTTeamWork;->getInstance()Lcom/ut/mini/internal/UTTeamWork;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Lcom/ut/mini/internal/UTTeamWork;->dispatchH5JSCall(Ljava/lang/Object;Ljava/util/Map;)V

    goto :goto_0

    .line 65
    :cond_3
    invoke-direct {p0, v4, v0, p1}, Lcom/ut/mini/UTHybridHelper;->h5Ctrl(Ljava/lang/String;Ljava/util/Date;Ljava/util/Map;)V

    :goto_0
    return-void

    .line 42
    :cond_4
    :goto_1
    new-array p1, v2, [Ljava/lang/Object;

    const-string p2, "dataMap is empty"

    aput-object p2, p1, v1

    invoke-static {v0, p1}, Lcom/alibaba/analytics/utils/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public h5UT2(Ljava/util/Map;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x2

    .line 70
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "h5UT2 view"

    aput-object v2, v0, v1

    const/4 v2, 0x1

    aput-object p2, v0, v2

    const-string v3, "UTHybridHelper"

    invoke-static {v3, v0}, Lcom/alibaba/analytics/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "h5UT"

    if-eqz p1, :cond_4

    .line 71
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    const-string v3, "functype"

    .line 77
    invoke-interface {p1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_1

    .line 80
    new-array p1, v2, [Ljava/lang/Object;

    const-string p2, "funcType is null"

    aput-object p2, p1, v1

    invoke-static {v0, p1}, Lcom/alibaba/analytics/utils/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    const-string v0, "page"

    .line 83
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "funcId"

    .line 84
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    invoke-direct {p0, p1, p2}, Lcom/ut/mini/UTHybridHelper;->h5Page2(Ljava/util/Map;Ljava/lang/Object;)V

    .line 86
    invoke-static {}, Lcom/ut/mini/internal/UTTeamWork;->getInstance()Lcom/ut/mini/internal/UTTeamWork;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Lcom/ut/mini/internal/UTTeamWork;->dispatchH5JSCall(Ljava/lang/Object;Ljava/util/Map;)V

    goto :goto_0

    :cond_2
    const-string p2, "ctrl"

    .line 87
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 88
    invoke-direct {p0, p1}, Lcom/ut/mini/UTHybridHelper;->h5Ctrl2(Ljava/util/Map;)V

    :cond_3
    :goto_0
    return-void

    .line 72
    :cond_4
    :goto_1
    new-array p1, v2, [Ljava/lang/Object;

    const-string p2, "dataMap is empty"

    aput-object p2, p1, v1

    invoke-static {v0, p1}, Lcom/alibaba/analytics/utils/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public setH5Url(Ljava/lang/String;)V
    .locals 1

    .line 36
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ut/mini/UTAnalytics;->getDefaultTracker()Lcom/ut/mini/UTTracker;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ut/mini/UTTracker;->setH5Url(Ljava/lang/String;)V

    return-void
.end method
