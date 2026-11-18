.class synthetic Lcom/aliyun/oss/internal/OSSObjectOperation$3;
.super Ljava/lang/Object;
.source "OSSObjectOperation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aliyun/oss/internal/OSSObjectOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$aliyun$oss$internal$OSSObjectOperation$WriteMode:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 815
    invoke-static {}, Lcom/aliyun/oss/internal/OSSObjectOperation$WriteMode;->values()[Lcom/aliyun/oss/internal/OSSObjectOperation$WriteMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/aliyun/oss/internal/OSSObjectOperation$3;->$SwitchMap$com$aliyun$oss$internal$OSSObjectOperation$WriteMode:[I

    :try_start_0
    sget-object v0, Lcom/aliyun/oss/internal/OSSObjectOperation$3;->$SwitchMap$com$aliyun$oss$internal$OSSObjectOperation$WriteMode:[I

    sget-object v1, Lcom/aliyun/oss/internal/OSSObjectOperation$WriteMode;->APPEND:Lcom/aliyun/oss/internal/OSSObjectOperation$WriteMode;

    invoke-virtual {v1}, Lcom/aliyun/oss/internal/OSSObjectOperation$WriteMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/aliyun/oss/internal/OSSObjectOperation$3;->$SwitchMap$com$aliyun$oss$internal$OSSObjectOperation$WriteMode:[I

    sget-object v1, Lcom/aliyun/oss/internal/OSSObjectOperation$WriteMode;->OVERWRITE:Lcom/aliyun/oss/internal/OSSObjectOperation$WriteMode;

    invoke-virtual {v1}, Lcom/aliyun/oss/internal/OSSObjectOperation$WriteMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
