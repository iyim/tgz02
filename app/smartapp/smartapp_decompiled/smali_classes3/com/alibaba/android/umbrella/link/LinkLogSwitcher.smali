.class final Lcom/alibaba/android/umbrella/link/LinkLogSwitcher;
.super Ljava/lang/Object;
.source "LinkLogSwitcher.java"


# static fields
.field private static final GROUP_UMBRELLA_TRACE_2:Ljava/lang/String; = "umbrella_trace2"

.field private static final KEY_BIZ_TSCHEDULE:Ljava/lang/String; = "TSchedule"

.field private static final KEY_CF_DEFAULT_CONFIG:Ljava/lang/String; = "CF_ANY_ANY_ANY_ANY"

.field private static final KEY_CF_TEMPLATE_FULL:Ljava/lang/String; = "CF_%s_%s_%s_%s"

.field private static final KEY_CS_DEFAULT_CONFIG:Ljava/lang/String; = "CS_ANY_ANY_ANY"

.field private static final KEY_CS_TEMPLATE_FULL:Ljava/lang/String; = "CS_%s_%s_%s"

.field private static final KEY_DC_DEFAULT_CONFIG:Ljava/lang/String; = "DC_ANY_ANY_ANY"

.field private static final KEY_DC_TEMPLATE_FULL:Ljava/lang/String; = "DC_%s_%s_%s"

.field private static final KEY_ERROR_DEFAULT_CONFIG:Ljava/lang/String; = "F_ANY_ANY_ANY_ANY"

.field private static final KEY_ERROR_TEMPLATE:Ljava/lang/String; = "F_%s_%s_%s_%s"

.field private static final KEY_G_DEFAULT_CONFIG:Ljava/lang/String; = "G_ANY_ANY"

.field private static final KEY_G_TEMPLATE_FULL:Ljava/lang/String; = "G_%S_%S"

.field private static final KEY_INFO_DEFAULT_CONFIG:Ljava/lang/String; = "I_ANY_ANY_ANY"

.field private static final KEY_INFO_TEMPLATE:Ljava/lang/String; = "I_%s_%s_%s"

.field private static final KEY_MAX_LINK_COUNT:Ljava/lang/String; = "maxLinkCount"

.field private static final SAMPLING_GREATER_THAN_CONFIG:I = 0x1

.field private static final SAMPLING_LESS_THAN_CONFIG:I = 0x0

.field private static final SAMPLING_NOT_FOUND_CONFIG:I = 0x2

.field private static final V_CONST_ANY:Ljava/lang/String; = "ANY"

.field private static final V_LINK_CACHE_DEFAULT_MAX_SIZE:I = 0x12c

.field private static final V_LINK_CACHE_MIN_SIZE:I = 0x1e

.field private static final V_SAMPLING_COMMIT_POINT:D

.field private static final V_SAMPLING_LOG_POINT:D


# instance fields
.field private final configHelper:Lcom/alibaba/android/umbrella/link/util/UMConfigHelper;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Lcom/alibaba/android/umbrella/link/util/UMConfigHelper;

    const-string v1, "umbrella_trace2"

    invoke-direct {v0, v1}, Lcom/alibaba/android/umbrella/link/util/UMConfigHelper;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alibaba/android/umbrella/link/LinkLogSwitcher;->configHelper:Lcom/alibaba/android/umbrella/link/util/UMConfigHelper;

    return-void
.end method

.method private computeRandomResult(DLjava/lang/String;)I
    .locals 5

    .line 221
    iget-object v0, p0, Lcom/alibaba/android/umbrella/link/LinkLogSwitcher;->configHelper:Lcom/alibaba/android/umbrella/link/util/UMConfigHelper;

    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    invoke-virtual {v0, p3, v1, v2}, Lcom/alibaba/android/umbrella/link/util/UMConfigHelper;->getDouble(Ljava/lang/String;D)D

    move-result-wide v3

    cmpl-double p3, v3, v1

    if-nez p3, :cond_0

    const/4 p1, 0x2

    return p1

    :cond_0
    cmpl-double p3, p1, v3

    if-lez p3, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private static getValueOrAny(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 234
    invoke-static {p0}, Lcom/alibaba/android/umbrella/link/UMStringUtils;->isNotEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "ANY"

    :goto_0
    return-object p0
.end method

.method private varargs isRandomGreaterThanAnyConfig(DD[Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p5, :cond_2

    .line 199
    array-length v2, p5

    if-eqz v2, :cond_2

    .line 200
    array-length v2, p5

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, p5, v3

    .line 201
    invoke-direct {p0, p1, p2, v4}, Lcom/alibaba/android/umbrella/link/LinkLogSwitcher;->computeRandomResult(DLjava/lang/String;)I

    move-result v4

    const/4 v5, 0x2

    if-ne v5, v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    if-ne v1, v4, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    :cond_2
    cmpl-double p5, p1, p3

    if-lez p5, :cond_3

    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method private varargs matchAnyConfig(Z[Ljava/lang/String;)Z
    .locals 4

    if-eqz p2, :cond_2

    .line 180
    array-length v0, p2

    if-eqz v0, :cond_2

    .line 181
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p2, v1

    .line 182
    invoke-static {v2}, Lcom/alibaba/android/umbrella/link/UMStringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 185
    :cond_0
    iget-object v3, p0, Lcom/alibaba/android/umbrella/link/LinkLogSwitcher;->configHelper:Lcom/alibaba/android/umbrella/link/util/UMConfigHelper;

    invoke-virtual {v3, v2}, Lcom/alibaba/android/umbrella/link/util/UMConfigHelper;->getBool(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    if-nez v2, :cond_1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 189
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    :cond_2
    return p1
.end method


# virtual methods
.method getLinkCacheMaxSize()I
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/alibaba/android/umbrella/link/LinkLogSwitcher;->configHelper:Lcom/alibaba/android/umbrella/link/util/UMConfigHelper;

    const-string v1, "maxLinkCount"

    invoke-virtual {v0, v1}, Lcom/alibaba/android/umbrella/link/util/UMConfigHelper;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    const/16 v0, 0x12c

    return v0

    :cond_0
    const/16 v1, 0x1e

    .line 82
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method isNeedDoubleCheckCommit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    .line 167
    invoke-static {p2}, Lcom/alibaba/android/umbrella/link/LinkLogSwitcher;->getValueOrAny(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x3

    .line 170
    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v3, 0x1

    aput-object p2, v1, v3

    const/4 v4, 0x2

    aput-object p3, v1, v4

    const-string p3, "DC_%s_%s_%s"

    .line 171
    invoke-static {p3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 172
    new-array v5, v0, [Ljava/lang/Object;

    aput-object p1, v5, v2

    aput-object p2, v5, v3

    const-string p2, "ANY"

    aput-object p2, v5, v4

    .line 173
    invoke-static {p3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 174
    new-array v6, v0, [Ljava/lang/Object;

    aput-object p1, v6, v2

    aput-object p2, v6, v3

    aput-object p2, v6, v4

    .line 175
    invoke-static {p3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x4

    .line 176
    new-array p2, p2, [Ljava/lang/String;

    aput-object v1, p2, v2

    aput-object v5, p2, v3

    aput-object p1, p2, v4

    const-string p1, "DC_ANY_ANY_ANY"

    aput-object p1, p2, v0

    invoke-direct {p0, v2, p2}, Lcom/alibaba/android/umbrella/link/LinkLogSwitcher;->matchAnyConfig(Z[Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method isSkipAllPoint(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x2

    .line 89
    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v3, 0x1

    aput-object p2, v1, v3

    const-string p2, "G_%S_%S"

    invoke-static {p2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 90
    new-array v4, v0, [Ljava/lang/Object;

    aput-object p1, v4, v2

    const-string p1, "ANY"

    aput-object p1, v4, v3

    invoke-static {p2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x3

    .line 92
    new-array p2, p2, [Ljava/lang/String;

    aput-object v1, p2, v2

    aput-object p1, p2, v3

    const-string p1, "G_ANY_ANY"

    aput-object p1, p2, v0

    invoke-direct {p0, v2, p2}, Lcom/alibaba/android/umbrella/link/LinkLogSwitcher;->matchAnyConfig(Z[Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method isSkipCommit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 16

    move-object/from16 v0, p1

    .line 121
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    .line 122
    invoke-static/range {p2 .. p2}, Lcom/alibaba/android/umbrella/link/LinkLogSwitcher;->getValueOrAny(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 125
    invoke-static/range {p4 .. p4}, Lcom/alibaba/android/umbrella/link/UMStringUtils;->isNotEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x4

    const-string v6, "ANY"

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v4, :cond_0

    .line 127
    new-array v4, v5, [Ljava/lang/Object;

    aput-object v0, v4, v10

    aput-object v3, v4, v9

    aput-object p3, v4, v8

    aput-object p4, v4, v7

    const-string v11, "CF_%s_%s_%s_%s"

    .line 128
    invoke-static {v11, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 129
    new-array v12, v5, [Ljava/lang/Object;

    aput-object v0, v12, v10

    aput-object v3, v12, v9

    aput-object p3, v12, v8

    aput-object v6, v12, v7

    .line 130
    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 131
    new-array v13, v5, [Ljava/lang/Object;

    aput-object v0, v13, v10

    aput-object v3, v13, v9

    aput-object v6, v13, v8

    aput-object v6, v13, v7

    .line 132
    invoke-static {v11, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 135
    new-array v13, v5, [Ljava/lang/Object;

    aput-object v0, v13, v10

    aput-object v6, v13, v9

    aput-object p3, v13, v8

    aput-object p4, v13, v7

    .line 136
    invoke-static {v11, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 138
    new-array v14, v5, [Ljava/lang/Object;

    aput-object v0, v14, v10

    aput-object v6, v14, v9

    aput-object v6, v14, v8

    aput-object v6, v14, v7

    .line 139
    invoke-static {v11, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v14, 0x0

    const/4 v6, 0x6

    .line 140
    new-array v6, v6, [Ljava/lang/String;

    aput-object v4, v6, v10

    aput-object v12, v6, v9

    aput-object v3, v6, v8

    aput-object v13, v6, v7

    aput-object v0, v6, v5

    const/4 v0, 0x5

    const-string v3, "CF_ANY_ANY_ANY_ANY"

    aput-object v3, v6, v0

    move-object/from16 v0, p0

    move-wide v3, v14

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/android/umbrella/link/LinkLogSwitcher;->isRandomGreaterThanAnyConfig(DD[Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_0
    const-string v4, "TSchedule"

    .line 145
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v11, "CS_ANY_ANY_ANY"

    const-string v12, "CS_%s_%s_%s"

    if-eqz v4, :cond_1

    .line 146
    new-array v4, v7, [Ljava/lang/Object;

    aput-object v0, v4, v10

    aput-object v3, v4, v9

    aput-object p3, v4, v8

    .line 147
    invoke-static {v12, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 148
    new-array v13, v7, [Ljava/lang/Object;

    aput-object v0, v13, v10

    aput-object v3, v13, v9

    aput-object v6, v13, v8

    .line 149
    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 150
    new-array v13, v7, [Ljava/lang/Object;

    aput-object v0, v13, v10

    aput-object v6, v13, v9

    aput-object v6, v13, v8

    .line 151
    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v12, 0x0

    .line 152
    new-array v5, v5, [Ljava/lang/String;

    aput-object v4, v5, v10

    aput-object v3, v5, v9

    aput-object v0, v5, v8

    aput-object v11, v5, v7

    move-object/from16 v0, p0

    move-wide v3, v12

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/android/umbrella/link/LinkLogSwitcher;->isRandomGreaterThanAnyConfig(DD[Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 157
    :cond_1
    new-array v4, v7, [Ljava/lang/Object;

    aput-object v0, v4, v10

    aput-object v3, v4, v9

    aput-object p3, v4, v8

    invoke-static {v12, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v3, 0x0

    .line 158
    new-array v5, v8, [Ljava/lang/String;

    aput-object v0, v5, v10

    aput-object v11, v5, v9

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/android/umbrella/link/LinkLogSwitcher;->isRandomGreaterThanAnyConfig(DD[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method isSkipLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10

    .line 99
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    .line 100
    invoke-static {p2}, Lcom/alibaba/android/umbrella/link/LinkLogSwitcher;->getValueOrAny(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 104
    invoke-static {p4}, Lcom/alibaba/android/umbrella/link/UMStringUtils;->isNotEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v3, "ANY"

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x3

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    .line 105
    new-array v8, v0, [Ljava/lang/Object;

    aput-object p1, v8, v6

    aput-object p2, v8, v5

    aput-object p3, v8, v4

    aput-object p4, v8, v7

    const-string p2, "F_%s_%s_%s_%s"

    invoke-static {p2, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 106
    new-array p4, v0, [Ljava/lang/Object;

    aput-object p1, p4, v6

    aput-object v3, p4, v5

    aput-object v3, p4, v4

    aput-object v3, p4, v7

    invoke-static {p2, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-wide/16 v8, 0x0

    .line 107
    new-array p2, v7, [Ljava/lang/String;

    aput-object p3, p2, v6

    aput-object p1, p2, v5

    const-string p1, "F_ANY_ANY_ANY_ANY"

    aput-object p1, p2, v4

    move-object v0, p0

    move-wide v3, v8

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/android/umbrella/link/LinkLogSwitcher;->isRandomGreaterThanAnyConfig(DD[Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 112
    :cond_0
    new-array p4, v7, [Ljava/lang/Object;

    aput-object p1, p4, v6

    aput-object p2, p4, v5

    aput-object p3, p4, v4

    const-string p2, "I_%s_%s_%s"

    invoke-static {p2, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 113
    new-array p4, v7, [Ljava/lang/Object;

    aput-object p1, p4, v6

    aput-object v3, p4, v5

    aput-object v3, p4, v4

    invoke-static {p2, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-wide/16 v8, 0x0

    .line 114
    new-array p2, v7, [Ljava/lang/String;

    aput-object p3, p2, v6

    aput-object p1, p2, v5

    const-string p1, "I_ANY_ANY_ANY"

    aput-object p1, p2, v4

    move-object v0, p0

    move-wide v3, v8

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/android/umbrella/link/LinkLogSwitcher;->isRandomGreaterThanAnyConfig(DD[Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
