.class public final enum Lcom/alipay/android/app/safepaybase/EncryptRandomType;
.super Ljava/lang/Enum;
.source "EncryptRandomType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alipay/android/app/safepaybase/EncryptRandomType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alipay/android/app/safepaybase/EncryptRandomType;

.field public static final enum randomafter:Lcom/alipay/android/app/safepaybase/EncryptRandomType;

.field public static final enum randombefore:Lcom/alipay/android/app/safepaybase/EncryptRandomType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 13
    new-instance v0, Lcom/alipay/android/app/safepaybase/EncryptRandomType;

    const/4 v1, 0x0

    const-string v2, "randombefore"

    invoke-direct {v0, v2, v1}, Lcom/alipay/android/app/safepaybase/EncryptRandomType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/app/safepaybase/EncryptRandomType;->randombefore:Lcom/alipay/android/app/safepaybase/EncryptRandomType;

    new-instance v0, Lcom/alipay/android/app/safepaybase/EncryptRandomType;

    const/4 v2, 0x1

    const-string v3, "randomafter"

    invoke-direct {v0, v3, v2}, Lcom/alipay/android/app/safepaybase/EncryptRandomType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/app/safepaybase/EncryptRandomType;->randomafter:Lcom/alipay/android/app/safepaybase/EncryptRandomType;

    const/4 v0, 0x2

    .line 12
    new-array v0, v0, [Lcom/alipay/android/app/safepaybase/EncryptRandomType;

    sget-object v3, Lcom/alipay/android/app/safepaybase/EncryptRandomType;->randombefore:Lcom/alipay/android/app/safepaybase/EncryptRandomType;

    aput-object v3, v0, v1

    sget-object v1, Lcom/alipay/android/app/safepaybase/EncryptRandomType;->randomafter:Lcom/alipay/android/app/safepaybase/EncryptRandomType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/alipay/android/app/safepaybase/EncryptRandomType;->$VALUES:[Lcom/alipay/android/app/safepaybase/EncryptRandomType;

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

    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/android/app/safepaybase/EncryptRandomType;
    .locals 1

    .line 12
    const-class v0, Lcom/alipay/android/app/safepaybase/EncryptRandomType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/alipay/android/app/safepaybase/EncryptRandomType;

    return-object p0
.end method

.method public static values()[Lcom/alipay/android/app/safepaybase/EncryptRandomType;
    .locals 1

    .line 12
    sget-object v0, Lcom/alipay/android/app/safepaybase/EncryptRandomType;->$VALUES:[Lcom/alipay/android/app/safepaybase/EncryptRandomType;

    invoke-virtual {v0}, [Lcom/alipay/android/app/safepaybase/EncryptRandomType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/android/app/safepaybase/EncryptRandomType;

    return-object v0
.end method
