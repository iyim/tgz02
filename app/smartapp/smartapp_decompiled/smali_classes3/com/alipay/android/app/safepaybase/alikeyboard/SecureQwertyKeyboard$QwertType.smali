.class public final enum Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$QwertType;
.super Ljava/lang/Enum;
.source "SecureQwertyKeyboard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "QwertType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$QwertType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$QwertType;

.field public static final enum abc:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$QwertType;

.field public static final enum num:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$QwertType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 96
    new-instance v0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$QwertType;

    const/4 v1, 0x0

    const-string v2, "abc"

    invoke-direct {v0, v2, v1}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$QwertType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$QwertType;->abc:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$QwertType;

    new-instance v0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$QwertType;

    const/4 v2, 0x1

    const-string v3, "num"

    invoke-direct {v0, v3, v2}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$QwertType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$QwertType;->num:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$QwertType;

    const/4 v0, 0x2

    .line 95
    new-array v0, v0, [Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$QwertType;

    sget-object v3, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$QwertType;->abc:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$QwertType;

    aput-object v3, v0, v1

    sget-object v1, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$QwertType;->num:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$QwertType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$QwertType;->$VALUES:[Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$QwertType;

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

    .line 95
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$QwertType;
    .locals 1

    .line 95
    const-class v0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$QwertType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$QwertType;

    return-object p0
.end method

.method public static values()[Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$QwertType;
    .locals 1

    .line 95
    sget-object v0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$QwertType;->$VALUES:[Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$QwertType;

    invoke-virtual {v0}, [Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$QwertType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$QwertType;

    return-object v0
.end method
