.class final enum Lcom/alipay/android/app/safepaybase/alikeyboard/NumKeyboard$KeyType;
.super Ljava/lang/Enum;
.source "NumKeyboard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/app/safepaybase/alikeyboard/NumKeyboard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "KeyType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alipay/android/app/safepaybase/alikeyboard/NumKeyboard$KeyType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alipay/android/app/safepaybase/alikeyboard/NumKeyboard$KeyType;

.field public static final enum del:Lcom/alipay/android/app/safepaybase/alikeyboard/NumKeyboard$KeyType;

.field public static final enum ok:Lcom/alipay/android/app/safepaybase/alikeyboard/NumKeyboard$KeyType;

.field public static final enum text:Lcom/alipay/android/app/safepaybase/alikeyboard/NumKeyboard$KeyType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 28
    new-instance v0, Lcom/alipay/android/app/safepaybase/alikeyboard/NumKeyboard$KeyType;

    const/4 v1, 0x0

    const-string v2, "del"

    invoke-direct {v0, v2, v1}, Lcom/alipay/android/app/safepaybase/alikeyboard/NumKeyboard$KeyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/app/safepaybase/alikeyboard/NumKeyboard$KeyType;->del:Lcom/alipay/android/app/safepaybase/alikeyboard/NumKeyboard$KeyType;

    new-instance v0, Lcom/alipay/android/app/safepaybase/alikeyboard/NumKeyboard$KeyType;

    const/4 v2, 0x1

    const-string v3, "ok"

    invoke-direct {v0, v3, v2}, Lcom/alipay/android/app/safepaybase/alikeyboard/NumKeyboard$KeyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/app/safepaybase/alikeyboard/NumKeyboard$KeyType;->ok:Lcom/alipay/android/app/safepaybase/alikeyboard/NumKeyboard$KeyType;

    new-instance v0, Lcom/alipay/android/app/safepaybase/alikeyboard/NumKeyboard$KeyType;

    const/4 v3, 0x2

    const-string v4, "text"

    invoke-direct {v0, v4, v3}, Lcom/alipay/android/app/safepaybase/alikeyboard/NumKeyboard$KeyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/app/safepaybase/alikeyboard/NumKeyboard$KeyType;->text:Lcom/alipay/android/app/safepaybase/alikeyboard/NumKeyboard$KeyType;

    const/4 v0, 0x3

    .line 27
    new-array v0, v0, [Lcom/alipay/android/app/safepaybase/alikeyboard/NumKeyboard$KeyType;

    sget-object v4, Lcom/alipay/android/app/safepaybase/alikeyboard/NumKeyboard$KeyType;->del:Lcom/alipay/android/app/safepaybase/alikeyboard/NumKeyboard$KeyType;

    aput-object v4, v0, v1

    sget-object v1, Lcom/alipay/android/app/safepaybase/alikeyboard/NumKeyboard$KeyType;->ok:Lcom/alipay/android/app/safepaybase/alikeyboard/NumKeyboard$KeyType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alipay/android/app/safepaybase/alikeyboard/NumKeyboard$KeyType;->text:Lcom/alipay/android/app/safepaybase/alikeyboard/NumKeyboard$KeyType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/alipay/android/app/safepaybase/alikeyboard/NumKeyboard$KeyType;->$VALUES:[Lcom/alipay/android/app/safepaybase/alikeyboard/NumKeyboard$KeyType;

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

    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/android/app/safepaybase/alikeyboard/NumKeyboard$KeyType;
    .locals 1

    .line 27
    const-class v0, Lcom/alipay/android/app/safepaybase/alikeyboard/NumKeyboard$KeyType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/alipay/android/app/safepaybase/alikeyboard/NumKeyboard$KeyType;

    return-object p0
.end method

.method public static values()[Lcom/alipay/android/app/safepaybase/alikeyboard/NumKeyboard$KeyType;
    .locals 1

    .line 27
    sget-object v0, Lcom/alipay/android/app/safepaybase/alikeyboard/NumKeyboard$KeyType;->$VALUES:[Lcom/alipay/android/app/safepaybase/alikeyboard/NumKeyboard$KeyType;

    invoke-virtual {v0}, [Lcom/alipay/android/app/safepaybase/alikeyboard/NumKeyboard$KeyType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/android/app/safepaybase/alikeyboard/NumKeyboard$KeyType;

    return-object v0
.end method
