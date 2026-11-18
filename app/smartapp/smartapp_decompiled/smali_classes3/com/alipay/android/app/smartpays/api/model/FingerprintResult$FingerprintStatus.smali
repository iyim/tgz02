.class public final enum Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;
.super Ljava/lang/Enum;
.source "FingerprintResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/app/smartpays/api/model/FingerprintResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FingerprintStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;

.field public static final enum COMMON_BUSY:Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;

.field public static final enum COMMON_CANCELED:Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;

.field public static final enum COMMON_FAILED:Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;

.field public static final enum COMMON_SUCCESS:Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;

.field public static final enum COMMON_TIMEOUT:Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;

.field public static final enum COMMON_TO_PWD:Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;

.field public static final enum COMMON_VERIFYING:Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;

.field public static final enum DLG_CANCEL:Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;

.field public static final enum DLG_TOPWD:Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;

.field public static final enum RETRY_ING:Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;

.field public static final enum RETRY_LIMIT:Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 32
    new-instance v0, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;

    const/4 v1, 0x0

    const-string v2, "COMMON_SUCCESS"

    invoke-direct {v0, v2, v1}, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;->COMMON_SUCCESS:Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;

    .line 36
    new-instance v0, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;

    const/4 v2, 0x1

    const-string v3, "COMMON_FAILED"

    invoke-direct {v0, v3, v2}, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;->COMMON_FAILED:Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;

    .line 40
    new-instance v0, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;

    const/4 v3, 0x2

    const-string v4, "COMMON_BUSY"

    invoke-direct {v0, v4, v3}, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;->COMMON_BUSY:Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;

    .line 44
    new-instance v0, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;

    const/4 v4, 0x3

    const-string v5, "COMMON_VERIFYING"

    invoke-direct {v0, v5, v4}, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;->COMMON_VERIFYING:Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;

    .line 48
    new-instance v0, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;

    const/4 v5, 0x4

    const-string v6, "COMMON_CANCELED"

    invoke-direct {v0, v6, v5}, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;->COMMON_CANCELED:Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;

    .line 52
    new-instance v0, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;

    const/4 v6, 0x5

    const-string v7, "COMMON_TIMEOUT"

    invoke-direct {v0, v7, v6}, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;->COMMON_TIMEOUT:Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;

    .line 56
    new-instance v0, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;

    const/4 v7, 0x6

    const-string v8, "COMMON_TO_PWD"

    invoke-direct {v0, v8, v7}, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;->COMMON_TO_PWD:Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;

    .line 60
    new-instance v0, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;

    const/4 v8, 0x7

    const-string v9, "RETRY_ING"

    invoke-direct {v0, v9, v8}, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;->RETRY_ING:Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;

    .line 64
    new-instance v0, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;

    const/16 v9, 0x8

    const-string v10, "RETRY_LIMIT"

    invoke-direct {v0, v10, v9}, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;->RETRY_LIMIT:Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;

    .line 68
    new-instance v0, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;

    const/16 v10, 0x9

    const-string v11, "DLG_CANCEL"

    invoke-direct {v0, v11, v10}, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;->DLG_CANCEL:Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;

    .line 72
    new-instance v0, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;

    const/16 v11, 0xa

    const-string v12, "DLG_TOPWD"

    invoke-direct {v0, v12, v11}, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;->DLG_TOPWD:Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;

    const/16 v0, 0xb

    .line 28
    new-array v0, v0, [Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;

    sget-object v12, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;->COMMON_SUCCESS:Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;

    aput-object v12, v0, v1

    sget-object v1, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;->COMMON_FAILED:Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;->COMMON_BUSY:Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;->COMMON_VERIFYING:Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;->COMMON_CANCELED:Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;->COMMON_TIMEOUT:Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;->COMMON_TO_PWD:Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;

    aput-object v1, v0, v7

    sget-object v1, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;->RETRY_ING:Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;

    aput-object v1, v0, v8

    sget-object v1, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;->RETRY_LIMIT:Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;

    aput-object v1, v0, v9

    sget-object v1, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;->DLG_CANCEL:Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;

    aput-object v1, v0, v10

    sget-object v1, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;->DLG_TOPWD:Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;

    aput-object v1, v0, v11

    sput-object v0, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;->$VALUES:[Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;
    .locals 1

    .line 28
    const-class v0, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;

    return-object p0
.end method

.method public static values()[Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;
    .locals 1

    .line 28
    sget-object v0, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;->$VALUES:[Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;

    invoke-virtual {v0}, [Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;

    return-object v0
.end method
