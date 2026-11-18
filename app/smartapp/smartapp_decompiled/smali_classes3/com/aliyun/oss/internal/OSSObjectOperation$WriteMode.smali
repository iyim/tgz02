.class final enum Lcom/aliyun/oss/internal/OSSObjectOperation$WriteMode;
.super Ljava/lang/Enum;
.source "OSSObjectOperation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aliyun/oss/internal/OSSObjectOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "WriteMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/aliyun/oss/internal/OSSObjectOperation$WriteMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/aliyun/oss/internal/OSSObjectOperation$WriteMode;

.field public static final enum APPEND:Lcom/aliyun/oss/internal/OSSObjectOperation$WriteMode;

.field public static final enum OVERWRITE:Lcom/aliyun/oss/internal/OSSObjectOperation$WriteMode;


# instance fields
.field private final modeAsString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 798
    new-instance v0, Lcom/aliyun/oss/internal/OSSObjectOperation$WriteMode;

    const/4 v1, 0x0

    const-string v2, "APPEND"

    invoke-direct {v0, v2, v1, v2}, Lcom/aliyun/oss/internal/OSSObjectOperation$WriteMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/aliyun/oss/internal/OSSObjectOperation$WriteMode;->APPEND:Lcom/aliyun/oss/internal/OSSObjectOperation$WriteMode;

    .line 801
    new-instance v0, Lcom/aliyun/oss/internal/OSSObjectOperation$WriteMode;

    const/4 v2, 0x1

    const-string v3, "OVERWRITE"

    invoke-direct {v0, v3, v2, v3}, Lcom/aliyun/oss/internal/OSSObjectOperation$WriteMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/aliyun/oss/internal/OSSObjectOperation$WriteMode;->OVERWRITE:Lcom/aliyun/oss/internal/OSSObjectOperation$WriteMode;

    const/4 v0, 0x2

    .line 795
    new-array v0, v0, [Lcom/aliyun/oss/internal/OSSObjectOperation$WriteMode;

    sget-object v3, Lcom/aliyun/oss/internal/OSSObjectOperation$WriteMode;->APPEND:Lcom/aliyun/oss/internal/OSSObjectOperation$WriteMode;

    aput-object v3, v0, v1

    sget-object v1, Lcom/aliyun/oss/internal/OSSObjectOperation$WriteMode;->OVERWRITE:Lcom/aliyun/oss/internal/OSSObjectOperation$WriteMode;

    aput-object v1, v0, v2

    sput-object v0, Lcom/aliyun/oss/internal/OSSObjectOperation$WriteMode;->$VALUES:[Lcom/aliyun/oss/internal/OSSObjectOperation$WriteMode;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 805
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 806
    iput-object p3, p0, Lcom/aliyun/oss/internal/OSSObjectOperation$WriteMode;->modeAsString:Ljava/lang/String;

    return-void
.end method

.method public static getMappingMethod(Lcom/aliyun/oss/internal/OSSObjectOperation$WriteMode;)Lcom/aliyun/oss/HttpMethod;
    .locals 3

    .line 815
    sget-object v0, Lcom/aliyun/oss/internal/OSSObjectOperation$3;->$SwitchMap$com$aliyun$oss$internal$OSSObjectOperation$WriteMode:[I

    invoke-virtual {p0}, Lcom/aliyun/oss/internal/OSSObjectOperation$WriteMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 820
    sget-object p0, Lcom/aliyun/oss/HttpMethod;->PUT:Lcom/aliyun/oss/HttpMethod;

    return-object p0

    .line 823
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsuported write mode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/aliyun/oss/internal/OSSObjectOperation$WriteMode;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 817
    :cond_1
    sget-object p0, Lcom/aliyun/oss/HttpMethod;->POST:Lcom/aliyun/oss/HttpMethod;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/aliyun/oss/internal/OSSObjectOperation$WriteMode;
    .locals 1

    .line 795
    const-class v0, Lcom/aliyun/oss/internal/OSSObjectOperation$WriteMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/aliyun/oss/internal/OSSObjectOperation$WriteMode;

    return-object p0
.end method

.method public static values()[Lcom/aliyun/oss/internal/OSSObjectOperation$WriteMode;
    .locals 1

    .line 795
    sget-object v0, Lcom/aliyun/oss/internal/OSSObjectOperation$WriteMode;->$VALUES:[Lcom/aliyun/oss/internal/OSSObjectOperation$WriteMode;

    invoke-virtual {v0}, [Lcom/aliyun/oss/internal/OSSObjectOperation$WriteMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/aliyun/oss/internal/OSSObjectOperation$WriteMode;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 811
    iget-object v0, p0, Lcom/aliyun/oss/internal/OSSObjectOperation$WriteMode;->modeAsString:Ljava/lang/String;

    return-object v0
.end method
