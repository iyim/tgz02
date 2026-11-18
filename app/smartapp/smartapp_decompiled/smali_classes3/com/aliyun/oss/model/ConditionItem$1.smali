.class synthetic Lcom/aliyun/oss/model/ConditionItem$1;
.super Ljava/lang/Object;
.source "PolicyConditions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aliyun/oss/model/ConditionItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$aliyun$oss$model$ConditionItem$TupleType:[I

.field static final synthetic $SwitchMap$com$aliyun$oss$model$MatchMode:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 70
    invoke-static {}, Lcom/aliyun/oss/model/ConditionItem$TupleType;->values()[Lcom/aliyun/oss/model/ConditionItem$TupleType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/aliyun/oss/model/ConditionItem$1;->$SwitchMap$com$aliyun$oss$model$ConditionItem$TupleType:[I

    const/4 v0, 0x1

    :try_start_0
    sget-object v1, Lcom/aliyun/oss/model/ConditionItem$1;->$SwitchMap$com$aliyun$oss$model$ConditionItem$TupleType:[I

    sget-object v2, Lcom/aliyun/oss/model/ConditionItem$TupleType;->Two:Lcom/aliyun/oss/model/ConditionItem$TupleType;

    invoke-virtual {v2}, Lcom/aliyun/oss/model/ConditionItem$TupleType;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v1, 0x2

    :try_start_1
    sget-object v2, Lcom/aliyun/oss/model/ConditionItem$1;->$SwitchMap$com$aliyun$oss$model$ConditionItem$TupleType:[I

    sget-object v3, Lcom/aliyun/oss/model/ConditionItem$TupleType;->Three:Lcom/aliyun/oss/model/ConditionItem$TupleType;

    invoke-virtual {v3}, Lcom/aliyun/oss/model/ConditionItem$TupleType;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    .line 75
    :catch_1
    invoke-static {}, Lcom/aliyun/oss/model/MatchMode;->values()[Lcom/aliyun/oss/model/MatchMode;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/aliyun/oss/model/ConditionItem$1;->$SwitchMap$com$aliyun$oss$model$MatchMode:[I

    :try_start_2
    sget-object v2, Lcom/aliyun/oss/model/ConditionItem$1;->$SwitchMap$com$aliyun$oss$model$MatchMode:[I

    sget-object v3, Lcom/aliyun/oss/model/MatchMode;->Exact:Lcom/aliyun/oss/model/MatchMode;

    invoke-virtual {v3}, Lcom/aliyun/oss/model/MatchMode;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/aliyun/oss/model/ConditionItem$1;->$SwitchMap$com$aliyun$oss$model$MatchMode:[I

    sget-object v2, Lcom/aliyun/oss/model/MatchMode;->StartWith:Lcom/aliyun/oss/model/MatchMode;

    invoke-virtual {v2}, Lcom/aliyun/oss/model/MatchMode;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v0, Lcom/aliyun/oss/model/ConditionItem$1;->$SwitchMap$com$aliyun$oss$model$MatchMode:[I

    sget-object v1, Lcom/aliyun/oss/model/MatchMode;->Range:Lcom/aliyun/oss/model/MatchMode;

    invoke-virtual {v1}, Lcom/aliyun/oss/model/MatchMode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    return-void
.end method
