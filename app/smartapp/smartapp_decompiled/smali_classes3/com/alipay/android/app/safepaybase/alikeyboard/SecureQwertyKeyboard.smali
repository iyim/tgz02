.class public Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;
.super Lcom/alipay/android/app/safepaybase/alikeyboard/AbstractKeyboard;
.source "SecureQwertyKeyboard.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$ShiftType;,
        Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$QwertType;
    }
.end annotation


# static fields
.field private static final signMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final QWERT_123_SHIFT_DOWN_ROW_0:[Ljava/lang/String;

.field private final QWERT_123_SHIFT_DOWN_ROW_1:[Ljava/lang/String;

.field private final QWERT_123_SHIFT_DOWN_ROW_2:[Ljava/lang/String;

.field private final QWERT_123_SHIFT_UP_ROW_0:[Ljava/lang/String;

.field private final QWERT_123_SHIFT_UP_ROW_1:[Ljava/lang/String;

.field private final QWERT_123_SHIFT_UP_ROW_2:[Ljava/lang/String;

.field private final QWERT_ABC_SHIFT_DOWN_ROW_0:[Ljava/lang/String;

.field private final QWERT_ABC_SHIFT_DOWN_ROW_1:[Ljava/lang/String;

.field private final QWERT_ABC_SHIFT_DOWN_ROW_2:[Ljava/lang/String;

.field private final QWERT_ABC_SHIFT_UP_ROW_0:[Ljava/lang/String;

.field private final QWERT_ABC_SHIFT_UP_ROW_1:[Ljava/lang/String;

.field private final QWERT_ABC_SHIFT_UP_ROW_2:[Ljava/lang/String;

.field private cashierContainer:Landroid/widget/FrameLayout;

.field private fake_view:Landroid/view/View;

.field private ib_shift:Landroid/widget/FrameLayout;

.field private mContext:Landroid/content/Context;

.field private mManager:Landroid/view/accessibility/AccessibilityManager;

.field private mTextToSpeechInitialized:Z

.field private mTts:Landroid/speech/tts/TextToSpeech;

.field private qwertType:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$QwertType;

.field private screen_density:D

.field sflAccessListenr:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout$SendAccessiBilityEventListener;

.field private shiftType:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$ShiftType;

.field stvAccessListener:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureTextView$SendAccessiBilityEventListener;

.field private textSize:F

.field private tv_row1:[Landroid/widget/TextView;

.field private tv_row2:[Landroid/widget/TextView;

.field private tv_row3:[Landroid/widget/TextView;

.field private tv_type:Landroid/widget/TextView;

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 556
    new-instance v0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$4;

    invoke-direct {v0}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$4;-><init>()V

    sput-object v0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->signMap:Ljava/util/Map;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/FrameLayout;Lcom/alipay/android/app/safepaybase/alikeyboard/OnKeyboardListener;)V
    .locals 11

    .line 105
    invoke-direct {p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/AbstractKeyboard;-><init>()V

    .line 51
    sget-object v0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$QwertType;->abc:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$QwertType;

    iput-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->qwertType:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$QwertType;

    .line 52
    sget-object v0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$ShiftType;->up:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$ShiftType;

    iput-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->shiftType:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$ShiftType;

    const/16 v0, 0xa

    .line 54
    new-array v0, v0, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->tv_row1:[Landroid/widget/TextView;

    const/16 v0, 0x9

    .line 55
    new-array v0, v0, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->tv_row2:[Landroid/widget/TextView;

    const/4 v0, 0x7

    .line 56
    new-array v0, v0, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->tv_row3:[Landroid/widget/TextView;

    const-string v1, "q"

    const-string v2, "w"

    const-string v3, "e"

    const-string v4, "r"

    const-string v5, "t"

    const-string v6, "y"

    const-string v7, "u"

    const-string v8, "i"

    const-string v9, "o"

    const-string v10, "p"

    .line 58
    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->QWERT_ABC_SHIFT_UP_ROW_0:[Ljava/lang/String;

    const-string v1, "a"

    const-string v2, "s"

    const-string v3, "d"

    const-string v4, "f"

    const-string v5, "g"

    const-string v6, "h"

    const-string v7, "j"

    const-string v8, "k"

    const-string v9, "l"

    .line 60
    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->QWERT_ABC_SHIFT_UP_ROW_1:[Ljava/lang/String;

    const-string v1, "z"

    const-string v2, "x"

    const-string v3, "c"

    const-string v4, "v"

    const-string v5, "b"

    const-string v6, "n"

    const-string v7, "m"

    .line 62
    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->QWERT_ABC_SHIFT_UP_ROW_2:[Ljava/lang/String;

    const-string v1, "Q"

    const-string v2, "W"

    const-string v3, "E"

    const-string v4, "R"

    const-string v5, "T"

    const-string v6, "Y"

    const-string v7, "U"

    const-string v8, "I"

    const-string v9, "O"

    const-string v10, "P"

    .line 65
    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->QWERT_ABC_SHIFT_DOWN_ROW_0:[Ljava/lang/String;

    const-string v1, "A"

    const-string v2, "S"

    const-string v3, "D"

    const-string v4, "F"

    const-string v5, "G"

    const-string v6, "H"

    const-string v7, "J"

    const-string v8, "K"

    const-string v9, "L"

    .line 67
    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->QWERT_ABC_SHIFT_DOWN_ROW_1:[Ljava/lang/String;

    const-string v1, "Z"

    const-string v2, "X"

    const-string v3, "C"

    const-string v4, "V"

    const-string v5, "B"

    const-string v6, "N"

    const-string v7, "M"

    .line 69
    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->QWERT_ABC_SHIFT_DOWN_ROW_2:[Ljava/lang/String;

    const-string v1, "1"

    const-string v2, "2"

    const-string v3, "3"

    const-string v4, "4"

    const-string v5, "5"

    const-string v6, "6"

    const-string v7, "7"

    const-string v8, "8"

    const-string v9, "9"

    const-string v10, "0"

    .line 72
    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->QWERT_123_SHIFT_UP_ROW_0:[Ljava/lang/String;

    const-string v1, "~"

    const-string v2, "!"

    const-string v3, "@"

    const-string v4, "#"

    const-string v5, "%"

    const-string v6, "\'"

    const-string v7, "&"

    const-string v8, "*"

    const-string v9, "?"

    .line 74
    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->QWERT_123_SHIFT_UP_ROW_1:[Ljava/lang/String;

    const-string v1, "("

    const-string v2, ")"

    const-string v3, "-"

    const-string v4, "_"

    const-string v5, ":"

    const-string v6, ";"

    const-string v7, "/"

    .line 76
    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->QWERT_123_SHIFT_UP_ROW_2:[Ljava/lang/String;

    const-string v1, "1"

    const-string v2, "2"

    const-string v3, "3"

    const-string v4, "4"

    const-string v5, "5"

    const-string v6, "6"

    const-string v7, "7"

    const-string v8, "8"

    const-string v9, "9"

    const-string v10, "0"

    .line 79
    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->QWERT_123_SHIFT_DOWN_ROW_0:[Ljava/lang/String;

    const-string v1, "<"

    const-string v2, ">"

    const-string v3, "+"

    const-string v4, "="

    const-string v5, "\u00f7"

    const-string v6, "^"

    const-string v7, "`"

    const-string v8, "["

    const-string v9, "]"

    .line 81
    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->QWERT_123_SHIFT_DOWN_ROW_1:[Ljava/lang/String;

    const-string v1, "\\"

    const-string v2, "|"

    const-string v3, "\""

    const-string v4, "$"

    const-string v5, "\uffe5"

    const-string v6, "{"

    const-string v7, "}"

    .line 83
    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->QWERT_123_SHIFT_DOWN_ROW_2:[Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 117
    iput-wide v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->screen_density:D

    const/4 v0, 0x0

    .line 118
    iput v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->width:I

    const/4 v1, 0x0

    .line 119
    iput v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->textSize:F

    const/4 v1, 0x0

    .line 410
    iput-object v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->mContext:Landroid/content/Context;

    .line 411
    iput-object v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 412
    iput-object v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->mManager:Landroid/view/accessibility/AccessibilityManager;

    .line 413
    iput-boolean v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->mTextToSpeechInitialized:Z

    .line 464
    new-instance v2, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$2;

    invoke-direct {v2, p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$2;-><init>(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;)V

    iput-object v2, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->stvAccessListener:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureTextView$SendAccessiBilityEventListener;

    .line 476
    new-instance v2, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$3;

    invoke-direct {v2, p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$3;-><init>(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;)V

    iput-object v2, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->sflAccessListenr:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout$SendAccessiBilityEventListener;

    .line 106
    iput-object p3, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->onKeyboardListener:Lcom/alipay/android/app/safepaybase/alikeyboard/OnKeyboardListener;

    .line 107
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    .line 108
    sget v2, Lcom/alipay/android/safepaysdk/R$layout;->keyboard_secure_qwerty:I

    invoke-virtual {p3, v2, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->keyboardView:Landroid/view/ViewGroup;

    .line 109
    iput-object p2, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->cashierContainer:Landroid/widget/FrameLayout;

    .line 111
    iput-object p1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->mContext:Landroid/content/Context;

    .line 112
    invoke-direct {p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->initTtsIfTalkBack()V

    .line 114
    invoke-direct {p0, p1}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->initialize(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;)Landroid/view/accessibility/AccessibilityManager;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->mManager:Landroid/view/accessibility/AccessibilityManager;

    return-object p0
.end method

.method static synthetic access$100(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;)Landroid/speech/tts/TextToSpeech;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->mTts:Landroid/speech/tts/TextToSpeech;

    return-object p0
.end method

.method static synthetic access$102(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;Landroid/speech/tts/TextToSpeech;)Landroid/speech/tts/TextToSpeech;
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->mTts:Landroid/speech/tts/TextToSpeech;

    return-object p1
.end method

.method static synthetic access$200(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;)Landroid/content/Context;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;)Z
    .locals 0

    .line 42
    iget-boolean p0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->mTextToSpeechInitialized:Z

    return p0
.end method

.method static synthetic access$302(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;Z)Z
    .locals 0

    .line 42
    iput-boolean p1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->mTextToSpeechInitialized:Z

    return p1
.end method

.method static synthetic access$400(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;)Landroid/view/View;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->fake_view:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$500(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout;I)Ljava/lang/String;
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->getAnnounceString(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;Ljava/lang/String;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->announceTextOut(Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private announceSwitchKeyboard(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$QwertType;Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$ShiftType;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .line 389
    iget-boolean v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->mTextToSpeechInitialized:Z

    if-eqz v0, :cond_3

    .line 391
    sget-object v0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$QwertType;->abc:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$QwertType;

    if-ne p1, v0, :cond_1

    .line 392
    sget-object p1, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$ShiftType;->up:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$ShiftType;

    if-ne p2, p1, :cond_0

    .line 393
    iget-object p1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->mContext:Landroid/content/Context;

    sget p2, Lcom/alipay/android/safepaysdk/R$string;->msp_secure_keyboard_type_lowercase_letter:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 395
    :cond_0
    iget-object p1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->mContext:Landroid/content/Context;

    sget p2, Lcom/alipay/android/safepaysdk/R$string;->msp_secure_keyboard_type_uppercase_letter:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 398
    :cond_1
    sget-object p1, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$ShiftType;->up:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$ShiftType;

    if-ne p2, p1, :cond_2

    .line 399
    iget-object p1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->mContext:Landroid/content/Context;

    sget p2, Lcom/alipay/android/safepaysdk/R$string;->msp_secure_keyboard_type_digital_sign:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 401
    :cond_2
    iget-object p1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->mContext:Landroid/content/Context;

    sget p2, Lcom/alipay/android/safepaysdk/R$string;->msp_secure_keyboard_type_special_sign:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 404
    :goto_0
    iget-object p2, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->mManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 405
    iget-object p2, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->mTts:Landroid/speech/tts/TextToSpeech;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p2, p1, v0, v1}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    :cond_3
    return-void
.end method

.method private announceTextOut(Ljava/lang/String;)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .line 515
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->mManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 516
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->mTts:Landroid/speech/tts/TextToSpeech;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    :cond_0
    return-void
.end method

.method private convertIfSpecial(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 549
    sget-object v0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->signMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 551
    iget-object p1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/android/app/safepaybase/util/ResUtils;->getStringId(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private getAnnounceString(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout;I)Ljava/lang/String;
    .locals 3

    .line 522
    invoke-virtual {p1}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout;->getId()I

    move-result v0

    .line 523
    sget v1, Lcom/alipay/android/safepaysdk/R$id;->key_del1:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 524
    iget-object p1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->mContext:Landroid/content/Context;

    sget v0, Lcom/alipay/android/safepaysdk/R$string;->msp_secure_keyboard_del:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-ne p2, v2, :cond_5

    .line 526
    iget-object p1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->mContext:Landroid/content/Context;

    sget p2, Lcom/alipay/android/safepaysdk/R$string;->msp_secure_keyboard_already_del:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 528
    :cond_0
    sget p2, Lcom/alipay/android/safepaysdk/R$id;->key_space:I

    if-ne v0, p2, :cond_1

    .line 529
    iget-object p1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->mContext:Landroid/content/Context;

    sget p2, Lcom/alipay/android/safepaysdk/R$string;->msp_secure_keyboard_space:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 530
    :cond_1
    sget p2, Lcom/alipay/android/safepaysdk/R$id;->key_ABC:I

    const/4 v1, 0x0

    if-ne v0, p2, :cond_3

    .line 531
    iget-object p2, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->ib_shift:Landroid/widget/FrameLayout;

    invoke-virtual {p2, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p2

    if-nez p2, :cond_2

    .line 532
    iget-object p1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->mContext:Landroid/content/Context;

    sget p2, Lcom/alipay/android/safepaysdk/R$string;->msp_secure_keyboard_shift:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 534
    :cond_2
    invoke-virtual {p1, v2}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 535
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 537
    :cond_3
    sget p2, Lcom/alipay/android/safepaysdk/R$id;->key_enter:I

    if-ne v0, p2, :cond_4

    .line 538
    iget-object p1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->mContext:Landroid/content/Context;

    sget p2, Lcom/alipay/android/safepaysdk/R$string;->msp_secure_keyboard_compelete:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 540
    :cond_4
    invoke-virtual {p1, v1}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 541
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 542
    invoke-direct {p0, p1}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->convertIfSpecial(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_5
    :goto_0
    return-object p1
.end method

.method private initTtsIfTalkBack()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .line 417
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->mContext:Landroid/content/Context;

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->mManager:Landroid/view/accessibility/AccessibilityManager;

    .line 418
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->keyboardView:Landroid/view/ViewGroup;

    new-instance v1, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$1;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$1;-><init>(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method

.method private initialize(Landroid/content/Context;)V
    .locals 18
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    move-object/from16 v0, p0

    .line 141
    iget-object v1, v0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->keyboardView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 142
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    float-to-double v2, v2

    iput-wide v2, v0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->screen_density:D

    .line 143
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 144
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v4, v3

    .line 146
    iget-wide v6, v0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->screen_density:D

    const-wide/high16 v8, 0x3ff8000000000000L    # 1.5

    mul-double v10, v6, v8

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    mul-double v10, v10, v12

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v4, v10

    double-to-int v4, v4

    div-int/lit8 v4, v4, 0xa

    iput v4, v0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->width:I

    .line 147
    iget v4, v0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->width:I

    int-to-double v10, v4

    const-wide v14, 0x3fe4cccccccccccdL    # 0.65

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v10, v10, v14

    double-to-float v5, v10

    iput v5, v0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->textSize:F

    int-to-double v4, v4

    const-wide/high16 v10, 0x4012000000000000L    # 4.5

    mul-double v14, v6, v10

    mul-double v14, v14, v12

    .line 149
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v4, v14

    const-wide v14, 0x3ff7333333333333L    # 1.45

    mul-double v4, v4, v14

    const-wide/high16 v14, 0x401c000000000000L    # 7.0

    mul-double v14, v14, v6

    mul-double v14, v14, v12

    add-double/2addr v4, v14

    double-to-int v4, v4

    mul-int/lit8 v5, v4, 0x4

    int-to-double v14, v5

    int-to-double v10, v2

    const-wide v16, 0x3fd6666666666666L    # 0.35

    .line 151
    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v10, v10, v16

    const-wide/high16 v16, 0x4010000000000000L    # 4.0

    cmpl-double v2, v14, v10

    if-lez v2, :cond_0

    div-double v10, v10, v16

    double-to-int v4, v10

    int-to-double v10, v4

    const-wide/high16 v14, 0x4022000000000000L    # 9.0

    mul-double v14, v14, v6

    mul-double v14, v14, v12

    .line 154
    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v10, v14

    const-wide/high16 v14, 0x4024000000000000L    # 10.0

    mul-double v6, v6, v14

    sub-double/2addr v10, v6

    double-to-float v2, v10

    iput v2, v0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->textSize:F

    .line 157
    :cond_0
    iget v2, v0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->width:I

    mul-int/lit8 v5, v2, 0x7

    sub-int/2addr v3, v5

    int-to-double v5, v3

    iget-wide v10, v0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->screen_density:D

    mul-double v8, v8, v10

    mul-double v8, v8, v12

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v5, v8

    const-wide/high16 v7, 0x4012000000000000L    # 4.5

    mul-double v10, v10, v7

    mul-double v10, v10, v16

    sub-double/2addr v5, v10

    double-to-int v3, v5

    const/4 v5, 0x2

    div-int/2addr v3, v5

    mul-int/lit8 v6, v2, 0x4

    add-int/2addr v2, v3

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v1, :cond_e

    .line 164
    iget-object v9, v0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->keyboardView:Landroid/view/ViewGroup;

    invoke-virtual {v9, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    if-nez v9, :cond_2

    :cond_1
    const/4 v13, 0x0

    const/4 v14, 0x2

    goto/16 :goto_9

    .line 169
    :cond_2
    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout$LayoutParams;

    .line 170
    iput v4, v10, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v10, 0x1

    .line 171
    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 172
    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v11

    const/4 v12, 0x0

    if-nez v8, :cond_3

    .line 175
    new-array v10, v11, [Landroid/widget/TextView;

    iput-object v10, v0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->tv_row1:[Landroid/widget/TextView;

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v11, :cond_1

    .line 177
    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout;

    .line 178
    invoke-virtual {v13}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/widget/LinearLayout$LayoutParams;

    .line 179
    iget v15, v0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->width:I

    iput v15, v14, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 180
    iput v12, v14, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 182
    invoke-virtual {v13, v7}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureTextView;

    .line 183
    iget v15, v0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->textSize:F

    invoke-virtual {v14, v7, v15}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureTextView;->setTextSize(IF)V

    .line 184
    invoke-direct {v0, v13}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->setEventListener(Landroid/view/View;)V

    .line 185
    iget-object v15, v0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->tv_row1:[Landroid/widget/TextView;

    aput-object v14, v15, v10

    .line 186
    iget-object v15, v0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->stvAccessListener:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureTextView$SendAccessiBilityEventListener;

    invoke-virtual {v14, v15}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureTextView;->setSendAccessiBilityEventListener(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureTextView$SendAccessiBilityEventListener;)V

    .line 187
    iget-object v14, v0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->sflAccessListenr:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout$SendAccessiBilityEventListener;

    invoke-virtual {v13, v14}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout;->setSendAccessiBilityEventListener(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout$SendAccessiBilityEventListener;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_3
    if-ne v8, v10, :cond_4

    .line 190
    new-array v10, v11, [Landroid/widget/TextView;

    iput-object v10, v0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->tv_row2:[Landroid/widget/TextView;

    const/4 v10, 0x0

    :goto_2
    if-ge v10, v11, :cond_1

    .line 192
    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout;

    .line 193
    invoke-virtual {v13, v7}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureTextView;

    .line 194
    iget v15, v0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->textSize:F

    invoke-virtual {v14, v7, v15}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureTextView;->setTextSize(IF)V

    .line 195
    invoke-direct {v0, v13}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->setEventListener(Landroid/view/View;)V

    .line 197
    invoke-virtual {v13}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/widget/LinearLayout$LayoutParams;

    .line 198
    iget v7, v0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->width:I

    iput v7, v15, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 199
    iput v12, v15, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 200
    iget-object v7, v0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->tv_row2:[Landroid/widget/TextView;

    aput-object v14, v7, v10

    .line 201
    iget-object v7, v0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->stvAccessListener:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureTextView$SendAccessiBilityEventListener;

    invoke-virtual {v14, v7}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureTextView;->setSendAccessiBilityEventListener(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureTextView$SendAccessiBilityEventListener;)V

    .line 202
    iget-object v7, v0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->sflAccessListenr:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout$SendAccessiBilityEventListener;

    invoke-virtual {v13, v7}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout;->setSendAccessiBilityEventListener(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout$SendAccessiBilityEventListener;)V

    add-int/lit8 v10, v10, 0x1

    const/4 v7, 0x0

    goto :goto_2

    :cond_4
    if-ne v8, v5, :cond_7

    add-int/lit8 v7, v11, -0x2

    .line 205
    new-array v7, v7, [Landroid/widget/TextView;

    iput-object v7, v0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->tv_row3:[Landroid/widget/TextView;

    const/4 v7, 0x0

    :goto_3
    if-ge v7, v11, :cond_1

    .line 207
    invoke-virtual {v9, v7}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout;

    .line 209
    invoke-virtual {v10}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout$LayoutParams;

    if-nez v7, :cond_5

    .line 212
    iput v3, v13, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 213
    iput-object v10, v0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->ib_shift:Landroid/widget/FrameLayout;

    goto :goto_4

    :cond_5
    add-int/lit8 v14, v11, -0x1

    if-ne v7, v14, :cond_6

    .line 215
    iput v3, v13, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v14, 0x0

    .line 216
    invoke-virtual {v10, v14}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    iput-object v15, v0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->fake_view:Landroid/view/View;

    goto :goto_4

    :cond_6
    const/4 v14, 0x0

    .line 218
    iget v15, v0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->width:I

    iput v15, v13, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 219
    iput v12, v13, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 220
    invoke-virtual {v10, v14}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureTextView;

    .line 221
    iget v5, v0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->textSize:F

    invoke-virtual {v15, v14, v5}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureTextView;->setTextSize(IF)V

    .line 222
    new-instance v5, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureAccessbilityDelegate;

    invoke-direct {v5}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureAccessbilityDelegate;-><init>()V

    invoke-virtual {v15, v5}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureTextView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 223
    iget-object v5, v0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->tv_row3:[Landroid/widget/TextView;

    add-int/lit8 v14, v7, -0x1

    aput-object v15, v5, v14

    .line 224
    iget-object v5, v0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->stvAccessListener:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureTextView$SendAccessiBilityEventListener;

    invoke-virtual {v15, v5}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureTextView;->setSendAccessiBilityEventListener(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureTextView$SendAccessiBilityEventListener;)V

    .line 227
    :goto_4
    iput v12, v13, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 228
    invoke-direct {v0, v10}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->setEventListener(Landroid/view/View;)V

    .line 229
    iget-object v5, v0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->sflAccessListenr:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout$SendAccessiBilityEventListener;

    invoke-virtual {v10, v5}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout;->setSendAccessiBilityEventListener(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout$SendAccessiBilityEventListener;)V

    add-int/lit8 v7, v7, 0x1

    const/4 v5, 0x2

    goto :goto_3

    :cond_7
    const/4 v5, 0x0

    :goto_5
    if-ge v5, v11, :cond_1

    .line 233
    invoke-virtual {v9, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 235
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout$LayoutParams;

    if-nez v5, :cond_8

    .line 238
    iput v3, v13, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 239
    move-object v14, v7

    check-cast v14, Landroid/widget/FrameLayout;

    const/4 v15, 0x0

    .line 240
    invoke-virtual {v14, v15}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    iput-object v14, v0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->tv_type:Landroid/widget/TextView;

    :goto_6
    const/4 v14, 0x2

    goto :goto_7

    :cond_8
    if-ne v5, v10, :cond_9

    .line 242
    iget v14, v0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->width:I

    iput v14, v13, Landroid/widget/LinearLayout$LayoutParams;->width:I

    goto :goto_6

    :cond_9
    const/4 v14, 0x2

    if-ne v5, v14, :cond_a

    .line 244
    iput v6, v13, Landroid/widget/LinearLayout$LayoutParams;->width:I

    goto :goto_7

    :cond_a
    const/4 v15, 0x3

    if-ne v5, v15, :cond_b

    .line 246
    iget v15, v0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->width:I

    iput v15, v13, Landroid/widget/LinearLayout$LayoutParams;->width:I

    goto :goto_7

    .line 248
    :cond_b
    iput v2, v13, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 251
    :goto_7
    iput v12, v13, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 252
    invoke-direct {v0, v7}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->setEventListener(Landroid/view/View;)V

    .line 254
    instance-of v13, v7, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout;

    if-eqz v13, :cond_c

    .line 255
    nop

    nop

    .line 256
    iget-object v13, v0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->sflAccessListenr:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout$SendAccessiBilityEventListener;

    invoke-virtual {v7, v13}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout;->setSendAccessiBilityEventListener(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout$SendAccessiBilityEventListener;)V

    const/4 v13, 0x0

    .line 258
    invoke-virtual {v7, v13}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 259
    iget v15, v0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->textSize:F

    invoke-virtual {v7, v13, v15}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 260
    instance-of v15, v7, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureTextView;

    if-eqz v15, :cond_d

    .line 261
    nop

    nop

    iget-object v15, v0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->stvAccessListener:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureTextView$SendAccessiBilityEventListener;

    invoke-virtual {v7, v15}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureTextView;->setSendAccessiBilityEventListener(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureTextView$SendAccessiBilityEventListener;)V

    goto :goto_8

    :cond_c
    const/4 v13, 0x0

    :cond_d
    :goto_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :goto_9
    add-int/lit8 v8, v8, 0x1

    const/4 v5, 0x2

    const/4 v7, 0x0

    goto/16 :goto_0

    :cond_e
    return-void
.end method

.method private isZhLanguage()Z
    .locals 2

    .line 456
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 457
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "zh"

    .line 458
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private onTouchDown(Landroid/view/View;)Z
    .locals 3

    .line 304
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 305
    sget v1, Lcom/alipay/android/safepaysdk/R$id;->key_del1:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 306
    invoke-virtual {p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->onDel()V

    goto :goto_2

    .line 307
    :cond_0
    sget v1, Lcom/alipay/android/safepaysdk/R$id;->key_enter:I

    if-ne v0, v1, :cond_1

    goto :goto_2

    .line 309
    :cond_1
    sget v1, Lcom/alipay/android/safepaysdk/R$id;->key_space:I

    if-ne v0, v1, :cond_2

    const-string p1, " "

    .line 310
    invoke-virtual {p0, p1}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->onInput(Ljava/lang/String;)V

    goto :goto_2

    .line 311
    :cond_2
    sget v1, Lcom/alipay/android/safepaysdk/R$id;->key_ABC:I

    if-ne v0, v1, :cond_4

    .line 312
    iget-object p1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->shiftType:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$ShiftType;

    sget-object v0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$ShiftType;->up:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$ShiftType;

    if-ne p1, v0, :cond_3

    sget-object p1, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$ShiftType;->down:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$ShiftType;

    goto :goto_0

    :cond_3
    sget-object p1, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$ShiftType;->up:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$ShiftType;

    :goto_0
    iput-object p1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->shiftType:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$ShiftType;

    .line 313
    iget-object p1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->qwertType:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$QwertType;

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->shiftType:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$ShiftType;

    invoke-direct {p0, p1, v0}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->switchKeyboard(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$QwertType;Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$ShiftType;)V

    goto :goto_2

    .line 314
    :cond_4
    sget v1, Lcom/alipay/android/safepaysdk/R$id;->key_123:I

    if-ne v0, v1, :cond_6

    .line 315
    iget-object p1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->qwertType:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$QwertType;

    sget-object v0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$QwertType;->abc:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$QwertType;

    if-ne p1, v0, :cond_5

    sget-object p1, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$QwertType;->num:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$QwertType;

    goto :goto_1

    :cond_5
    sget-object p1, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$QwertType;->abc:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$QwertType;

    :goto_1
    iput-object p1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->qwertType:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$QwertType;

    .line 316
    sget-object p1, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$ShiftType;->up:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$ShiftType;

    iput-object p1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->shiftType:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$ShiftType;

    .line 317
    iget-object p1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->qwertType:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$QwertType;

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->shiftType:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$ShiftType;

    invoke-direct {p0, p1, v0}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->switchKeyboard(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$QwertType;Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$ShiftType;)V

    goto :goto_2

    .line 319
    :cond_6
    check-cast p1, Landroid/widget/FrameLayout;

    .line 320
    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 321
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 323
    invoke-virtual {p0, p1}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->onInput(Ljava/lang/String;)V

    :goto_2
    return v2
.end method

.method private onTouchUp(Landroid/view/View;)Z
    .locals 1

    .line 291
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 292
    sget v0, Lcom/alipay/android/safepaysdk/R$id;->key_enter:I

    if-ne p1, v0, :cond_0

    .line 293
    invoke-virtual {p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->onOK()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private setEventListener(Landroid/view/View;)V
    .locals 2

    .line 128
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 129
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 131
    :cond_0
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :goto_0
    return-void
.end method

.method private switchKeyboard(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$QwertType;Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$ShiftType;)V
    .locals 7

    .line 333
    sget-object v0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$QwertType;->abc:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$QwertType;

    const-string v1, "123"

    const/16 v2, 0x8

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne p1, v0, :cond_1

    .line 334
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->ib_shift:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 335
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->ib_shift:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 336
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->tv_type:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 338
    sget-object v0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$ShiftType;->up:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$ShiftType;

    if-ne p2, v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->ib_shift:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sget v1, Lcom/alipay/android/safepaysdk/R$drawable;->keyboard_key_shift_up:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 341
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->QWERT_ABC_SHIFT_UP_ROW_0:[Ljava/lang/String;

    .line 342
    iget-object v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->QWERT_ABC_SHIFT_UP_ROW_1:[Ljava/lang/String;

    .line 343
    iget-object v2, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->QWERT_ABC_SHIFT_UP_ROW_2:[Ljava/lang/String;

    goto :goto_0

    .line 345
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->ib_shift:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sget v1, Lcom/alipay/android/safepaysdk/R$drawable;->keyboard_key_shift_down:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 347
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->QWERT_ABC_SHIFT_DOWN_ROW_0:[Ljava/lang/String;

    .line 348
    iget-object v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->QWERT_ABC_SHIFT_DOWN_ROW_1:[Ljava/lang/String;

    .line 349
    iget-object v2, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->QWERT_ABC_SHIFT_DOWN_ROW_2:[Ljava/lang/String;

    goto :goto_0

    .line 352
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->ib_shift:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 353
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->ib_shift:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 354
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->ib_shift:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 355
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->ib_shift:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget v2, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->textSize:F

    invoke-virtual {v0, v4, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 357
    :cond_2
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->tv_type:Landroid/widget/TextView;

    const-string v2, "abc"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 359
    sget-object v0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$ShiftType;->up:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$ShiftType;

    if-ne p2, v0, :cond_3

    .line 360
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->ib_shift:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 361
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->QWERT_123_SHIFT_UP_ROW_0:[Ljava/lang/String;

    .line 362
    iget-object v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->QWERT_123_SHIFT_UP_ROW_1:[Ljava/lang/String;

    .line 363
    iget-object v2, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->QWERT_123_SHIFT_UP_ROW_2:[Ljava/lang/String;

    goto :goto_0

    .line 365
    :cond_3
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->ib_shift:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "#+="

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 366
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->QWERT_123_SHIFT_DOWN_ROW_0:[Ljava/lang/String;

    .line 367
    iget-object v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->QWERT_123_SHIFT_DOWN_ROW_1:[Ljava/lang/String;

    .line 368
    iget-object v2, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->QWERT_123_SHIFT_DOWN_ROW_2:[Ljava/lang/String;

    :goto_0
    const/4 v3, 0x0

    .line 372
    :goto_1
    iget-object v5, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->tv_row1:[Landroid/widget/TextView;

    array-length v6, v5

    if-ge v3, v6, :cond_4

    .line 373
    aget-object v5, v5, v3

    aget-object v6, v0, v3

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    .line 376
    :goto_2
    iget-object v3, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->tv_row2:[Landroid/widget/TextView;

    array-length v5, v3

    if-ge v0, v5, :cond_5

    .line 377
    aget-object v3, v3, v0

    aget-object v5, v1, v0

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 380
    :cond_5
    :goto_3
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->tv_row3:[Landroid/widget/TextView;

    array-length v1, v0

    if-ge v4, v1, :cond_6

    .line 381
    aget-object v0, v0, v4

    aget-object v1, v2, v4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 384
    :cond_6
    invoke-direct {p0, p1, p2}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->announceSwitchKeyboard(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$QwertType;Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$ShiftType;)V

    return-void
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 1

    .line 598
    invoke-super {p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/AbstractKeyboard;->getView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 88
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/alipay/android/safepaysdk/R$id;->key_enter:I

    if-ne v0, v1, :cond_0

    .line 89
    invoke-virtual {p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->onOK()V

    goto :goto_0

    .line 91
    :cond_0
    invoke-direct {p0, p1}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->onTouchDown(Landroid/view/View;)Z

    :goto_0
    return-void
.end method

.method public onInit(I)V
    .locals 1

    if-nez p1, :cond_3

    .line 442
    invoke-direct {p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->isZhLanguage()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 443
    iget-object p1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->mTts:Landroid/speech/tts/TextToSpeech;

    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 v0, -0x2

    if-ne p1, v0, :cond_2

    .line 446
    :cond_0
    iget-object p1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->mTts:Landroid/speech/tts/TextToSpeech;

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    goto :goto_0

    .line 449
    :cond_1
    iget-object p1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->mTts:Landroid/speech/tts/TextToSpeech;

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    :cond_2
    :goto_0
    const/4 p1, 0x1

    .line 451
    iput-boolean p1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->mTextToSpeechInitialized:Z

    :cond_3
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 276
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 277
    invoke-direct {p0, p1}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->onTouchDown(Landroid/view/View;)Z

    move-result p1

    return p1

    .line 278
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 279
    invoke-direct {p0, p1}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->onTouchUp(Landroid/view/View;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
