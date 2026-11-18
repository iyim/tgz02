.class public Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;
.super Landroid/widget/LinearLayout;
.source "AlipayKeyboard.java"

# interfaces
.implements Lcom/alipay/android/app/safepaybase/alikeyboard/OnKeyboardListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard$AliKeyboardAction;
    }
.end annotation


# static fields
.field private static final LOCK_SHOW_KEYBOARD:Ljava/lang/Object;


# instance fields
.field private cachedKeyboardAction:Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard$AliKeyboardAction;

.field private currentKeyboard:Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;

.field private editText:Landroid/widget/EditText;

.field private isShowKeyboard:Z

.field private isSwitchedSystemKeyboard:Z

.field private final keyboardMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;",
            "Lcom/alipay/android/app/safepaybase/alikeyboard/AbstractKeyboard;",
            ">;"
        }
    .end annotation
.end field

.field private mActionListener:Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboardActionListener;

.field private mStatisticImpl:Lcom/alipay/android/app/safepaybase/alikeyboard/StatisticInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 155
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->LOCK_SHOW_KEYBOARD:Ljava/lang/Object;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 60
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 37
    sget-object v0, Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;->none:Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;

    iput-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->currentKeyboard:Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->keyboardMap:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 43
    iput-boolean v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->isShowKeyboard:Z

    .line 44
    iput-boolean v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->isSwitchedSystemKeyboard:Z

    .line 46
    sget-object v0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard$AliKeyboardAction;->None:Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard$AliKeyboardAction;

    iput-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->cachedKeyboardAction:Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard$AliKeyboardAction;

    const/4 v0, 0x0

    .line 48
    iput-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->mActionListener:Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboardActionListener;

    .line 50
    iput-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->mStatisticImpl:Lcom/alipay/android/app/safepaybase/alikeyboard/StatisticInterface;

    .line 61
    invoke-static {p1}, Lcom/alipay/android/app/safepaybase/util/ResUtils;->setUiContext(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    sget-object p1, Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;->none:Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;

    iput-object p1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->currentKeyboard:Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;

    .line 41
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->keyboardMap:Ljava/util/HashMap;

    const/4 p1, 0x0

    .line 43
    iput-boolean p1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->isShowKeyboard:Z

    .line 44
    iput-boolean p1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->isSwitchedSystemKeyboard:Z

    .line 46
    sget-object p1, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard$AliKeyboardAction;->None:Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard$AliKeyboardAction;

    iput-object p1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->cachedKeyboardAction:Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard$AliKeyboardAction;

    const/4 p1, 0x0

    .line 48
    iput-object p1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->mActionListener:Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboardActionListener;

    .line 50
    iput-object p1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->mStatisticImpl:Lcom/alipay/android/app/safepaybase/alikeyboard/StatisticInterface;

    return-void
.end method

.method static synthetic access$000(Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;)Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard$AliKeyboardAction;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->cachedKeyboardAction:Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard$AliKeyboardAction;

    return-object p0
.end method

.method static synthetic access$100(Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;Landroid/widget/EditText;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->showKeyboard(Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;Landroid/widget/EditText;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private initializeIdcardKeyboard()V
    .locals 2

    .line 146
    invoke-virtual {p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->removeAllViews()V

    .line 147
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->keyboardMap:Ljava/util/HashMap;

    sget-object v1, Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;->idcard:Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/safepaybase/alikeyboard/AbstractKeyboard;

    invoke-virtual {v0}, Lcom/alipay/android/app/safepaybase/alikeyboard/AbstractKeyboard;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->addView(Landroid/view/View;)V

    return-void
.end method

.method private initializeMoneyKeyboard()V
    .locals 2

    .line 133
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->editText:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 134
    new-instance v1, Lcom/alipay/android/app/safepaybase/alikeyboard/MoneyKeyListener;

    invoke-direct {v1}, Lcom/alipay/android/app/safepaybase/alikeyboard/MoneyKeyListener;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 136
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->removeAllViews()V

    .line 137
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->keyboardMap:Ljava/util/HashMap;

    sget-object v1, Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;->money:Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/safepaybase/alikeyboard/AbstractKeyboard;

    invoke-virtual {v0}, Lcom/alipay/android/app/safepaybase/alikeyboard/AbstractKeyboard;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->addView(Landroid/view/View;)V

    return-void
.end method

.method private initializeNoneKeyboard()V
    .locals 0

    .line 124
    invoke-virtual {p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->hideKeyboard()V

    return-void
.end method

.method private initializeNumKeyboard()V
    .locals 2

    .line 128
    invoke-virtual {p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->removeAllViews()V

    .line 129
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->keyboardMap:Ljava/util/HashMap;

    sget-object v1, Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;->num:Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/safepaybase/alikeyboard/AbstractKeyboard;

    invoke-virtual {v0}, Lcom/alipay/android/app/safepaybase/alikeyboard/AbstractKeyboard;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->addView(Landroid/view/View;)V

    return-void
.end method

.method private initializePhoneKeyboard()V
    .locals 2

    .line 151
    invoke-virtual {p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->removeAllViews()V

    .line 152
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->keyboardMap:Ljava/util/HashMap;

    sget-object v1, Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;->phone:Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/safepaybase/alikeyboard/AbstractKeyboard;

    invoke-virtual {v0}, Lcom/alipay/android/app/safepaybase/alikeyboard/AbstractKeyboard;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->addView(Landroid/view/View;)V

    return-void
.end method

.method private initializeQwertyKeyboard()V
    .locals 2

    .line 141
    invoke-virtual {p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->removeAllViews()V

    .line 142
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->keyboardMap:Ljava/util/HashMap;

    sget-object v1, Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;->abc:Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/safepaybase/alikeyboard/AbstractKeyboard;

    invoke-virtual {v0}, Lcom/alipay/android/app/safepaybase/alikeyboard/AbstractKeyboard;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->addView(Landroid/view/View;)V

    return-void
.end method

.method private setSelection(Landroid/widget/EditText;I)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 286
    :cond_0
    invoke-virtual {p1}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 290
    :cond_1
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-ltz p2, :cond_3

    if-le p2, v0, :cond_2

    goto :goto_0

    .line 294
    :cond_2
    invoke-static {p1, p2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    goto :goto_1

    .line 292
    :cond_3
    :goto_0
    invoke-static {p1, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    :goto_1
    return-void
.end method

.method private showKeyboard(Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;Landroid/widget/EditText;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .line 159
    sget-object v0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->LOCK_SHOW_KEYBOARD:Ljava/lang/Object;

    monitor-enter v0

    .line 160
    :try_start_0
    sget-object v1, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard$AliKeyboardAction;->None:Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard$AliKeyboardAction;

    iput-object v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->cachedKeyboardAction:Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard$AliKeyboardAction;

    const/4 v1, 0x1

    .line 161
    iput-boolean v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->isShowKeyboard:Z

    .line 162
    iput-object p2, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->editText:Landroid/widget/EditText;

    .line 165
    iget-object v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->editText:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    instance-of p2, p2, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureEditText;

    if-nez p2, :cond_0

    sget-object p2, Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;->money:Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;

    if-eq p1, p2, :cond_0

    .line 166
    iget-object p2, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->editText:Landroid/widget/EditText;

    new-instance v1, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureAccessbilityDelegate;

    invoke-direct {v1}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureAccessbilityDelegate;-><init>()V

    invoke-virtual {p2, v1}, Landroid/widget/EditText;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 169
    :cond_0
    iget-object p2, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->currentKeyboard:Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;

    if-eq p2, p1, :cond_1

    .line 170
    iput-object p1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->currentKeyboard:Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;

    .line 171
    invoke-direct {p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->switchKeyboard()V

    :cond_1
    const/4 p1, 0x0

    .line 173
    invoke-virtual {p0, p1}, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->setVisibility(I)V

    .line 174
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private switchKeyboard()V
    .locals 2

    .line 73
    sget-object v0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard$2;->$SwitchMap$com$alipay$android$app$safepaybase$alikeyboard$AliKeyboardType:[I

    iget-object v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->currentKeyboard:Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;

    invoke-virtual {v1}, Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 93
    invoke-direct {p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->initializeQwertyKeyboard()V

    goto :goto_0

    .line 90
    :pswitch_0
    invoke-direct {p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->initializePhoneKeyboard()V

    goto :goto_0

    .line 87
    :pswitch_1
    invoke-direct {p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->initializeIdcardKeyboard()V

    goto :goto_0

    .line 84
    :pswitch_2
    invoke-direct {p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->initializeNumKeyboard()V

    goto :goto_0

    .line 81
    :pswitch_3
    invoke-direct {p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->initializeMoneyKeyboard()V

    goto :goto_0

    .line 78
    :pswitch_4
    invoke-direct {p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->initializeQwertyKeyboard()V

    goto :goto_0

    .line 75
    :pswitch_5
    invoke-direct {p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->initializeNoneKeyboard()V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public hideKeyboard()V
    .locals 2

    .line 205
    sget-object v0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->LOCK_SHOW_KEYBOARD:Ljava/lang/Object;

    monitor-enter v0

    .line 206
    :try_start_0
    sget-object v1, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard$AliKeyboardAction;->None:Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard$AliKeyboardAction;

    iput-object v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->cachedKeyboardAction:Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard$AliKeyboardAction;

    const/4 v1, 0x0

    .line 207
    iput-boolean v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->isShowKeyboard:Z

    const/4 v1, 0x0

    .line 208
    iput-object v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->editText:Landroid/widget/EditText;

    .line 209
    sget-object v1, Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;->none:Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;

    iput-object v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->currentKeyboard:Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;

    const/16 v1, 0x8

    .line 210
    invoke-virtual {p0, v1}, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->setVisibility(I)V

    .line 211
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public initializeKeyboard(Landroid/widget/FrameLayout;)V
    .locals 6

    .line 102
    invoke-virtual {p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 103
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x1

    const/16 v3, 0x10

    if-lt v1, v3, :cond_0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x2

    if-eqz v0, :cond_1

    .line 105
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->keyboardMap:Ljava/util/HashMap;

    sget-object v3, Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;->num:Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;

    new-instance v4, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;

    invoke-virtual {p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5, p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;-><init>(Landroid/content/Context;Lcom/alipay/android/app/safepaybase/alikeyboard/OnKeyboardListener;)V

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->keyboardMap:Ljava/util/HashMap;

    sget-object v3, Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;->money:Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;

    new-instance v4, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureMoneyKeyboard;

    invoke-virtual {p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5, p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureMoneyKeyboard;-><init>(Landroid/content/Context;Lcom/alipay/android/app/safepaybase/alikeyboard/OnKeyboardListener;)V

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->keyboardMap:Ljava/util/HashMap;

    sget-object v3, Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;->abc:Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;

    new-instance v4, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;

    invoke-virtual {p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5, p1, p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;-><init>(Landroid/content/Context;Landroid/widget/FrameLayout;Lcom/alipay/android/app/safepaybase/alikeyboard/OnKeyboardListener;)V

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    iget-object p1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->keyboardMap:Ljava/util/HashMap;

    sget-object v0, Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;->idcard:Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;

    new-instance v3, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;

    invoke-virtual {p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, p0, v1}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;-><init>(Landroid/content/Context;Lcom/alipay/android/app/safepaybase/alikeyboard/OnKeyboardListener;I)V

    invoke-virtual {p1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    iget-object p1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->keyboardMap:Ljava/util/HashMap;

    sget-object v0, Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;->phone:Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;

    new-instance v1, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;

    invoke-virtual {p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3, p0, v2}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;-><init>(Landroid/content/Context;Lcom/alipay/android/app/safepaybase/alikeyboard/OnKeyboardListener;I)V

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 111
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->keyboardMap:Ljava/util/HashMap;

    sget-object v3, Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;->num:Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;

    new-instance v4, Lcom/alipay/android/app/safepaybase/alikeyboard/NumKeyboard;

    invoke-virtual {p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5, p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/NumKeyboard;-><init>(Landroid/content/Context;Lcom/alipay/android/app/safepaybase/alikeyboard/OnKeyboardListener;)V

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->keyboardMap:Ljava/util/HashMap;

    sget-object v3, Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;->money:Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;

    new-instance v4, Lcom/alipay/android/app/safepaybase/alikeyboard/MoneyKeyboard;

    invoke-virtual {p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5, p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/MoneyKeyboard;-><init>(Landroid/content/Context;Lcom/alipay/android/app/safepaybase/alikeyboard/OnKeyboardListener;)V

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->keyboardMap:Ljava/util/HashMap;

    sget-object v3, Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;->abc:Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;

    new-instance v4, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;

    invoke-virtual {p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5, p1, p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;-><init>(Landroid/content/Context;Landroid/widget/FrameLayout;Lcom/alipay/android/app/safepaybase/alikeyboard/OnKeyboardListener;)V

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    iget-object p1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->keyboardMap:Ljava/util/HashMap;

    sget-object v0, Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;->idcard:Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;

    new-instance v3, Lcom/alipay/android/app/safepaybase/alikeyboard/NumKeyboard;

    invoke-virtual {p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, p0, v1}, Lcom/alipay/android/app/safepaybase/alikeyboard/NumKeyboard;-><init>(Landroid/content/Context;Lcom/alipay/android/app/safepaybase/alikeyboard/OnKeyboardListener;I)V

    invoke-virtual {p1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    iget-object p1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->keyboardMap:Ljava/util/HashMap;

    sget-object v0, Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;->phone:Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;

    new-instance v1, Lcom/alipay/android/app/safepaybase/alikeyboard/NumKeyboard;

    invoke-virtual {p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3, p0, v2}, Lcom/alipay/android/app/safepaybase/alikeyboard/NumKeyboard;-><init>(Landroid/content/Context;Lcom/alipay/android/app/safepaybase/alikeyboard/OnKeyboardListener;I)V

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    :goto_1
    invoke-virtual {p0, v2}, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->setOrientation(I)V

    .line 119
    sget p1, Lcom/alipay/android/safepaysdk/R$drawable;->keyboard_shape:I

    invoke-virtual {p0, p1}, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->setBackgroundResource(I)V

    .line 120
    invoke-virtual {p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->removeAllViews()V

    return-void
.end method

.method public isShowKeyboard()Z
    .locals 1

    .line 53
    iget-boolean v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->isShowKeyboard:Z

    return v0
.end method

.method public onDel()V
    .locals 3

    .line 220
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->mActionListener:Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboardActionListener;

    if-eqz v0, :cond_0

    .line 221
    invoke-virtual {v0}, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboardActionListener;->onDel()V

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->editText:Landroid/widget/EditText;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 228
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    .line 229
    iget-object v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->editText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v1

    if-gtz v0, :cond_2

    return-void

    :cond_2
    if-ne v0, v1, :cond_3

    .line 236
    iget-object v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->editText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    add-int/lit8 v2, v0, -0x1

    invoke-interface {v1, v2, v0}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_0

    .line 238
    :cond_3
    iget-object v2, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->editText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    :cond_4
    :goto_0
    return-void
.end method

.method public onInput(Ljava/lang/String;)V
    .locals 2

    .line 258
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->mActionListener:Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboardActionListener;

    if-eqz v0, :cond_0

    .line 259
    invoke-virtual {v0, p1}, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboardActionListener;->onInput(Ljava/lang/String;)V

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->editText:Landroid/widget/EditText;

    if-nez v0, :cond_1

    return-void

    .line 265
    :cond_1
    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    .line 266
    iget-object v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->editText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 267
    iget-object v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->editText:Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr v0, p1

    invoke-direct {p0, v1, v0}, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->setSelection(Landroid/widget/EditText;I)V

    return-void
.end method

.method public onOK()V
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->mActionListener:Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboardActionListener;

    if-eqz v0, :cond_0

    .line 248
    invoke-virtual {v0}, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboardActionListener;->onOk()V

    .line 250
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->hideKeyboard()V

    return-void
.end method

.method public onStatisticEvent(Ljava/lang/String;)V
    .locals 1

    .line 272
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->mStatisticImpl:Lcom/alipay/android/app/safepaybase/alikeyboard/StatisticInterface;

    if-eqz v0, :cond_0

    .line 273
    invoke-interface {v0, p1}, Lcom/alipay/android/app/safepaybase/alikeyboard/StatisticInterface;->onStatistic(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setKeyboardActionListener(Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboardActionListener;)V
    .locals 0

    .line 298
    iput-object p1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->mActionListener:Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboardActionListener;

    return-void
.end method

.method public setStatisticInterface(Lcom/alipay/android/app/safepaybase/alikeyboard/StatisticInterface;)V
    .locals 0

    .line 302
    iput-object p1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->mStatisticImpl:Lcom/alipay/android/app/safepaybase/alikeyboard/StatisticInterface;

    return-void
.end method

.method public showKeyboard(Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;Landroid/widget/EditText;J)V
    .locals 3

    .line 178
    iget-boolean v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->isSwitchedSystemKeyboard:Z

    if-eqz v0, :cond_0

    const/4 p3, 0x0

    .line 179
    iput-boolean p3, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->isSwitchedSystemKeyboard:Z

    const-wide/16 p3, 0xc8

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    if-gtz v2, :cond_1

    .line 184
    invoke-direct {p0, p1, p2}, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->showKeyboard(Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;Landroid/widget/EditText;)V

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 188
    iput-boolean v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->isShowKeyboard:Z

    .line 189
    sget-object v0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard$AliKeyboardAction;->Show:Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard$AliKeyboardAction;

    iput-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->cachedKeyboardAction:Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard$AliKeyboardAction;

    .line 190
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 191
    new-instance v1, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard$1;-><init>(Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;Landroid/widget/EditText;)V

    invoke-virtual {v0, v1, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
