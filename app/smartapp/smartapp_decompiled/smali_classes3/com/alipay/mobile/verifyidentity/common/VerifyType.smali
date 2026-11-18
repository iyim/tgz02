.class public final enum Lcom/alipay/mobile/verifyidentity/common/VerifyType;
.super Ljava/lang/Enum;
.source "VerifyType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alipay/mobile/verifyidentity/common/VerifyType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alipay/mobile/verifyidentity/common/VerifyType;

.field public static final enum FAST_DIRECT:Lcom/alipay/mobile/verifyidentity/common/VerifyType;

.field public static final enum FAST_INIT:Lcom/alipay/mobile/verifyidentity/common/VerifyType;

.field public static final enum TOKEN:Lcom/alipay/mobile/verifyidentity/common/VerifyType;

.field public static final enum VERIFY:Lcom/alipay/mobile/verifyidentity/common/VerifyType;

.field public static final enum VERIFYID:Lcom/alipay/mobile/verifyidentity/common/VerifyType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 12
    new-instance v0, Lcom/alipay/mobile/verifyidentity/common/VerifyType;

    const/4 v1, 0x0

    const-string v2, "TOKEN"

    invoke-direct {v0, v2, v1}, Lcom/alipay/mobile/verifyidentity/common/VerifyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/verifyidentity/common/VerifyType;->TOKEN:Lcom/alipay/mobile/verifyidentity/common/VerifyType;

    .line 17
    new-instance v0, Lcom/alipay/mobile/verifyidentity/common/VerifyType;

    const/4 v2, 0x1

    const-string v3, "VERIFYID"

    invoke-direct {v0, v3, v2}, Lcom/alipay/mobile/verifyidentity/common/VerifyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/verifyidentity/common/VerifyType;->VERIFYID:Lcom/alipay/mobile/verifyidentity/common/VerifyType;

    .line 22
    new-instance v0, Lcom/alipay/mobile/verifyidentity/common/VerifyType;

    const/4 v3, 0x2

    const-string v4, "FAST_INIT"

    invoke-direct {v0, v4, v3}, Lcom/alipay/mobile/verifyidentity/common/VerifyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/verifyidentity/common/VerifyType;->FAST_INIT:Lcom/alipay/mobile/verifyidentity/common/VerifyType;

    .line 27
    new-instance v0, Lcom/alipay/mobile/verifyidentity/common/VerifyType;

    const/4 v4, 0x3

    const-string v5, "FAST_DIRECT"

    invoke-direct {v0, v5, v4}, Lcom/alipay/mobile/verifyidentity/common/VerifyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/verifyidentity/common/VerifyType;->FAST_DIRECT:Lcom/alipay/mobile/verifyidentity/common/VerifyType;

    .line 33
    new-instance v0, Lcom/alipay/mobile/verifyidentity/common/VerifyType;

    const/4 v5, 0x4

    const-string v6, "VERIFY"

    invoke-direct {v0, v6, v5}, Lcom/alipay/mobile/verifyidentity/common/VerifyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/verifyidentity/common/VerifyType;->VERIFY:Lcom/alipay/mobile/verifyidentity/common/VerifyType;

    const/4 v0, 0x5

    .line 7
    new-array v0, v0, [Lcom/alipay/mobile/verifyidentity/common/VerifyType;

    sget-object v6, Lcom/alipay/mobile/verifyidentity/common/VerifyType;->TOKEN:Lcom/alipay/mobile/verifyidentity/common/VerifyType;

    aput-object v6, v0, v1

    sget-object v1, Lcom/alipay/mobile/verifyidentity/common/VerifyType;->VERIFYID:Lcom/alipay/mobile/verifyidentity/common/VerifyType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alipay/mobile/verifyidentity/common/VerifyType;->FAST_INIT:Lcom/alipay/mobile/verifyidentity/common/VerifyType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alipay/mobile/verifyidentity/common/VerifyType;->FAST_DIRECT:Lcom/alipay/mobile/verifyidentity/common/VerifyType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alipay/mobile/verifyidentity/common/VerifyType;->VERIFY:Lcom/alipay/mobile/verifyidentity/common/VerifyType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/alipay/mobile/verifyidentity/common/VerifyType;->$VALUES:[Lcom/alipay/mobile/verifyidentity/common/VerifyType;

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

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const-class p1, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {p1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "hackbyte "

    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/mobile/verifyidentity/common/VerifyType;
    .locals 1

    .line 7
    const-class v0, Lcom/alipay/mobile/verifyidentity/common/VerifyType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/alipay/mobile/verifyidentity/common/VerifyType;

    return-object p0
.end method

.method public static values()[Lcom/alipay/mobile/verifyidentity/common/VerifyType;
    .locals 1

    .line 7
    sget-object v0, Lcom/alipay/mobile/verifyidentity/common/VerifyType;->$VALUES:[Lcom/alipay/mobile/verifyidentity/common/VerifyType;

    invoke-virtual {v0}, [Lcom/alipay/mobile/verifyidentity/common/VerifyType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/mobile/verifyidentity/common/VerifyType;

    return-object v0
.end method
