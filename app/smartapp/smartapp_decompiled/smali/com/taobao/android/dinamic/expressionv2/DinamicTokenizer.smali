.class public Lcom/taobao/android/dinamic/expressionv2/DinamicTokenizer;
.super Ljava/lang/Object;
.source "DinamicTokenizer.java"


# static fields
.field public static final MAX_CONST_LEN:I = 0xff

.field public static final MAX_MTHNAME_LEN:I = 0xff

.field public static final MAX_VARNAME_LEN:I = 0xff

.field public static final TokenCMA:C = ','

.field public static final TokenDLR:C = '@'

.field public static final TokenESC:C = '\\'

.field public static final TokenLBR:C = '{'

.field public static final TokenLPR:C = '('

.field public static final TokenRBR:C = '}'

.field public static final TokenRPR:C = ')'

.field public static final TokenSEM:C = ';'

.field public static final TokenSQ:C = '\''

.field public static final kNumTokens:I = 0xe

.field public static method_name_map:[C

.field public static state_transition_map:[[Z

.field public static var_name_map:[C


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0xf

    .line 20
    new-array v1, v0, [[Z

    new-array v2, v0, [Z

    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-array v2, v0, [Z

    fill-array-data v2, :array_1

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-array v2, v0, [Z

    fill-array-data v2, :array_2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    new-array v2, v0, [Z

    fill-array-data v2, :array_3

    const/4 v3, 0x3

    aput-object v2, v1, v3

    new-array v2, v0, [Z

    fill-array-data v2, :array_4

    const/4 v3, 0x4

    aput-object v2, v1, v3

    new-array v2, v0, [Z

    fill-array-data v2, :array_5

    const/4 v3, 0x5

    aput-object v2, v1, v3

    new-array v2, v0, [Z

    fill-array-data v2, :array_6

    const/4 v3, 0x6

    aput-object v2, v1, v3

    new-array v2, v0, [Z

    fill-array-data v2, :array_7

    const/4 v3, 0x7

    aput-object v2, v1, v3

    new-array v2, v0, [Z

    fill-array-data v2, :array_8

    const/16 v3, 0x8

    aput-object v2, v1, v3

    new-array v2, v0, [Z

    fill-array-data v2, :array_9

    const/16 v3, 0x9

    aput-object v2, v1, v3

    new-array v2, v0, [Z

    fill-array-data v2, :array_a

    const/16 v3, 0xa

    aput-object v2, v1, v3

    new-array v2, v0, [Z

    fill-array-data v2, :array_b

    const/16 v3, 0xb

    aput-object v2, v1, v3

    new-array v2, v0, [Z

    fill-array-data v2, :array_c

    const/16 v3, 0xc

    aput-object v2, v1, v3

    new-array v2, v0, [Z

    fill-array-data v2, :array_d

    const/16 v3, 0xd

    aput-object v2, v1, v3

    new-array v0, v0, [Z

    fill-array-data v0, :array_e

    const/16 v2, 0xe

    aput-object v0, v1, v2

    sput-object v1, Lcom/taobao/android/dinamic/expressionv2/DinamicTokenizer;->state_transition_map:[[Z

    const/16 v0, 0x100

    .line 40
    new-array v1, v0, [C

    fill-array-data v1, :array_f

    sput-object v1, Lcom/taobao/android/dinamic/expressionv2/DinamicTokenizer;->method_name_map:[C

    .line 52
    new-array v0, v0, [C

    fill-array-data v0, :array_10

    sput-object v0, Lcom/taobao/android/dinamic/expressionv2/DinamicTokenizer;->var_name_map:[C

    return-void

    :array_0
    .array-data 1
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data

    :array_1
    .array-data 1
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data

    :array_2
    .array-data 1
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data

    :array_3
    .array-data 1
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
    .end array-data

    :array_4
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data

    :array_5
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x1t
        0x1t
    .end array-data

    :array_6
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data

    :array_7
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data

    :array_8
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
    .end array-data

    :array_9
    .array-data 1
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
    .end array-data

    :array_a
    .array-data 1
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data

    :array_b
    .array-data 1
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data

    :array_c
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
    .end array-data

    :array_d
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_e
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data

    :array_f
    .array-data 2
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x1s
        0x0s
        0x0s
        0x1s
        0x1s
        0x1s
        0x1s
        0x1s
        0x1s
        0x1s
        0x1s
        0x1s
        0x1s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x1s
        0x1s
        0x1s
        0x1s
        0x1s
        0x1s
        0x1s
        0x1s
        0x1s
        0x1s
        0x1s
        0x1s
        0x1s
        0x1s
        0x1s
        0x1s
        0x1s
        0x1s
        0x1s
        0x1s
        0x1s
        0x1s
        0x1s
        0x1s
        0x1s
        0x1s
        0x0s
        0x0s
        0x0s
        0x0s
        0x1s
        0x0s
        0x1s
        0x1s
        0x1s
        0x1s
        0x1s
        0x1s
        0x1s
        0x1s
        0x1s
        0x1s
        0x1s
        0x1s
        0x1s
        0x1s
        0x1s
        0x1s
        0x1s
        0x1s
        0x1s
        0x1s
        0x1s
        0x1s
        0x1s
        0x1s
        0x1s
        0x1s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
    .end array-data

    :array_10
    .array-data 2
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x1s
        0x1s
        0x0s
        0x1s
        0x1s
        0x1s
        0x1s
        0x1s
        0x1s
        0x1s
        0x1s
        0x1s
        0x1s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x1s
        0x1s
        0x1s
        0x1s
        0x1s
        0x1s
        0x1s
        0x1s
        0x1s
        0x1s
        0x1s
        0x1s
        0x1s
        0x1s
        0x1s
        0x1s
        0x1s
        0x1s
        0x1s
        0x1s
        0x1s
        0x1s
        0x1s
        0x1s
        0x1s
        0x1s
        0x1s
        0x0s
        0x1s
        0x0s
        0x1s
        0x0s
        0x1s
        0x1s
        0x1s
        0x1s
        0x1s
        0x1s
        0x1s
        0x1s
        0x1s
        0x1s
        0x1s
        0x1s
        0x1s
        0x1s
        0x1s
        0x1s
        0x1s
        0x1s
        0x1s
        0x1s
        0x1s
        0x1s
        0x1s
        0x1s
        0x1s
        0x1s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public tokensWithExpr(Ljava/lang/String;)Landroid/util/Pair;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/util/List;",
            "Ljava/util/List;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_1f

    .line 341
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_6

    .line 345
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 346
    array-length v2, v1

    const/4 v3, 0x0

    .line 347
    aget-char v4, v1, v3

    const/16 v5, 0x40

    if-eq v4, v5, :cond_1

    const/16 v5, 0x27

    if-eq v4, v5, :cond_1

    return-object v0

    .line 360
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 361
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 363
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 364
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 365
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 366
    new-instance v9, Ljava/util/Stack;

    invoke-direct {v9}, Ljava/util/Stack;-><init>()V

    move-object v13, v6

    move-object v14, v7

    move-object v15, v8

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/16 v16, 0x0

    :goto_0
    const/16 v0, 0xe

    if-ge v6, v2, :cond_18

    if-eq v7, v0, :cond_18

    const/16 v17, 0x5

    const/16 v18, 0x3

    const/16 v19, 0x2

    const/16 v20, 0x4

    const/16 v21, 0xc

    const/16 v22, 0xb

    if-eqz v8, :cond_2

    move-object/from16 v23, v1

    const/4 v0, 0x1

    const/4 v8, 0x0

    goto/16 :goto_3

    .line 376
    :cond_2
    aget-char v10, v1, v6

    if-eqz v11, :cond_4

    const/16 v3, 0x20

    if-ne v10, v3, :cond_4

    const/4 v3, 0x0

    :goto_1
    const/16 v0, 0x20

    if-ne v10, v0, :cond_3

    add-int/lit8 v6, v6, 0x1

    if-ge v6, v2, :cond_3

    add-int/lit8 v3, v3, 0x1

    .line 381
    aget-char v10, v1, v6

    goto :goto_1

    :cond_3
    if-lt v6, v2, :cond_5

    goto/16 :goto_4

    :cond_4
    const/4 v3, 0x0

    :cond_5
    const/16 v0, 0x2c

    move-object/from16 v23, v1

    const-string v1, " "

    if-eq v10, v0, :cond_15

    const/16 v0, 0x3b

    if-eq v10, v0, :cond_14

    const/16 v0, 0x40

    if-eq v10, v0, :cond_13

    const/16 v0, 0x5c

    if-eq v10, v0, :cond_11

    const/16 v0, 0x7b

    if-eq v10, v0, :cond_10

    const/16 v0, 0x7d

    if-eq v10, v0, :cond_d

    packed-switch v10, :pswitch_data_0

    .line 552
    sget-object v0, Lcom/taobao/android/dinamic/expressionv2/DinamicTokenizer;->state_transition_map:[[Z

    aget-object v0, v0, v7

    aget-boolean v0, v0, v19

    if-eqz v0, :cond_7

    sget-object v0, Lcom/taobao/android/dinamic/expressionv2/DinamicTokenizer;->method_name_map:[C

    aget-char v0, v0, v10

    if-eqz v0, :cond_7

    if-lez v3, :cond_6

    goto :goto_2

    .line 557
    :cond_6
    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    const/4 v7, 0x2

    goto/16 :goto_3

    .line 559
    :cond_7
    sget-object v0, Lcom/taobao/android/dinamic/expressionv2/DinamicTokenizer;->state_transition_map:[[Z

    aget-object v0, v0, v7

    aget-boolean v0, v0, v20

    if-eqz v0, :cond_9

    sget-object v0, Lcom/taobao/android/dinamic/expressionv2/DinamicTokenizer;->var_name_map:[C

    aget-char v0, v0, v10

    if-eqz v0, :cond_9

    if-lez v3, :cond_8

    goto :goto_2

    .line 565
    :cond_8
    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    const/4 v7, 0x4

    goto/16 :goto_3

    .line 567
    :cond_9
    sget-object v0, Lcom/taobao/android/dinamic/expressionv2/DinamicTokenizer;->state_transition_map:[[Z

    aget-object v0, v0, v7

    const/4 v1, 0x7

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_a

    .line 569
    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    const/4 v7, 0x7

    goto/16 :goto_3

    .line 537
    :pswitch_0
    sget-object v0, Lcom/taobao/android/dinamic/expressionv2/DinamicTokenizer;->state_transition_map:[[Z

    aget-object v0, v0, v7

    aget-boolean v0, v0, v21

    if-eqz v0, :cond_a

    .line 539
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 540
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, -0x1

    .line 542
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    const/16 v7, 0xc

    goto/16 :goto_3

    .line 522
    :pswitch_1
    sget-object v0, Lcom/taobao/android/dinamic/expressionv2/DinamicTokenizer;->state_transition_map:[[Z

    aget-object v0, v0, v7

    aget-boolean v0, v0, v22

    if-eqz v0, :cond_a

    .line 524
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 525
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x1

    .line 528
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    const/16 v7, 0xb

    goto/16 :goto_3

    :cond_a
    :goto_2
    const/4 v0, 0x1

    const/16 v7, 0xe

    goto/16 :goto_3

    .line 446
    :pswitch_2
    sget-object v0, Lcom/taobao/android/dinamic/expressionv2/DinamicTokenizer;->state_transition_map:[[Z

    aget-object v3, v0, v7

    const/4 v10, 0x6

    aget-boolean v3, v3, v10

    if-eqz v3, :cond_b

    .line 448
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 449
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "TokenizerState.kTokenizerStateConstBegin"

    .line 451
    invoke-static {v0}, Lcom/taobao/android/dinamic/log/DinamicLog;->print(Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v7, 0x6

    const/4 v11, 0x0

    goto/16 :goto_3

    .line 452
    :cond_b
    aget-object v0, v0, v7

    const/16 v3, 0x8

    aget-boolean v0, v0, v3

    if-eqz v0, :cond_a

    .line 455
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/16 v3, 0xff

    if-le v0, v3, :cond_c

    goto :goto_2

    :cond_c
    const/4 v0, 0x7

    .line 459
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 460
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 461
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TokenizerState.kTokenizerStateConstName"

    .line 463
    invoke-static {v3}, Lcom/taobao/android/dinamic/log/DinamicLog;->print(Ljava/lang/String;)V

    const/16 v3, 0x8

    const/16 v7, 0x8

    .line 470
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 471
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "TokenizerState.kTokenizerStateConstEnd"

    .line 472
    invoke-static {v1}, Lcom/taobao/android/dinamic/log/DinamicLog;->print(Ljava/lang/String;)V

    move-object v15, v0

    const/4 v0, 0x1

    const/16 v7, 0x8

    const/4 v11, 0x1

    goto/16 :goto_3

    .line 422
    :cond_d
    sget-object v0, Lcom/taobao/android/dinamic/expressionv2/DinamicTokenizer;->state_transition_map:[[Z

    aget-object v0, v0, v7

    aget-boolean v0, v0, v17

    if-eqz v0, :cond_a

    .line 424
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_f

    .line 425
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/16 v3, 0xff

    if-le v0, v3, :cond_e

    goto :goto_2

    .line 429
    :cond_e
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 430
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 431
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "TokenizerState.kTokenizerStateVarName"

    .line 432
    invoke-static {v0}, Lcom/taobao/android/dinamic/log/DinamicLog;->print(Ljava/lang/String;)V

    :cond_f
    add-int/lit8 v16, v16, -0x1

    .line 437
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 438
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "TokenizerState.kTokenizerStateMethodBodyEnd"

    .line 439
    invoke-static {v0}, Lcom/taobao/android/dinamic/log/DinamicLog;->print(Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v7, 0x5

    goto/16 :goto_3

    .line 398
    :cond_10
    sget-object v0, Lcom/taobao/android/dinamic/expressionv2/DinamicTokenizer;->state_transition_map:[[Z

    aget-object v0, v0, v7

    aget-boolean v0, v0, v18

    if-eqz v0, :cond_a

    .line 400
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_a

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/16 v3, 0xff

    if-gt v0, v3, :cond_a

    .line 402
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 403
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "TokenizerState.kTokenizerStateMethodName"

    .line 404
    invoke-static {v0}, Lcom/taobao/android/dinamic/log/DinamicLog;->print(Ljava/lang/String;)V

    .line 405
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v16, v16, 0x1

    .line 414
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 415
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "TokenizerState.kTokenizerStateMethodBodyBegin"

    .line 416
    invoke-static {v1}, Lcom/taobao/android/dinamic/log/DinamicLog;->print(Ljava/lang/String;)V

    move-object v13, v0

    const/4 v0, 0x1

    const/4 v7, 0x3

    goto/16 :goto_3

    :cond_11
    const/4 v0, 0x7

    if-eq v7, v0, :cond_12

    const/4 v0, 0x6

    if-ne v7, v0, :cond_a

    :cond_12
    const/4 v0, 0x1

    const/4 v8, 0x1

    goto/16 :goto_3

    .line 388
    :cond_13
    sget-object v0, Lcom/taobao/android/dinamic/expressionv2/DinamicTokenizer;->state_transition_map:[[Z

    aget-object v0, v0, v7

    const/4 v3, 0x1

    aget-boolean v0, v0, v3

    if-eqz v0, :cond_a

    .line 390
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 391
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "TokenizerState.kTokenizerStateMethodBegin"

    .line 392
    invoke-static {v0}, Lcom/taobao/android/dinamic/log/DinamicLog;->print(Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v7, 0x1

    goto :goto_3

    .line 503
    :cond_14
    sget-object v0, Lcom/taobao/android/dinamic/expressionv2/DinamicTokenizer;->state_transition_map:[[Z

    aget-object v0, v0, v7

    const/16 v3, 0xa

    aget-boolean v0, v0, v3

    if-eqz v0, :cond_a

    .line 505
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 506
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 507
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "TokenizerState.kTokenizerStateMethodSep"

    .line 508
    invoke-static {v0}, Lcom/taobao/android/dinamic/log/DinamicLog;->print(Ljava/lang/String;)V

    const/4 v0, 0x1

    const/16 v7, 0xa

    goto :goto_3

    .line 479
    :cond_15
    sget-object v0, Lcom/taobao/android/dinamic/expressionv2/DinamicTokenizer;->state_transition_map:[[Z

    aget-object v0, v0, v7

    const/16 v3, 0x9

    aget-boolean v0, v0, v3

    if-eqz v0, :cond_a

    .line 481
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_17

    .line 482
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/16 v3, 0xff

    if-le v0, v3, :cond_16

    goto/16 :goto_2

    .line 486
    :cond_16
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 487
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 488
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "TokenizerState.kTokenizerStateVarName"

    .line 489
    invoke-static {v0}, Lcom/taobao/android/dinamic/log/DinamicLog;->print(Ljava/lang/String;)V

    :cond_17
    const/16 v0, 0x9

    .line 494
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 495
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    const/16 v7, 0x9

    :goto_3
    add-int/2addr v6, v0

    move-object/from16 v1, v23

    const/4 v0, 0x0

    goto/16 :goto_0

    .line 579
    :cond_18
    :goto_4
    sget-object v0, Lcom/taobao/android/dinamic/expressionv2/DinamicTokenizer;->state_transition_map:[[Z

    aget-object v0, v0, v7

    const/16 v1, 0xd

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_19

    const/16 v7, 0xd

    :cond_19
    if-nez v16, :cond_1e

    if-eqz v12, :cond_1a

    goto :goto_5

    .line 590
    :cond_1a
    invoke-virtual {v9}, Ljava/util/Stack;->size()I

    move-result v0

    if-lez v0, :cond_1c

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-nez v0, :cond_1c

    .line 592
    :cond_1b
    invoke-virtual {v9}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 593
    invoke-virtual {v9}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1b

    const/4 v0, 0x0

    return-object v0

    :cond_1c
    const/4 v0, 0x0

    const/16 v1, 0xe

    if-eq v7, v1, :cond_1d

    .line 603
    invoke-static {v4, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    :cond_1d
    return-object v0

    :cond_1e
    :goto_5
    const/4 v0, 0x0

    :cond_1f
    :goto_6
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x27
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public tokensWithExpr2(Ljava/lang/String;)Landroid/util/Pair;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/util/List;",
            "Ljava/util/List;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_1b

    .line 77
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_4

    .line 81
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 82
    array-length v2, v1

    const/4 v3, 0x0

    .line 83
    aget-char v4, v1, v3

    const/16 v5, 0x40

    if-eq v4, v5, :cond_1

    const/16 v5, 0x27

    if-eq v4, v5, :cond_1

    return-object v0

    .line 95
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 96
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 98
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 99
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 100
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    .line 101
    new-instance v9, Ljava/util/Stack;

    invoke-direct {v9}, Ljava/util/Stack;-><init>()V

    move-object v13, v6

    move-object v12, v7

    move-object v14, v8

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_0
    const/16 v16, 0x1

    const/16 v3, 0xe

    if-ge v6, v2, :cond_14

    if-eq v7, v3, :cond_14

    const/16 v17, 0x5

    const/16 v18, 0x3

    const/16 v19, 0x2

    const/16 v20, 0x4

    const/16 v21, 0xc

    const/16 v22, 0xb

    if-eqz v10, :cond_2

    const/4 v10, 0x0

    goto/16 :goto_2

    .line 111
    :cond_2
    aget-char v15, v1, v6

    const/16 v0, 0x2c

    const-string v3, " "

    if-eq v15, v0, :cond_11

    const/16 v0, 0x3b

    if-eq v15, v0, :cond_10

    const/16 v0, 0x40

    if-eq v15, v0, :cond_f

    const/16 v0, 0x5c

    if-eq v15, v0, :cond_d

    const/16 v0, 0x7b

    if-eq v15, v0, :cond_c

    const/16 v0, 0x7d

    if-eq v15, v0, :cond_9

    packed-switch v15, :pswitch_data_0

    .line 289
    sget-object v0, Lcom/taobao/android/dinamic/expressionv2/DinamicTokenizer;->state_transition_map:[[Z

    aget-object v0, v0, v7

    aget-boolean v0, v0, v19

    if-eqz v0, :cond_3

    sget-object v0, Lcom/taobao/android/dinamic/expressionv2/DinamicTokenizer;->method_name_map:[C

    aget-char v0, v0, v15

    if-eqz v0, :cond_3

    .line 291
    invoke-virtual {v13, v15}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v7, 0x2

    goto/16 :goto_2

    .line 292
    :cond_3
    sget-object v0, Lcom/taobao/android/dinamic/expressionv2/DinamicTokenizer;->state_transition_map:[[Z

    aget-object v0, v0, v7

    aget-boolean v0, v0, v20

    if-eqz v0, :cond_4

    sget-object v0, Lcom/taobao/android/dinamic/expressionv2/DinamicTokenizer;->var_name_map:[C

    aget-char v0, v0, v15

    if-eqz v0, :cond_4

    .line 294
    invoke-virtual {v12, v15}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v7, 0x4

    goto/16 :goto_2

    .line 295
    :cond_4
    sget-object v0, Lcom/taobao/android/dinamic/expressionv2/DinamicTokenizer;->state_transition_map:[[Z

    aget-object v0, v0, v7

    const/4 v3, 0x7

    aget-boolean v0, v0, v3

    if-eqz v0, :cond_5

    .line 297
    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v7, 0x7

    goto/16 :goto_2

    .line 273
    :pswitch_0
    sget-object v0, Lcom/taobao/android/dinamic/expressionv2/DinamicTokenizer;->state_transition_map:[[Z

    aget-object v0, v0, v7

    aget-boolean v0, v0, v21

    if-eqz v0, :cond_5

    .line 275
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 276
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, -0x1

    .line 278
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v7, 0xc

    goto/16 :goto_2

    .line 258
    :pswitch_1
    sget-object v0, Lcom/taobao/android/dinamic/expressionv2/DinamicTokenizer;->state_transition_map:[[Z

    aget-object v0, v0, v7

    aget-boolean v0, v0, v22

    if-eqz v0, :cond_5

    .line 260
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 261
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    .line 264
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v7, 0xb

    goto/16 :goto_2

    :cond_5
    :goto_1
    const/16 v7, 0xe

    goto/16 :goto_2

    .line 179
    :pswitch_2
    sget-object v0, Lcom/taobao/android/dinamic/expressionv2/DinamicTokenizer;->state_transition_map:[[Z

    aget-object v15, v0, v7

    const/16 v16, 0x6

    aget-boolean v15, v15, v16

    if-eqz v15, :cond_6

    .line 183
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v7, 0x6

    goto/16 :goto_2

    .line 186
    :cond_6
    aget-object v0, v0, v7

    const/16 v7, 0x8

    aget-boolean v0, v0, v7

    if-eqz v0, :cond_5

    .line 188
    invoke-virtual {v14}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_8

    .line 189
    invoke-virtual {v14}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    const/16 v7, 0xff

    if-le v0, v7, :cond_7

    goto :goto_1

    :cond_7
    const/4 v0, 0x7

    .line 193
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    new-instance v14, Ljava/lang/StringBuffer;

    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V

    :cond_8
    const/16 v0, 0x8

    const/16 v7, 0x8

    .line 204
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v7, 0x8

    goto/16 :goto_2

    .line 154
    :cond_9
    sget-object v0, Lcom/taobao/android/dinamic/expressionv2/DinamicTokenizer;->state_transition_map:[[Z

    aget-object v0, v0, v7

    aget-boolean v0, v0, v17

    if-eqz v0, :cond_5

    .line 156
    invoke-virtual {v12}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_b

    .line 157
    invoke-virtual {v12}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    const/16 v7, 0xff

    if-le v0, v7, :cond_a

    goto :goto_1

    .line 161
    :cond_a
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    :cond_b
    add-int/lit8 v8, v8, -0x1

    .line 170
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v7, 0x5

    goto/16 :goto_2

    .line 128
    :cond_c
    sget-object v0, Lcom/taobao/android/dinamic/expressionv2/DinamicTokenizer;->state_transition_map:[[Z

    aget-object v0, v0, v7

    aget-boolean v0, v0, v18

    if-eqz v0, :cond_5

    .line 131
    invoke-virtual {v13}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_5

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    const/16 v7, 0xff

    if-gt v0, v7, :cond_5

    .line 133
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    add-int/lit8 v8, v8, 0x1

    .line 146
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v13, v0

    const/4 v7, 0x3

    goto/16 :goto_2

    :cond_d
    const/4 v0, 0x7

    if-eq v7, v0, :cond_e

    const/4 v0, 0x6

    if-ne v7, v0, :cond_5

    :cond_e
    const/4 v10, 0x1

    goto :goto_2

    .line 115
    :cond_f
    sget-object v0, Lcom/taobao/android/dinamic/expressionv2/DinamicTokenizer;->state_transition_map:[[Z

    aget-object v0, v0, v7

    aget-boolean v0, v0, v16

    if-eqz v0, :cond_5

    .line 118
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v7, 0x1

    goto :goto_2

    .line 238
    :cond_10
    sget-object v0, Lcom/taobao/android/dinamic/expressionv2/DinamicTokenizer;->state_transition_map:[[Z

    aget-object v0, v0, v7

    const/16 v7, 0xa

    aget-boolean v0, v0, v7

    if-eqz v0, :cond_5

    .line 241
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v7, 0xa

    goto :goto_2

    .line 214
    :cond_11
    sget-object v0, Lcom/taobao/android/dinamic/expressionv2/DinamicTokenizer;->state_transition_map:[[Z

    aget-object v0, v0, v7

    const/16 v7, 0x9

    aget-boolean v0, v0, v7

    if-eqz v0, :cond_5

    .line 216
    invoke-virtual {v12}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_13

    .line 217
    invoke-virtual {v12}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    const/16 v7, 0xff

    if-le v0, v7, :cond_12

    goto/16 :goto_1

    .line 221
    :cond_12
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    :cond_13
    const/16 v0, 0x9

    .line 229
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v7, 0x9

    :goto_2
    add-int/lit8 v6, v6, 0x1

    const/4 v0, 0x0

    const/4 v3, 0x0

    goto/16 :goto_0

    .line 307
    :cond_14
    sget-object v0, Lcom/taobao/android/dinamic/expressionv2/DinamicTokenizer;->state_transition_map:[[Z

    aget-object v0, v0, v7

    const/16 v1, 0xd

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_15

    const/16 v7, 0xd

    :cond_15
    if-nez v8, :cond_1a

    if-eqz v11, :cond_16

    goto :goto_3

    .line 318
    :cond_16
    invoke-virtual {v9}, Ljava/util/Stack;->size()I

    move-result v0

    if-lez v0, :cond_18

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_18

    .line 320
    :cond_17
    invoke-virtual {v9}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_18

    .line 321
    invoke-virtual {v9}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_17

    const/4 v0, 0x0

    return-object v0

    :cond_18
    const/4 v0, 0x0

    const/16 v1, 0xe

    if-eq v7, v1, :cond_19

    .line 331
    invoke-static {v4, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    :cond_19
    return-object v0

    :cond_1a
    :goto_3
    const/4 v0, 0x0

    :cond_1b
    :goto_4
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x27
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
