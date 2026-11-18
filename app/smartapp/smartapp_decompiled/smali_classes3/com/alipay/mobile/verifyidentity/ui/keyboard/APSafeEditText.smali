.class public final Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;
.super Lcom/alipay/mobile/verifyidentity/ui/APEditText;
.source "APSafeEditText.java"


# instance fields
.field final TAG:Ljava/lang/String;

.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View$OnTouchListener;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/view/View$OnTouchListener;

.field private c:Landroid/view/View$OnFocusChangeListener;

.field private d:Landroid/view/View$OnFocusChangeListener;

.field private e:Landroid/view/View$OnFocusChangeListener;

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Landroid/app/Dialog;

.field protected isAutoShowSafeKeyboard:Z

.field private j:Z

.field private k:Z

.field private l:Z

.field private final m:Ljava/lang/String;

.field private n:J

.field private o:J

.field private p:I

.field private q:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 63
    invoke-direct {p0, p1}, Lcom/alipay/mobile/verifyidentity/ui/APEditText;-><init>(Landroid/content/Context;)V

    const-string p1, "APSafeEditText"

    .line 40
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->TAG:Ljava/lang/String;

    const/4 p1, 0x0

    .line 46
    iput-boolean p1, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->f:Z

    .line 47
    iput-boolean p1, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->g:Z

    const/4 v0, 0x1

    .line 48
    iput-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->h:Z

    .line 50
    iput-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->j:Z

    .line 51
    iput-boolean p1, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->k:Z

    .line 52
    iput-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->isAutoShowSafeKeyboard:Z

    .line 53
    iput-boolean p1, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->l:Z

    const-string v0, ""

    .line 54
    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->m:Ljava/lang/String;

    .line 58
    iput p1, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->p:I

    .line 59
    iput-boolean p1, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->q:Z

    .line 64
    invoke-direct {p0}, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->a()V

    .line 65
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const-class p1, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {p1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "hackbyte "

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 68
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/verifyidentity/ui/APEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p1, "APSafeEditText"

    .line 40
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->TAG:Ljava/lang/String;

    const/4 p1, 0x0

    .line 46
    iput-boolean p1, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->f:Z

    .line 47
    iput-boolean p1, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->g:Z

    const/4 p2, 0x1

    .line 48
    iput-boolean p2, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->h:Z

    .line 50
    iput-boolean p2, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->j:Z

    .line 51
    iput-boolean p1, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->k:Z

    .line 52
    iput-boolean p2, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->isAutoShowSafeKeyboard:Z

    .line 53
    iput-boolean p1, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->l:Z

    const-string p2, ""

    .line 54
    iput-object p2, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->m:Ljava/lang/String;

    .line 58
    iput p1, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->p:I

    .line 59
    iput-boolean p1, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->q:Z

    .line 69
    invoke-direct {p0}, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 73
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/verifyidentity/ui/APEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p1, "APSafeEditText"

    .line 40
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->TAG:Ljava/lang/String;

    const/4 p1, 0x0

    .line 46
    iput-boolean p1, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->f:Z

    .line 47
    iput-boolean p1, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->g:Z

    const/4 p2, 0x1

    .line 48
    iput-boolean p2, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->h:Z

    .line 50
    iput-boolean p2, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->j:Z

    .line 51
    iput-boolean p1, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->k:Z

    .line 52
    iput-boolean p2, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->isAutoShowSafeKeyboard:Z

    .line 53
    iput-boolean p1, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->l:Z

    const-string p2, ""

    .line 54
    iput-object p2, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->m:Ljava/lang/String;

    .line 58
    iput p1, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->p:I

    .line 59
    iput-boolean p1, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->q:Z

    .line 74
    invoke-direct {p0}, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->a()V

    return-void
.end method

.method private a()V
    .locals 1

    .line 79
    iget-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->q:Z

    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->getInputType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->setInputType(I)V

    goto :goto_0

    .line 84
    :cond_0
    iget-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->isAutoShowSafeKeyboard:Z

    if-eqz v0, :cond_1

    .line 86
    invoke-direct {p0}, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->h()V

    :cond_1
    :goto_0
    return-void
.end method

.method private a(Landroid/view/View$OnFocusChangeListener;)V
    .locals 1

    .line 543
    iget-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->f:Z

    if-eqz v0, :cond_0

    .line 544
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->d:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 545
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->c:Landroid/view/View$OnFocusChangeListener;

    goto :goto_0

    .line 549
    :cond_0
    invoke-super {p0, p1}, Lcom/alipay/mobile/verifyidentity/ui/APEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private a(Landroid/view/View$OnTouchListener;)V
    .locals 1

    .line 521
    iget-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->b:Landroid/view/View$OnTouchListener;

    .line 522
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 524
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->a:Ljava/lang/ref/WeakReference;

    goto :goto_1

    .line 526
    :cond_1
    invoke-super {p0, p1}, Lcom/alipay/mobile/verifyidentity/ui/APEditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :goto_1
    return-void
.end method

.method private a(Z)V
    .locals 7

    .line 158
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 165
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "setSoftInputShownOnFocus"

    new-array v5, v2, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 169
    :catch_0
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "setShowSoftInputOnFocus"

    new-array v5, v2, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    :catch_1
    nop

    :goto_0
    if-eqz v0, :cond_1

    .line 175
    :try_start_2
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 176
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :cond_1
    return-void
.end method

.method private a(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 226
    iget-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->f:Z

    const-string v1, "exception when call system onTouchEvent"

    const-string v2, "APSafeEditText"

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    .line 227
    iput-boolean v3, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->g:Z

    .line 229
    :try_start_0
    invoke-super {p0, p1}, Lcom/alipay/mobile/verifyidentity/ui/APEditText;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v3, p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 232
    invoke-static {v2, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 p1, 0x0

    .line 236
    iput-boolean p1, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->g:Z

    goto :goto_1

    .line 240
    :cond_0
    :try_start_1
    invoke-super {p0, p1}, Lcom/alipay/mobile/verifyidentity/ui/APEditText;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 243
    invoke-static {v2, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return v3
.end method

.method static synthetic access$000(Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;)Z
    .locals 0

    .line 39
    iget-boolean p0, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->f:Z

    return p0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->a:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic access$200(Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->i()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$300(Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;)Landroid/view/View$OnFocusChangeListener;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->c:Landroid/view/View$OnFocusChangeListener;

    return-object p0
.end method

.method private b()V
    .locals 1

    const/4 v0, 0x0

    .line 151
    invoke-direct {p0, v0}, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->a(Z)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private c()Z
    .locals 2

    .line 264
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_1

    .line 265
    iget-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->g:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 269
    :cond_0
    invoke-super {p0}, Lcom/alipay/mobile/verifyidentity/ui/APEditText;->onCheckIsTextEditor()Z

    move-result v0

    return v0

    .line 273
    :cond_1
    invoke-super {p0}, Lcom/alipay/mobile/verifyidentity/ui/APEditText;->onCheckIsTextEditor()Z

    move-result v0

    return v0
.end method

.method private d()V
    .locals 1

    const/4 v0, 0x0

    .line 309
    invoke-super {p0, v0}, Lcom/alipay/mobile/verifyidentity/ui/APEditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 310
    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->d:Landroid/view/View$OnFocusChangeListener;

    return-void
.end method

.method private e()V
    .locals 1

    .line 314
    new-instance v0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText$1;-><init>(Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;)V

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->b:Landroid/view/View$OnTouchListener;

    .line 337
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->b:Landroid/view/View$OnTouchListener;

    invoke-super {p0, v0}, Lcom/alipay/mobile/verifyidentity/ui/APEditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private f()V
    .locals 2

    const-string v0, "YangWei"

    const-string v1, "unSetKeyboardFocusChangeListener"

    .line 341
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 342
    invoke-super {p0, v0}, Lcom/alipay/mobile/verifyidentity/ui/APEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 343
    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->d:Landroid/view/View$OnFocusChangeListener;

    return-void
.end method

.method private g()V
    .locals 1

    .line 347
    new-instance v0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText$2;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText$2;-><init>(Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;)V

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->d:Landroid/view/View$OnFocusChangeListener;

    .line 364
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->d:Landroid/view/View$OnFocusChangeListener;

    invoke-super {p0, v0}, Lcom/alipay/mobile/verifyidentity/ui/APEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method

.method private h()V
    .locals 1

    .line 371
    iget-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->isAutoShowSafeKeyboard:Z

    if-nez v0, :cond_0

    return-void

    .line 375
    :cond_0
    new-instance v0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText$3;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText$3;-><init>(Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;)V

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->e:Landroid/view/View$OnFocusChangeListener;

    .line 397
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->e:Landroid/view/View$OnFocusChangeListener;

    invoke-super {p0, v0}, Lcom/alipay/mobile/verifyidentity/ui/APEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method

.method public static final hideNormalKeyboard(Landroid/widget/EditText;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    .line 432
    :cond_0
    invoke-virtual {p0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    .line 433
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-nez v0, :cond_1

    return-void

    .line 436
    :cond_1
    invoke-virtual {p0}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x1

    .line 435
    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 440
    invoke-virtual {p0}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object p0

    const/4 v1, 0x2

    .line 439
    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_2
    return-void
.end method

.method private i()V
    .locals 2

    .line 447
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->n:J

    .line 448
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->getSafeText()Landroid/text/Editable;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 451
    iput v0, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->p:I

    goto :goto_0

    .line 454
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 455
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 459
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->p:I

    :goto_0
    return-void
.end method

.method private j()V
    .locals 6

    .line 463
    iget-wide v0, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->o:J

    iget-wide v2, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->n:J

    sub-long/2addr v0, v2

    .line 464
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "focusLoseTime:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->o:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->l(Ljava/lang/String;)V

    .line 465
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "focusGetTime :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->n:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->l(Ljava/lang/String;)V

    .line 466
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "timeUse:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->l(Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    return-void

    :cond_0
    const-wide/32 v2, 0x1d4c0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    return-void

    .line 476
    :cond_1
    iget-boolean v2, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->f:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    .line 482
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isUseSafeKeyboard:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->l(Ljava/lang/String;)V

    .line 483
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->getSafeText()Landroid/text/Editable;

    move-result-object v2

    if-nez v2, :cond_3

    .line 486
    iput v3, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->p:I

    return-void

    .line 489
    :cond_3
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 490
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 492
    iput v3, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->p:I

    return-void

    .line 495
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "focusGetTxtLen:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->p:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->l(Ljava/lang/String;)V

    .line 496
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    iget v5, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->p:I

    sub-int/2addr v4, v5

    .line 497
    iput v3, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->p:I

    .line 498
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pstrLen:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "pstr:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->l(Ljava/lang/String;)V

    if-gtz v4, :cond_5

    return-void

    :cond_5
    long-to-float v0, v0

    int-to-float v1, v4

    div-float/2addr v0, v1

    .line 504
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "aovct:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->l(Ljava/lang/String;)V

    return-void
.end method

.method private k()V
    .locals 1

    const/4 v0, 0x0

    .line 621
    iput-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->f:Z

    .line 622
    invoke-direct {p0}, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->f()V

    .line 623
    invoke-direct {p0}, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->d()V

    return-void
.end method

.method static final l(Ljava/lang/String;)V
    .locals 2

    .line 580
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "APKeyboard "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "APKeyboard"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static final showNormalKeyboard(Landroid/widget/EditText;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 406
    :cond_0
    invoke-virtual {p0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    .line 407
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x1

    .line 408
    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "first show fail"

    .line 411
    invoke-static {v1}, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->l(Ljava/lang/String;)V

    const/4 v1, 0x2

    .line 412
    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "second show fail"

    .line 415
    invoke-static {v1}, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->l(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 416
    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "thrid show fail"

    .line 420
    invoke-static {p0}, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->l(Ljava/lang/String;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public closeSafeKeyboard()V
    .locals 1

    .line 584
    iget-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->f:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 586
    iput-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->k:Z

    return-void
.end method

.method public getDialog()Landroid/app/Dialog;
    .locals 1

    .line 594
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->i:Landroid/app/Dialog;

    return-object v0
.end method

.method public getOnFocusChangeListener()Landroid/view/View$OnFocusChangeListener;
    .locals 1

    .line 681
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->c:Landroid/view/View$OnFocusChangeListener;

    if-eqz v0, :cond_0

    return-object v0

    .line 682
    :cond_0
    invoke-super {p0}, Lcom/alipay/mobile/verifyidentity/ui/APEditText;->getOnFocusChangeListener()Landroid/view/View$OnFocusChangeListener;

    move-result-object v0

    return-object v0
.end method

.method public getSafeText()Landroid/text/Editable;
    .locals 1

    .line 129
    invoke-super {p0}, Lcom/alipay/mobile/verifyidentity/ui/APEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method public getText()Landroid/text/Editable;
    .locals 4

    .line 98
    iget-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->l:Z

    if-eqz v0, :cond_2

    .line 99
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    .line 100
    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 101
    array-length v2, v0

    const/4 v3, 0x2

    if-le v2, v3, :cond_0

    const/4 v2, 0x1

    .line 102
    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 104
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 105
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 104
    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    invoke-super {p0}, Lcom/alipay/mobile/verifyidentity/ui/APEditText;->getText()Landroid/text/Editable;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    :catch_0
    :cond_0
    if-nez v1, :cond_3

    const-string v0, "APSafeEditText"

    const-string v1, "\u8bd5\u56fe\u975e\u6cd5\u83b7\u53d6\u5bc6\u7801\u503c"

    .line 114
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const-string v1, ""

    .line 116
    :goto_0
    invoke-super {p0}, Lcom/alipay/mobile/verifyidentity/ui/APEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 117
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "*"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 119
    :cond_1
    invoke-static {}, Landroid/text/Editable$Factory;->getInstance()Landroid/text/Editable$Factory;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/text/Editable$Factory;->newEditable(Ljava/lang/CharSequence;)Landroid/text/Editable;

    move-result-object v1

    goto :goto_1

    .line 123
    :cond_2
    invoke-super {p0}, Lcom/alipay/mobile/verifyidentity/ui/APEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    :cond_3
    :goto_1
    return-object v1
.end method

.method public bridge synthetic getText()Ljava/lang/CharSequence;
    .locals 1

    .line 39
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method public isAutoShowSafeKeyboard()Z
    .locals 1

    .line 672
    iget-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->isAutoShowSafeKeyboard:Z

    return v0
.end method

.method public isOnShowEnableOk()Z
    .locals 1

    .line 664
    iget-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->j:Z

    return v0
.end method

.method public isPasswordType()Z
    .locals 1

    .line 590
    iget-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->f:Z

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .line 656
    iget-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->k:Z

    return v0
.end method

.method public isTextSelectable()Z
    .locals 1

    .line 279
    iget-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->q:Z

    if-eqz v0, :cond_1

    .line 281
    iget-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->g:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 282
    :cond_0
    invoke-super {p0}, Lcom/alipay/mobile/verifyidentity/ui/APEditText;->isTextSelectable()Z

    move-result v0

    return v0

    .line 285
    :cond_1
    invoke-super {p0}, Lcom/alipay/mobile/verifyidentity/ui/APEditText;->isTextSelectable()Z

    move-result v0

    return v0
.end method

.method public isUseSafePassKeyboard()Z
    .locals 1

    .line 602
    iget-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->h:Z

    return v0
.end method

.method public onCheckIsTextEditor()Z
    .locals 1

    .line 256
    iget-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->q:Z

    if-eqz v0, :cond_0

    .line 257
    invoke-direct {p0}, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->c()Z

    move-result v0

    return v0

    .line 259
    :cond_0
    invoke-super {p0}, Lcom/alipay/mobile/verifyidentity/ui/APEditText;->onCheckIsTextEditor()Z

    move-result v0

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .line 291
    invoke-super {p0}, Lcom/alipay/mobile/verifyidentity/ui/APEditText;->onDetachedFromWindow()V

    .line 292
    iget-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->q:Z

    if-eqz v0, :cond_0

    .line 294
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->o:J

    .line 295
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ondetached focusLoseTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->o:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->l(Ljava/lang/String;)V

    .line 296
    invoke-direct {p0}, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->j()V

    .line 297
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->closeSafeKeyboard()V

    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 212
    invoke-super {p0, p1, p2, p3, p4}, Lcom/alipay/mobile/verifyidentity/ui/APEditText;->onTextChanged(Ljava/lang/CharSequence;III)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 217
    iget-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->q:Z

    if-eqz v0, :cond_0

    .line 219
    invoke-direct {p0, p1}, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->a(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 221
    :cond_0
    invoke-super {p0, p1}, Lcom/alipay/mobile/verifyidentity/ui/APEditText;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setAutoShowSafeKeyboard(Z)V
    .locals 0

    .line 676
    iput-boolean p1, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->isAutoShowSafeKeyboard:Z

    return-void
.end method

.method public setDialog(Landroid/app/Dialog;)V
    .locals 0

    .line 598
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->i:Landroid/app/Dialog;

    return-void
.end method

.method public setGreatWall(Z)V
    .locals 0

    .line 92
    iput-boolean p1, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->l:Z

    return-void
.end method

.method public setInputType(I)V
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    and-int/lit16 v0, p1, 0xfff

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x81

    if-ne v0, v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 140
    :goto_0
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xb

    if-lt v4, v5, :cond_3

    const/16 v4, 0xe1

    if-ne v0, v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    const/16 v5, 0x12

    if-ne v0, v5, :cond_2

    const/4 v2, 0x1

    :cond_2
    move v0, v2

    move v2, v4

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    if-nez v3, :cond_4

    if-nez v2, :cond_4

    if-eqz v0, :cond_5

    .line 145
    :cond_4
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->setSafeKeyboard()V

    .line 147
    :cond_5
    invoke-super {p0, p1}, Lcom/alipay/mobile/verifyidentity/ui/APEditText;->setInputType(I)V

    return-void
.end method

.method public setOKText(Ljava/lang/String;)V
    .locals 1

    .line 627
    iget-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->q:Z

    if-nez v0, :cond_0

    .line 629
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->getImeActionId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->setImeActionLabel(Ljava/lang/CharSequence;I)V

    :cond_0
    return-void
.end method

.method public setOkEnabled(Z)V
    .locals 2

    .line 634
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isUseSafeKeyboard:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->q:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->l(Ljava/lang/String;)V

    .line 635
    iget-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->q:Z

    if-eqz v0, :cond_1

    .line 637
    iget-boolean p1, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->f:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    if-eqz p1, :cond_2

    const/16 p1, 0xff

    .line 647
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->setImeOptions(I)V

    goto :goto_0

    .line 650
    :cond_2
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->getImeActionId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->setImeOptions(I)V

    :goto_0
    return-void
.end method

.method public setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 533
    :cond_0
    iget-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->q:Z

    if-eqz v0, :cond_1

    .line 535
    invoke-direct {p0, p1}, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->a(Landroid/view/View$OnFocusChangeListener;)V

    goto :goto_0

    .line 538
    :cond_1
    invoke-super {p0, p1}, Lcom/alipay/mobile/verifyidentity/ui/APEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    :goto_0
    return-void
.end method

.method public setOnShowEnableOk(Z)V
    .locals 0

    .line 668
    iput-boolean p1, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->j:Z

    return-void
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 511
    :cond_0
    iget-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->q:Z

    if-eqz v0, :cond_1

    .line 513
    invoke-direct {p0, p1}, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->a(Landroid/view/View$OnTouchListener;)V

    goto :goto_0

    .line 516
    :cond_1
    invoke-super {p0, p1}, Lcom/alipay/mobile/verifyidentity/ui/APEditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :goto_0
    return-void
.end method

.method public setSafeKeyboard()V
    .locals 1

    const/4 v0, 0x1

    .line 302
    iput-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->f:Z

    .line 303
    invoke-direct {p0}, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->b()V

    .line 304
    invoke-direct {p0}, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->e()V

    .line 305
    invoke-direct {p0}, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->g()V

    return-void
.end method

.method public setShowing(Z)V
    .locals 0

    .line 660
    iput-boolean p1, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->k:Z

    return-void
.end method

.method public setUseSafePassKeyboard(ZI)V
    .locals 0

    .line 606
    iget-boolean p2, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->q:Z

    if-nez p2, :cond_0

    return-void

    .line 610
    :cond_0
    iput-boolean p1, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->h:Z

    if-eqz p1, :cond_1

    .line 612
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->setSafeKeyboard()V

    goto :goto_0

    .line 616
    :cond_1
    invoke-direct {p0}, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->k()V

    :goto_0
    return-void
.end method

.method public showSafeKeyboard()V
    .locals 3

    .line 554
    iget-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->q:Z

    if-eqz v0, :cond_1

    .line 556
    iget-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->f:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 557
    iput-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->k:Z

    .line 558
    new-instance v0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText$4;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText$4;-><init>(Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;)V

    const-wide/16 v1, 0xa

    invoke-virtual {p0, v0, v1, v2}, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    const-string v0, "call show normal"

    .line 567
    invoke-static {v0}, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->l(Ljava/lang/String;)V

    .line 568
    new-instance v0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText$5;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText$5;-><init>(Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;)V

    .line 575
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method
