.class public Lc/b/a/b/n/c;
.super Lc/b/a/b/n/g;
.source ""


# static fields
.field public static e:[Ljava/lang/String; = null

.field public static f:[Ljava/lang/String; = null

.field public static g:I = 0x3

.field public static h:Landroid/os/Handler;


# instance fields
.field public d:Landroid/app/usage/NetworkStatsManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lc/b/a/b/n/c$a;

    invoke-direct {v0}, Lc/b/a/b/n/c$a;-><init>()V

    sput-object v0, Lc/b/a/b/n/c;->h:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Lc/b/a/b/h/i$a;)V
    .locals 1

    invoke-direct {p0, p1}, Lc/b/a/b/n/g;-><init>(Lc/b/a/b/h/i$a;)V

    iget-object p1, p0, Lc/b/a/b/n/g;->b:Landroid/content/Context;

    const-string v0, "netstats"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/usage/NetworkStatsManager;

    iput-object p1, p0, Lc/b/a/b/n/c;->d:Landroid/app/usage/NetworkStatsManager;

    return-void
.end method

.method public static synthetic b()V
    .locals 24

    const-string v0, " retransRate:"

    const-string v1, "NoValue"

    const-string v2, "0.00"

    .line 1
    invoke-static {}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->a()[Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xa

    const/4 v5, 0x2

    :try_start_0
    sget-object v8, Lc/b/a/b/n/c;->e:[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1a

    const-string v9, "NetworkUsageCollector"

    const/16 v10, 0xb

    if-eqz v8, :cond_1

    if-eqz v3, :cond_1

    :try_start_1
    aget-object v8, v3, v4

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    sget-object v11, Lc/b/a/b/n/c;->e:[Ljava/lang/String;

    aget-object v11, v11, v4

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1a

    sub-int/2addr v8, v11

    :try_start_2
    aget-object v11, v3, v10

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    sget-object v12, Lc/b/a/b/n/c;->e:[Ljava/lang/String;

    aget-object v12, v12, v10

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    sub-int/2addr v11, v12

    if-nez v8, :cond_0

    const/4 v12, 0x0

    goto :goto_0

    :cond_0
    mul-int/lit8 v12, v11, 0x64

    :try_start_3
    div-int/2addr v12, v8
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :goto_0
    :try_start_4
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "netStart[10]:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v14, Lc/b/a/b/n/c;->e:[Ljava/lang/String;

    aget-object v14, v14, v4

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " netStart[11]:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v14, Lc/b/a/b/n/c;->e:[Ljava/lang/String;

    aget-object v14, v14, v10

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v9, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "netEnd[10]:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v14, v3, v4

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " netEnd[11]:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v14, v3, v10

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :goto_1
    move/from16 v22, v11

    goto/16 :goto_15

    :goto_2
    move/from16 v22, v11

    goto/16 :goto_17

    :catch_0
    move-exception v0

    move/from16 v22, v11

    const/4 v6, 0x0

    goto/16 :goto_16

    :catch_1
    move-exception v0

    move/from16 v22, v11

    const/4 v6, 0x0

    goto/16 :goto_18

    :catch_2
    move-exception v0

    goto/16 :goto_19

    :catch_3
    move-exception v0

    goto/16 :goto_1b

    :cond_1
    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_3
    sget-object v0, Lc/b/a/b/n/c;->f:[Ljava/lang/String;

    const/16 v13, 0xe

    if-eqz v0, :cond_6

    if-eqz v3, :cond_6

    array-length v0, v3

    if-lt v0, v13, :cond_6

    aget-object v0, v3, v4

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sget-object v15, Lc/b/a/b/n/c;->f:[Ljava/lang/String;

    aget-object v15, v15, v4

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    sub-int/2addr v0, v15

    aget-object v15, v3, v10

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    sget-object v16, Lc/b/a/b/n/c;->f:[Ljava/lang/String;

    aget-object v16, v16, v10

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    sub-int v15, v15, v16

    const/16 v16, 0xd

    aget-object v17, v3, v16

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    sget-object v18, Lc/b/a/b/n/c;->f:[Ljava/lang/String;

    aget-object v18, v18, v16

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    sub-int v6, v17, v18

    const/high16 v17, 0x42c80000    # 100.0f

    if-eqz v0, :cond_3

    aget-object v18, v3, v4

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    if-nez v18, :cond_2

    goto/16 :goto_8

    :cond_2
    invoke-static {}, Ljava/text/NumberFormat;->getInstance()Ljava/text/NumberFormat;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    int-to-float v15, v15

    int-to-float v0, v0

    div-float/2addr v15, v0

    mul-float v15, v15, v17

    float-to-double v13, v15

    invoke-virtual {v7, v13, v14}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v13
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_19
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_18

    :try_start_5
    aget-object v14, v3, v10

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    int-to-float v14, v14

    aget-object v15, v3, v4

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    int-to-float v15, v15

    div-float/2addr v14, v15

    mul-float v14, v14, v17

    float-to-double v14, v14

    invoke-virtual {v7, v14, v15}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v14
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_b
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_a

    int-to-float v6, v6

    div-float/2addr v6, v0

    mul-float v6, v6, v17

    float-to-double v5, v6

    :try_start_6
    invoke-virtual {v7, v5, v6}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v5
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_9
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_8

    :try_start_7
    aget-object v0, v3, v16

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-float v0, v0

    aget-object v6, v3, v4

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    int-to-float v6, v6

    div-float/2addr v0, v6

    mul-float v0, v0, v17

    move/from16 v22, v11

    float-to-double v10, v0

    :try_start_8
    invoke-virtual {v7, v10, v11}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    move-object v7, v0

    goto :goto_9

    :catch_4
    move-exception v0

    goto :goto_4

    :catch_5
    move-exception v0

    goto :goto_5

    :catch_6
    move-exception v0

    move/from16 v22, v11

    goto :goto_4

    :catch_7
    move-exception v0

    move/from16 v22, v11

    goto :goto_5

    :catch_8
    move-exception v0

    move/from16 v22, v11

    const/4 v5, 0x0

    :goto_4
    const/4 v6, 0x0

    const/4 v7, 0x0

    goto/16 :goto_c

    :catch_9
    move-exception v0

    move/from16 v22, v11

    const/4 v5, 0x0

    :goto_5
    const/4 v6, 0x0

    const/4 v7, 0x0

    goto/16 :goto_d

    :catch_a
    move-exception v0

    move/from16 v22, v11

    goto :goto_6

    :catch_b
    move-exception v0

    move/from16 v22, v11

    goto :goto_7

    :goto_6
    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v14, 0x0

    goto/16 :goto_12

    :goto_7
    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v14, 0x0

    goto/16 :goto_14

    :cond_3
    :goto_8
    move/from16 v22, v11

    move-object v5, v2

    move-object v7, v5

    move-object v13, v7

    move-object v14, v13

    :goto_9
    :try_start_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "lastNet[10]:"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v10, Lc/b/a/b/n/c;->f:[Ljava/lang/String;

    aget-object v10, v10, v4

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " lastNet[11]:"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v10, Lc/b/a/b/n/c;->f:[Ljava/lang/String;

    const/16 v6, 0xb

    aget-object v6, v10, v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " lastNet[13]:"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lc/b/a/b/n/c;->f:[Ljava/lang/String;

    aget-object v6, v6, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "refRetransRate:"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " absRetransRate:"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "refOutRstsRate:"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " absOutRstsRate:"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x9

    aget-object v6, v3, v0

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    sget-object v10, Lc/b/a/b/n/c;->f:[Ljava/lang/String;

    aget-object v10, v10, v0

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sub-int/2addr v6, v0

    const/16 v0, 0xc

    aget-object v10, v3, v0

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    sget-object v11, Lc/b/a/b/n/c;->f:[Ljava/lang/String;

    aget-object v11, v11, v0

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    sub-int/2addr v10, v11

    if-eqz v6, :cond_5

    const/16 v11, 0x9

    aget-object v16, v3, v11

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    if-nez v11, :cond_4

    goto :goto_a

    :cond_4
    invoke-static {}, Ljava/text/NumberFormat;->getInstance()Ljava/text/NumberFormat;

    move-result-object v2

    const/4 v11, 0x2

    invoke-virtual {v2, v11}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    int-to-float v10, v10

    int-to-float v6, v6

    div-float/2addr v10, v6

    mul-float v10, v10, v17

    float-to-double v10, v10

    invoke-virtual {v2, v10, v11}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v6
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_11
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_10

    :try_start_a
    aget-object v10, v3, v0

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    int-to-float v10, v10

    const/16 v11, 0x9

    aget-object v16, v3, v11

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v10, v11

    mul-float v10, v10, v17

    float-to-double v10, v10

    invoke-virtual {v2, v10, v11}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v2
    :try_end_a
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_a} :catch_d
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_c

    move-object/from16 v23, v6

    move-object v6, v2

    move-object/from16 v2, v23

    goto :goto_b

    :catch_c
    move-exception v0

    goto :goto_c

    :catch_d
    move-exception v0

    goto :goto_d

    :cond_5
    :goto_a
    move-object v6, v2

    :goto_b
    :try_start_b
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "lastNet[9]:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v11, Lc/b/a/b/n/c;->f:[Ljava/lang/String;

    const/16 v16, 0x9

    aget-object v11, v11, v16

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " lastNet[12]:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v11, Lc/b/a/b/n/c;->f:[Ljava/lang/String;

    aget-object v0, v11, v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "refInErrsRate:"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " absInerrsRate:"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_b} :catch_f
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_e

    move-object v9, v7

    move-object v7, v13

    goto :goto_e

    :catch_e
    move-exception v0

    goto :goto_11

    :catch_f
    move-exception v0

    goto/16 :goto_13

    :catch_10
    move-exception v0

    const/4 v6, 0x0

    :goto_c
    move-object v1, v7

    move-object v7, v6

    const/4 v6, 0x0

    goto :goto_12

    :catch_11
    move-exception v0

    const/4 v6, 0x0

    :goto_d
    move-object v1, v7

    move-object v7, v6

    const/4 v6, 0x0

    goto :goto_14

    :cond_6
    move/from16 v22, v11

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v14, 0x0

    :goto_e
    if-eqz v3, :cond_7

    :try_start_c
    array-length v0, v3

    const/16 v10, 0xe

    if-lt v0, v10, :cond_7

    const/4 v0, 0x6

    aget-object v1, v3, v0
    :try_end_c
    .catch Ljava/lang/NumberFormatException; {:try_start_c .. :try_end_c} :catch_17
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_16

    const/16 v0, 0x9

    :try_start_d
    aget-object v10, v3, v0
    :try_end_d
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_d} :catch_15
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_14

    :try_start_e
    aget-object v0, v3, v4
    :try_end_e
    .catch Ljava/lang/NumberFormatException; {:try_start_e .. :try_end_e} :catch_13
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_12

    move-object/from16 v23, v10

    move-object v10, v1

    move-object/from16 v1, v23

    goto/16 :goto_1e

    :catch_12
    move-exception v0

    goto :goto_f

    :catch_13
    move-exception v0

    goto :goto_10

    :catch_14
    move-exception v0

    const/4 v10, 0x0

    :goto_f
    move-object v13, v7

    move-object v7, v1

    move-object v1, v9

    goto :goto_1a

    :catch_15
    move-exception v0

    const/4 v10, 0x0

    :goto_10
    move-object v13, v7

    move-object v7, v1

    move-object v1, v9

    goto/16 :goto_1c

    :catch_16
    move-exception v0

    move-object v13, v7

    move-object v7, v9

    :goto_11
    move-object v1, v7

    move-object v7, v2

    :goto_12
    move-object v2, v7

    const/4 v7, 0x0

    const/4 v10, 0x0

    goto :goto_1a

    :catch_17
    move-exception v0

    move-object v13, v7

    move-object v7, v9

    :goto_13
    move-object v1, v7

    move-object v7, v2

    :goto_14
    move-object v2, v7

    const/4 v7, 0x0

    const/4 v10, 0x0

    goto :goto_1c

    :cond_7
    move-object v0, v1

    move-object v10, v0

    goto :goto_1e

    :catch_18
    move-exception v0

    goto/16 :goto_1

    :goto_15
    move v6, v12

    :goto_16
    move v12, v6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    goto :goto_1a

    :catch_19
    move-exception v0

    goto/16 :goto_2

    :goto_17
    move v6, v12

    :goto_18
    move v12, v6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    goto :goto_1c

    :catch_1a
    move-exception v0

    const/4 v8, 0x0

    :goto_19
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v22, 0x0

    :goto_1a
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1d

    :catch_1b
    move-exception v0

    const/4 v8, 0x0

    :goto_1b
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v22, 0x0

    :goto_1c
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    :goto_1d
    move-object v9, v1

    move-object v1, v10

    move/from16 v11, v22

    move-object v10, v7

    move-object v7, v13

    move/from16 v22, v11

    const/4 v0, 0x0

    .line 2
    :goto_1e
    sget-object v11, Lc/b/a/b/o/g;->H:Landroid/content/Context;

    .line 3
    invoke-static {v11}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->b(Landroid/content/Context;)I

    move-result v11

    invoke-static {v11}, Lc/b/a/b/h/u;->a(I)V

    .line 4
    sget-object v13, Lc/b/a/b/o/g;->H:Landroid/content/Context;

    const-string v15, "wifi"

    .line 5
    invoke-virtual {v13, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/net/wifi/WifiManager;

    if-nez v13, :cond_8

    const/16 v18, 0x0

    goto :goto_1f

    :cond_8
    invoke-virtual {v13}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v13

    move-object/from16 v18, v13

    .line 6
    :goto_1f
    sget-object v13, Lc/b/a/b/o/g;->H:Landroid/content/Context;

    .line 7
    invoke-virtual {v13, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/net/wifi/WifiManager;

    const/4 v15, -0x1

    if-eqz v13, :cond_9

    invoke-virtual {v13}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v13

    if-eqz v13, :cond_9

    invoke-virtual {v13}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v13

    goto :goto_20

    :cond_9
    move v13, v15

    :goto_20
    if-eqz v18, :cond_c

    .line 8
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v17

    if-lez v17, :cond_c

    if-eq v13, v15, :cond_c

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    const/16 v17, 0x0

    const/16 v19, 0x0

    :goto_21
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_d

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v4, v18

    check-cast v4, Landroid/net/wifi/ScanResult;

    move-object/from16 v18, v15

    iget v15, v4, Landroid/net/wifi/ScanResult;->frequency:I

    if-ne v15, v13, :cond_a

    add-int/lit8 v19, v19, 0x1

    :cond_a
    iget v4, v4, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-static {v13, v4}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->d(II)Z

    move-result v4

    if-eqz v4, :cond_b

    add-int/lit8 v17, v17, 0x1

    :cond_b
    move-object/from16 v15, v18

    const/16 v4, 0xa

    goto :goto_21

    :cond_c
    const/16 v17, 0x0

    const/16 v19, 0x0

    .line 9
    :cond_d
    sget-object v4, Lc/b/a/b/o/g;->H:Landroid/content/Context;

    .line 10
    invoke-static {v4}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->a(Landroid/content/Context;)I

    move-result v4

    .line 11
    sget-object v13, Lc/b/a/b/o/g;->H:Landroid/content/Context;

    .line 12
    invoke-static {v13}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->f(Landroid/content/Context;)Z

    move-result v13

    const-string v15, "bad"

    move-object/from16 v18, v3

    if-eqz v4, :cond_11

    const/4 v3, 0x1

    if-eq v4, v3, :cond_11

    if-eqz v13, :cond_11

    const/16 v3, 0xa

    if-lt v12, v3, :cond_e

    goto :goto_23

    :cond_e
    const/4 v3, 0x3

    if-eq v4, v3, :cond_f

    const/4 v3, 0x4

    if-ne v4, v3, :cond_10

    :cond_f
    if-eqz v13, :cond_10

    const/4 v3, 0x2

    if-gt v12, v3, :cond_10

    const-string v3, "good"

    goto :goto_22

    :cond_10
    const-string v3, "normal"

    :goto_22
    move-object/from16 v16, v6

    goto :goto_24

    :cond_11
    :goto_23
    move-object/from16 v16, v6

    move-object v3, v15

    :goto_24
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v20, v2

    const-string v2, "NetStats:"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lc/b/a/b/o/i;->a(Ljava/lang/String;)V

    new-instance v2, Lc/b/a/b/k/b;

    invoke-direct {v2}, Lc/b/a/b/k/b;-><init>()V

    const-string v6, "event_type"

    move-object/from16 v21, v9

    const-string v9, "network"

    invoke-virtual {v2, v6, v9}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    const-string v6, "condition"

    const-string v9, "event_name"

    invoke-virtual {v2, v9, v6}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    invoke-virtual {v2, v6, v3}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    const v3, 0x18e73

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v6, "errorCode"

    invoke-virtual {v2, v6, v3}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/Integer;)Lc/b/a/b/k/b;

    :cond_12
    invoke-static {v13}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    const-string v6, "connected"

    invoke-virtual {v2, v6, v3}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v6, "rssi"

    invoke-virtual {v2, v6, v3}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/Integer;)Lc/b/a/b/k/b;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "signal_strength"

    invoke-virtual {v2, v4, v3}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/Integer;)Lc/b/a/b/k/b;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "tcp_outSegs"

    invoke-virtual {v2, v4, v3}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/Integer;)Lc/b/a/b/k/b;

    const-string v3, "attempFails"

    invoke-virtual {v2, v3, v10}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    const-string v3, "absTcpInSegs"

    invoke-virtual {v2, v3, v1}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    const-string v1, "absTcpOutSegs"

    invoke-virtual {v2, v1, v0}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "tcp_retransSegs"

    invoke-virtual {v2, v1, v0}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/Integer;)Lc/b/a/b/k/b;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "retrans_rate_percent"

    invoke-virtual {v2, v1, v0}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/Integer;)Lc/b/a/b/k/b;

    const-string v0, "ref_retrans_rate"

    invoke-virtual {v2, v0, v7}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    const-string v0, "abs_retrans_rate"

    invoke-virtual {v2, v0, v14}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    const-string v0, "ref_outRsts_rate"

    invoke-virtual {v2, v0, v5}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    const-string v0, "abs_outRsts_rate"

    move-object/from16 v9, v21

    invoke-virtual {v2, v0, v9}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    const-string v0, "ref_inErrs_rate"

    move-object/from16 v1, v20

    invoke-virtual {v2, v0, v1}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    const-string v0, "abs_inErrs_rate"

    move-object/from16 v6, v16

    invoke-virtual {v2, v0, v6}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    if-lez v17, :cond_13

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "scan_result_size"

    invoke-virtual {v2, v1, v0}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/Integer;)Lc/b/a/b/k/b;

    :cond_13
    if-lez v19, :cond_14

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "freq_match_num"

    invoke-virtual {v2, v1, v0}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/Integer;)Lc/b/a/b/k/b;

    :cond_14
    invoke-static {v2}, Lc/b/a/b/o/d;->a(Lc/b/a/b/k/b;)V

    sput-object v18, Lc/b/a/b/n/c;->e:[Ljava/lang/String;

    sput-object v18, Lc/b/a/b/n/c;->f:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;Lc/b/a/b/k/b;)J
    .locals 12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x3

    const/4 v5, 0x1

    const/4 v6, 0x2

    const/4 v7, -0x1

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v3, "yesterday_"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v5

    goto :goto_1

    :sswitch_1
    const-string v3, "today_"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    goto :goto_1

    :sswitch_2
    const-string v3, "sevendays_"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v6

    goto :goto_1

    :sswitch_3
    const-string v3, "thirtydays_"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v4

    goto :goto_1

    :cond_0
    :goto_0
    move v3, v7

    :goto_1
    if-eqz v3, :cond_4

    const/4 v8, 0x5

    if-eq v3, v5, :cond_3

    if-eq v3, v6, :cond_2

    if-eq v3, v4, :cond_1

    const-wide/16 v2, 0x0

    goto :goto_3

    :cond_1
    invoke-virtual {v2, v6, v7}, Ljava/util/Calendar;->add(II)V

    goto :goto_2

    :cond_2
    const/4 v3, -0x7

    invoke-virtual {v2, v8, v3}, Ljava/util/Calendar;->add(II)V

    :goto_2
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lc/b/a/b/o/o;->a(J)J

    move-result-wide v2

    goto :goto_3

    :cond_3
    invoke-virtual {v2, v8, v7}, Ljava/util/Calendar;->add(II)V

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {v0, v1}, Lc/b/a/b/o/o;->a(J)J

    move-result-wide v0

    goto :goto_3

    :cond_4
    invoke-static {v0, v1}, Lc/b/a/b/o/o;->a(J)J

    move-result-wide v2

    :goto_3
    move-wide v9, v0

    move-wide v7, v2

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v4, p0, Lc/b/a/b/n/c;->d:Landroid/app/usage/NetworkStatsManager;

    const/4 v5, 0x1

    const-string v6, ""

    move v11, p1

    invoke-virtual/range {v4 .. v11}, Landroid/app/usage/NetworkStatsManager;->queryDetailsForUid(ILjava/lang/String;JJI)Landroid/app/usage/NetworkStats;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    new-instance p1, Landroid/app/usage/NetworkStats$Bucket;

    invoke-direct {p1}, Landroid/app/usage/NetworkStats$Bucket;-><init>()V

    invoke-virtual {p1}, Landroid/app/usage/NetworkStats$Bucket;->getRxBytes()J

    move-result-wide v1

    invoke-virtual {p1}, Landroid/app/usage/NetworkStats$Bucket;->getTxBytes()J

    move-result-wide v3

    :goto_4
    invoke-virtual {v0}, Landroid/app/usage/NetworkStats;->hasNextBucket()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v0, p1}, Landroid/app/usage/NetworkStats;->getNextBucket(Landroid/app/usage/NetworkStats$Bucket;)Z

    invoke-virtual {p1}, Landroid/app/usage/NetworkStats$Bucket;->getRxBytes()J

    move-result-wide v5

    add-long/2addr v1, v5

    invoke-virtual {p1}, Landroid/app/usage/NetworkStats$Bucket;->getTxBytes()J

    move-result-wide v5

    add-long/2addr v3, v5

    goto :goto_4

    :cond_5
    invoke-virtual {v0}, Landroid/app/usage/NetworkStats;->close()V

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "rx_kb"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-wide/16 v5, 0x400

    div-long v7, v1, v5

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p3, p1, v0}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/Long;)Lc/b/a/b/k/b;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "tx_kb"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    div-long v7, v3, v5

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p3, p1, v0}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/Long;)Lc/b/a/b/k/b;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "total_kb"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    add-long v7, v3, v1

    div-long/2addr v7, v5

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/Long;)Lc/b/a/b/k/b;

    add-long/2addr v3, v1

    div-long/2addr v3, v5

    return-wide v3

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6bb531ba -> :sswitch_3
        -0x41fe2505 -> :sswitch_2
        -0x33c2b6c2 -> :sswitch_1
        0x4aff231d -> :sswitch_0
    .end sparse-switch
.end method

.method public a()V
    .locals 4

    .line 4
    iget-object v0, p0, Lc/b/a/b/n/g;->b:Landroid/content/Context;

    invoke-static {v0}, Lc/b/a/b/o/l;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/16 v2, 0x3e8

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    iget-object v3, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v3, v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-nez v2, :cond_0

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v3, v1}, Lc/b/a/b/n/c;->a(ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "system"

    invoke-virtual {p0, v2, v0}, Lc/b/a/b/n/c;->a(ILjava/lang/String;)V

    return-void
.end method

.method public final a(ILjava/lang/String;)V
    .locals 7

    const-string v0, "event_type"

    const-string v1, "network"

    const-string v2, "event_name"

    const-string v3, "network_stats"

    invoke-static {v0, v1, v2, v3}, Lc/c/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "uid"

    invoke-virtual {v0, v2, v1}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/Integer;)Lc/b/a/b/k/b;

    const-string v1, "system"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "package_name"

    const-string v4, "app_name"

    if-eqz v2, :cond_0

    const-string p2, "\u7cfb\u7edf"

    invoke-virtual {v0, v4, p2}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    invoke-virtual {v0, v3, v1}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lc/b/a/b/o/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    invoke-virtual {v0, v3, p2}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    invoke-static {p2}, Lc/b/a/b/o/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "app_version"

    invoke-virtual {v0, v1, p2}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    :goto_0
    const-string p2, "today_"

    invoke-virtual {p0, p1, p2, v0}, Lc/b/a/b/n/c;->a(ILjava/lang/String;Lc/b/a/b/k/b;)J

    move-result-wide v1

    const-string p2, "yesterday_"

    invoke-virtual {p0, p1, p2, v0}, Lc/b/a/b/n/c;->a(ILjava/lang/String;Lc/b/a/b/k/b;)J

    move-result-wide v3

    const-string p2, "sevendays_"

    invoke-virtual {p0, p1, p2, v0}, Lc/b/a/b/n/c;->a(ILjava/lang/String;Lc/b/a/b/k/b;)J

    move-result-wide v5

    const-string p2, "thirtydays_"

    invoke-virtual {p0, p1, p2, v0}, Lc/b/a/b/n/c;->a(ILjava/lang/String;Lc/b/a/b/k/b;)J

    const-wide/16 p1, 0x3e8

    cmp-long p1, v5, p1

    if-ltz p1, :cond_2

    const-wide/16 p1, 0x64

    cmp-long v1, v1, p1

    if-gez v1, :cond_1

    cmp-long p1, v3, p1

    if-gez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v0}, Lc/b/a/b/o/d;->a(Lc/b/a/b/k/b;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public a(Lc/b/a/b/o/j;)V
    .locals 3

    .line 3
    sget p1, Lc/b/a/b/n/c;->g:I

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lc/b/a/b/n/c;->h:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sget-object v2, Lc/b/a/b/n/c;->h:Landroid/os/Handler;

    invoke-virtual {v2, p1, v0, v1}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    :goto_0
    return-void
.end method
