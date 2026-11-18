.class public Lcom/alibaba/genie/shopping/timer/UpdateTimeStrategyHelper;
.super Ljava/lang/Object;
.source "UpdateTimeStrategyHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/genie/shopping/timer/UpdateTimeStrategyHelper$UpdateTimeInfo;
    }
.end annotation


# static fields
.field public static final BLANK:Ljava/lang/String; = " "

.field public static final HOUR_FACTOR:I = 0x989680

.field public static final MINUTE_FACTOR:I = 0x186a0

.field public static final SECOND_FACTOR:I = 0x3e8

.field public static final SHARP:Ljava/lang/String; = "#"

.field public static final UpdateOtherPush_TimeCfg:B = 0x2t

.field public static final Update_APP_TimeCfg:B = 0x1t


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static addTime(II)I
    .locals 7

    const v0, 0x989680

    .line 395
    div-int v1, p0, v0

    .line 396
    rem-int/2addr p0, v0

    const v2, 0x186a0

    .line 398
    div-int v3, p0, v2

    .line 399
    rem-int/2addr p0, v2

    .line 401
    div-int/lit16 v4, p0, 0x3e8

    .line 402
    rem-int/lit16 p0, p0, 0x3e8

    .line 404
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    const/16 v6, 0xb

    .line 405
    invoke-virtual {v5, v6, v1}, Ljava/util/Calendar;->set(II)V

    add-int/2addr v3, p1

    const/16 p1, 0xc

    .line 406
    invoke-virtual {v5, p1, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xd

    .line 407
    invoke-virtual {v5, v1, v4}, Ljava/util/Calendar;->set(II)V

    const/16 v3, 0xe

    .line 408
    invoke-virtual {v5, v3, p0}, Ljava/util/Calendar;->set(II)V

    .line 410
    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result p0

    mul-int p0, p0, v0

    invoke-virtual {v5, p1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    mul-int p1, p1, v2

    add-int/2addr p0, p1

    invoke-virtual {v5, v1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    mul-int/lit16 p1, p1, 0x3e8

    add-int/2addr p0, p1

    .line 411
    invoke-virtual {v5, v3}, Ljava/util/Calendar;->get(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static getClientRamdonTimsArray()[I
    .locals 6

    const/16 v0, 0x320

    const/16 v1, 0x44c

    .line 419
    invoke-static {v0, v1}, Lcom/alibaba/genie/shopping/timer/UpdateTimeStrategyHelper;->getRandomStartTime(II)I

    move-result v0

    const/16 v1, 0x4b0

    const/16 v2, 0x6a4

    .line 420
    invoke-static {v1, v2}, Lcom/alibaba/genie/shopping/timer/UpdateTimeStrategyHelper;->getRandomStartTime(II)I

    move-result v1

    const/16 v2, 0x76c

    const/16 v3, 0x8fc

    .line 421
    invoke-static {v2, v3}, Lcom/alibaba/genie/shopping/timer/UpdateTimeStrategyHelper;->getRandomStartTime(II)I

    move-result v2

    .line 423
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 424
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    const/16 v4, 0x1e

    .line 425
    invoke-static {v0, v4}, Lcom/alibaba/genie/shopping/timer/UpdateTimeStrategyHelper;->addTime(II)I

    move-result v0

    const v5, 0x7270e00

    if-ge v0, v5, :cond_0

    .line 426
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 429
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    const/16 v0, 0x3c

    .line 430
    invoke-static {v1, v0}, Lcom/alibaba/genie/shopping/timer/UpdateTimeStrategyHelper;->addTime(II)I

    move-result v1

    const v0, 0xb532b80

    if-ge v1, v0, :cond_1

    .line 431
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 434
    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 435
    :goto_2
    invoke-static {v2, v4}, Lcom/alibaba/genie/shopping/timer/UpdateTimeStrategyHelper;->addTime(II)I

    move-result v2

    const v1, 0xe4e1c00

    if-ge v2, v1, :cond_2

    if-le v2, v0, :cond_2

    .line 436
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 439
    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 440
    :goto_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 441
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    return-object v0
.end method

.method public static getClientTimeEdges()[I
    .locals 1

    const/4 v0, 0x3

    .line 452
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x32c
        0x4c3
        0x784
    .end array-data
.end method

.method public static getRandomStartTime(II)I
    .locals 14

    .line 372
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 373
    div-int/lit8 v1, p0, 0x64

    const/16 v2, 0xb

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 374
    rem-int/lit8 p0, p0, 0x64

    const/16 v1, 0xc

    invoke-virtual {v0, v1, p0}, Ljava/util/Calendar;->set(II)V

    const/16 p0, 0xd

    const/4 v3, 0x0

    .line 375
    invoke-virtual {v0, p0, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v4, 0xe

    .line 376
    invoke-virtual {v0, v4, v3}, Ljava/util/Calendar;->set(II)V

    .line 378
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 379
    div-int/lit8 v6, p1, 0x64

    invoke-virtual {v5, v2, v6}, Ljava/util/Calendar;->set(II)V

    .line 380
    rem-int/lit8 p1, p1, 0x64

    invoke-virtual {v5, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 381
    invoke-virtual {v5, p0, v3}, Ljava/util/Calendar;->set(II)V

    .line 382
    invoke-virtual {v5, v4, v3}, Ljava/util/Calendar;->set(II)V

    .line 384
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    long-to-double v6, v6

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v8

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v12

    sub-long/2addr v10, v12

    long-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v8, v8, v10

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v6, v8

    double-to-long v5, v6

    .line 386
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    .line 387
    invoke-virtual {p1, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 389
    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const v2, 0x989680

    mul-int v0, v0, v2

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const v2, 0x186a0

    mul-int v1, v1, v2

    add-int/2addr v0, v1

    invoke-virtual {p1, p0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    mul-int/lit16 p0, p0, 0x3e8

    add-int/2addr v0, p0

    .line 390
    invoke-virtual {p1, v4}, Ljava/util/Calendar;->get(I)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public static getTimeInMillions(I)Ljava/util/Calendar;
    .locals 5

    const v0, 0x989680

    .line 354
    div-int v1, p0, v0

    .line 355
    rem-int/2addr p0, v0

    const v0, 0x186a0

    .line 357
    div-int v2, p0, v0

    .line 358
    rem-int/2addr p0, v0

    .line 360
    div-int/lit16 v0, p0, 0x3e8

    .line 361
    rem-int/lit16 p0, p0, 0x3e8

    .line 363
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    const/16 v4, 0xb

    .line 364
    invoke-virtual {v3, v4, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xc

    .line 365
    invoke-virtual {v3, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xd

    .line 366
    invoke-virtual {v3, v1, v0}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xe

    .line 367
    invoke-virtual {v3, v0, p0}, Ljava/util/Calendar;->set(II)V

    return-object v3
.end method

.method public static getTimePointInInteger(J)I
    .locals 2

    .line 347
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 348
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 p0, 0xb

    .line 349
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    const p1, 0x989680

    mul-int p0, p0, p1

    const/16 p1, 0xc

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    const v1, 0x186a0

    mul-int p1, p1, v1

    add-int/2addr p0, p1

    const/16 p1, 0xd

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    mul-int/lit16 p1, p1, 0x3e8

    add-int/2addr p0, p1

    const/16 p1, 0xe

    .line 350
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method
