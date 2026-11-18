.class public final enum Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask$TaskStatus;
.super Ljava/lang/Enum;
.source "VerifyIdentityTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TaskStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask$TaskStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask$TaskStatus;

.field public static final enum OVER:Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask$TaskStatus;

.field public static final enum RUN:Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask$TaskStatus;

.field public static final enum WAIT:Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask$TaskStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 33
    new-instance v0, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask$TaskStatus;

    const/4 v1, 0x0

    const-string v2, "WAIT"

    invoke-direct {v0, v2, v1}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask$TaskStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask$TaskStatus;->WAIT:Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask$TaskStatus;

    new-instance v0, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask$TaskStatus;

    const/4 v2, 0x1

    const-string v3, "RUN"

    invoke-direct {v0, v3, v2}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask$TaskStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask$TaskStatus;->RUN:Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask$TaskStatus;

    new-instance v0, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask$TaskStatus;

    const/4 v3, 0x2

    const-string v4, "OVER"

    invoke-direct {v0, v4, v3}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask$TaskStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask$TaskStatus;->OVER:Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask$TaskStatus;

    const/4 v0, 0x3

    .line 32
    new-array v0, v0, [Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask$TaskStatus;

    sget-object v4, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask$TaskStatus;->WAIT:Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask$TaskStatus;

    aput-object v4, v0, v1

    sget-object v1, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask$TaskStatus;->RUN:Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask$TaskStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask$TaskStatus;->OVER:Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask$TaskStatus;

    aput-object v1, v0, v3

    sput-object v0, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask$TaskStatus;->$VALUES:[Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask$TaskStatus;

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

    .line 32
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

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask$TaskStatus;
    .locals 1

    .line 32
    const-class v0, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask$TaskStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask$TaskStatus;

    return-object p0
.end method

.method public static values()[Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask$TaskStatus;
    .locals 1

    .line 32
    sget-object v0, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask$TaskStatus;->$VALUES:[Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask$TaskStatus;

    invoke-virtual {v0}, [Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask$TaskStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask$TaskStatus;

    return-object v0
.end method
