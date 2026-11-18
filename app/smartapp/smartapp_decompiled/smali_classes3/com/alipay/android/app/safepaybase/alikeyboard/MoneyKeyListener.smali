.class public Lcom/alipay/android/app/safepaybase/alikeyboard/MoneyKeyListener;
.super Landroid/text/method/NumberKeyListener;
.source "MoneyKeyListener.java"


# static fields
.field private static final MONEY_PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "^(([1-9]{1}\\d*)|([0]{1}))(\\.(\\d){0,2})?$"

    .line 19
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/app/safepaybase/alikeyboard/MoneyKeyListener;->MONEY_PATTERN:Ljava/util/regex/Pattern;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Landroid/text/method/NumberKeyListener;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getInstance()Lcom/alipay/android/app/safepaybase/alikeyboard/MoneyKeyListener;
    .locals 1

    .line 22
    new-instance v0, Lcom/alipay/android/app/safepaybase/alikeyboard/MoneyKeyListener;

    invoke-direct {v0}, Lcom/alipay/android/app/safepaybase/alikeyboard/MoneyKeyListener;-><init>()V

    return-object v0
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 0

    .line 49
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 52
    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    .line 55
    invoke-virtual {p2, p3, p5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    .line 58
    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result p4

    invoke-virtual {p2, p6, p4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 61
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 63
    sget-object p3, Lcom/alipay/android/app/safepaybase/alikeyboard/MoneyKeyListener;->MONEY_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p3, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p2

    .line 64
    invoke-virtual {p2}, Ljava/util/regex/Matcher;->find()Z

    move-result p2

    if-nez p2, :cond_0

    const-string p1, ""

    :cond_0
    return-object p1
.end method

.method protected getAcceptedChars()[C
    .locals 1

    const/16 v0, 0xb

    .line 41
    new-array v0, v0, [C

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x2es
    .end array-data
.end method

.method public getInputType()I
    .locals 3

    const-string v0, "samsung"

    .line 27
    invoke-static {v0}, Lcom/alipay/android/app/safepaybase/alikeyboard/TaoHelper;->isSpecialManuFacturer(Ljava/lang/String;)Z

    move-result v0

    const/16 v1, 0x80

    if-nez v0, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v0, v2, :cond_0

    goto :goto_0

    .line 31
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v2, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 74
    invoke-super {p0, p1, p2, p3, p4}, Landroid/text/method/NumberKeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
