.class public Lcom/alipay/mobile/verifyidentity/ui/APInputBox;
.super Lcom/alipay/mobile/verifyidentity/ui/APRelativeLayout;
.source "APInputBox.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;
.implements Lcom/alipay/mobile/verifyidentity/ui/APLineGroupItemInterface;


# static fields
.field public static final DARK:I = 0x11

.field public static final NORMAL:I = 0x10


# instance fields
.field private a:I

.field private b:Z

.field protected bgGroup:I

.field protected bgType:I

.field private c:I

.field private final d:Lcom/alipay/mobile/verifyidentity/ui/APImageButton;

.field private final e:Lcom/alipay/mobile/verifyidentity/ui/APTextView;

.field private f:Z

.field private g:Landroid/view/View$OnClickListener;

.field private h:Lcom/alipay/mobile/verifyidentity/ui/inputfomatter/APFormatter;

.field private final i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/alipay/mobile/verifyidentity/ui/validator/APValidator;",
            ">;"
        }
    .end annotation
.end field

.field private j:I

.field private k:Landroid/content/res/ColorStateList;

.field private l:Landroid/content/res/ColorStateList;

.field private m:Landroid/view/View$OnFocusChangeListener;

.field protected final mInputContent:Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 155
    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 156
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
    .locals 10

    .line 159
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/verifyidentity/ui/APRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x4

    .line 119
    iput v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->a:I

    const/4 v1, 0x0

    .line 121
    iput-boolean v1, p0, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->b:Z

    .line 122
    iput v1, p0, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->c:I

    const/4 v2, 0x1

    .line 132
    iput-boolean v2, p0, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->f:Z

    const/16 v3, 0x10

    .line 135
    iput v3, p0, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->bgGroup:I

    const/4 v4, 0x0

    .line 139
    iput-object v4, p0, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->h:Lcom/alipay/mobile/verifyidentity/ui/inputfomatter/APFormatter;

    .line 141
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->i:Ljava/util/ArrayList;

    .line 145
    iput-object v4, p0, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->k:Landroid/content/res/ColorStateList;

    .line 147
    iput-object v4, p0, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->l:Landroid/content/res/ColorStateList;

    .line 160
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->inflateLayout(Landroid/content/Context;)V

    .line 161
    sget v5, Lcom/alipay/android/phone/mobilecommon/verifyidentity/R$id;->content:I

    invoke-virtual {p0, v5}, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;

    iput-object v5, p0, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->mInputContent:Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;

    .line 162
    sget v5, Lcom/alipay/android/phone/mobilecommon/verifyidentity/R$id;->contentName:I

    invoke-virtual {p0, v5}, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/alipay/mobile/verifyidentity/ui/APTextView;

    iput-object v5, p0, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->e:Lcom/alipay/mobile/verifyidentity/ui/APTextView;

    .line 163
    sget v5, Lcom/alipay/android/phone/mobilecommon/verifyidentity/R$id;->clearButton:I

    invoke-virtual {p0, v5}, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/alipay/mobile/verifyidentity/ui/APImageButton;

    iput-object v5, p0, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->d:Lcom/alipay/mobile/verifyidentity/ui/APImageButton;

    .line 165
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/alipay/android/phone/mobilecommon/verifyidentity/R$dimen;->defaultFontSize:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    .line 170
    iput v2, p0, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->j:I

    .line 173
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/alipay/android/phone/mobilecommon/verifyidentity/R$color;->colorccc:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    const/4 v7, -0x1

    if-eqz p2, :cond_0

    .line 177
    sget-object v4, Lcom/alipay/android/phone/mobilecommon/verifyidentity/R$styleable;->viGenericInputBox:[I

    invoke-virtual {p1, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x2

    .line 178
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 p2, 0x3

    .line 179
    invoke-virtual {p1, p2, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    const/4 v6, 0x5

    .line 181
    invoke-virtual {p1, v6, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    const/4 v6, 0x6

    .line 182
    invoke-virtual {p1, v6}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    iput-object v6, p0, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->k:Landroid/content/res/ColorStateList;

    .line 183
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    iput-object v6, p0, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->l:Landroid/content/res/ColorStateList;

    .line 184
    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->j:I

    const/16 v2, 0xd

    .line 185
    invoke-virtual {p1, v2, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    const/16 v2, 0xb

    .line 186
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v6, 0xc

    .line 188
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/alipay/android/phone/mobilecommon/verifyidentity/R$color;->colorccc:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    .line 187
    invoke-virtual {p1, v6, v8}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    const/16 v8, 0x14

    .line 190
    invoke-virtual {p1, v8, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    const/16 v9, 0x15

    .line 192
    invoke-virtual {p1, v9, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->bgType:I

    .line 193
    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->bgGroup:I

    .line 194
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    move v1, v8

    goto :goto_0

    :cond_0
    move-object v2, v4

    move p2, v5

    .line 197
    :goto_0
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->mInputContent:Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;

    iget-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->b:Z

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->setSupportEmoji(Z)V

    .line 198
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->mInputContent:Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;

    iget v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->c:I

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->setEmojiSize(I)V

    .line 199
    invoke-direct {p0}, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->a()V

    .line 201
    invoke-virtual {p0, v4}, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->setInputName(Ljava/lang/String;)V

    .line 202
    invoke-virtual {p0, p2}, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->setInputNameTextSize(F)V

    .line 203
    invoke-virtual {p0, v5}, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->setInputTextSize(F)V

    .line 204
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->k:Landroid/content/res/ColorStateList;

    if-eqz p1, :cond_1

    .line 205
    iget-object p2, p0, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->mInputContent:Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;

    invoke-virtual {p2, p1}, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_1

    .line 207
    :cond_1
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->mInputContent:Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;

    const/high16 p2, -0x1000000

    invoke-virtual {p1, p2}, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->setTextColor(I)V

    .line 209
    :goto_1
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->l:Landroid/content/res/ColorStateList;

    if-eqz p1, :cond_2

    .line 210
    iget-object p2, p0, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->e:Lcom/alipay/mobile/verifyidentity/ui/APTextView;

    invoke-virtual {p2, p1}, Lcom/alipay/mobile/verifyidentity/ui/APTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 212
    :cond_2
    iget p1, p0, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->j:I

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->setInputType(I)V

    .line 213
    invoke-virtual {p0, v7}, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->setLength(I)V

    .line 214
    invoke-virtual {p0, v2}, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->setHint(Ljava/lang/String;)V

    .line 215
    invoke-virtual {p0, v6}, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->setHintTextColor(I)V

    .line 216
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->setApprerance(Z)V

    .line 217
    invoke-direct {p0}, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->b()V

    return-void
.end method

.method private a()V
    .locals 2

    .line 239
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->mInputContent:Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;

    if-nez v0, :cond_0

    return-void

    .line 243
    :cond_0
    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 245
    const-class v1, Landroid/view/View;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 249
    :cond_1
    check-cast v0, Landroid/view/View;

    .line 250
    new-instance v1, Lcom/alipay/mobile/verifyidentity/ui/APInputBox$1;

    invoke-direct {v1, p0, v0}, Lcom/alipay/mobile/verifyidentity/ui/APInputBox$1;-><init>(Lcom/alipay/mobile/verifyidentity/ui/APInputBox;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/verifyidentity/ui/APInputBox;)Lcom/alipay/mobile/verifyidentity/ui/inputfomatter/APFormatter;
    .locals 0

    .line 114
    iget-object p0, p0, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->h:Lcom/alipay/mobile/verifyidentity/ui/inputfomatter/APFormatter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/verifyidentity/ui/APInputBox;)Lcom/alipay/mobile/verifyidentity/ui/APImageButton;
    .locals 0

    .line 114
    iget-object p0, p0, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->d:Lcom/alipay/mobile/verifyidentity/ui/APImageButton;

    return-object p0
.end method

.method static synthetic access$200(Lcom/alipay/mobile/verifyidentity/ui/APInputBox;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 114
    iget-object p0, p0, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->g:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method private b()V
    .locals 2

    .line 309
    new-instance v0, Lcom/alipay/mobile/verifyidentity/ui/APInputBox$2;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/verifyidentity/ui/APInputBox$2;-><init>(Lcom/alipay/mobile/verifyidentity/ui/APInputBox;)V

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 356
    invoke-direct {p0}, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->c()V

    .line 357
    iget v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->bgType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/16 v0, 0x10

    .line 372
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->setItemPositionStyle(I)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x14

    .line 368
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->setItemPositionStyle(I)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x12

    .line 365
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->setItemPositionStyle(I)V

    goto :goto_0

    :cond_2
    const/16 v0, 0x13

    .line 362
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->setItemPositionStyle(I)V

    goto :goto_0

    :cond_3
    const/16 v0, 0x11

    .line 359
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->setItemPositionStyle(I)V

    .line 376
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->mInputContent:Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 378
    new-instance v0, Lcom/alipay/mobile/verifyidentity/ui/APInputBox$3;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/verifyidentity/ui/APInputBox$3;-><init>(Lcom/alipay/mobile/verifyidentity/ui/APInputBox;)V

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private c()V
    .locals 2

    .line 423
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->d:Lcom/alipay/mobile/verifyidentity/ui/APImageButton;

    new-instance v1, Lcom/alipay/mobile/verifyidentity/ui/APInputBox$4;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/verifyidentity/ui/APInputBox$4;-><init>(Lcom/alipay/mobile/verifyidentity/ui/APInputBox;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/ui/APImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public addTextChangedListener(Landroid/text/TextWatcher;)V
    .locals 1

    .line 476
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->mInputContent:Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;

    if-eqz v0, :cond_0

    .line 477
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_0
    return-void
.end method

.method public addValidator(Lcom/alipay/mobile/verifyidentity/ui/validator/APValidator;)V
    .locals 1

    .line 756
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clearValidator()V
    .locals 1

    .line 763
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public getClearButton()Lcom/alipay/mobile/verifyidentity/ui/APImageButton;
    .locals 1

    .line 685
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->d:Lcom/alipay/mobile/verifyidentity/ui/APImageButton;

    return-object v0
.end method

.method public getEtContent()Lcom/alipay/mobile/verifyidentity/ui/APEditText;
    .locals 1

    .line 528
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->mInputContent:Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;

    return-object v0
.end method

.method public getInputName()Lcom/alipay/mobile/verifyidentity/ui/APTextView;
    .locals 1

    .line 583
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->e:Lcom/alipay/mobile/verifyidentity/ui/APTextView;

    return-object v0
.end method

.method public getInputType()I
    .locals 1

    .line 787
    iget v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->j:I

    return v0
.end method

.method public getInputedText()Ljava/lang/String;
    .locals 1

    .line 519
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->mInputContent:Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;

    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->getSafeText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSafeEtContent()Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;
    .locals 1

    .line 537
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->mInputContent:Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;

    return-object v0
.end method

.method protected inflateLayout(Landroid/content/Context;)V
    .locals 2

    .line 291
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/alipay/android/phone/mobilecommon/verifyidentity/R$layout;->ap_inputbox:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    return-void
.end method

.method protected initInputContent()V
    .locals 3

    .line 221
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->mInputContent:Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;

    if-nez v0, :cond_0

    return-void

    .line 224
    :cond_0
    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v0, :cond_3

    .line 225
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->e:Lcom/alipay/mobile/verifyidentity/ui/APTextView;

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 228
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->e:Lcom/alipay/mobile/verifyidentity/ui/APTextView;

    invoke-virtual {v1}, Lcom/alipay/mobile/verifyidentity/ui/APTextView;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_2

    .line 229
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/android/phone/mobilecommon/verifyidentity/R$dimen;->inputbox_edittext_margin_border:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    goto :goto_0

    .line 232
    :cond_2
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/android/phone/mobilecommon/verifyidentity/R$dimen;->inputbox_edittext_margin_text:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 235
    :goto_0
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->e:Lcom/alipay/mobile/verifyidentity/ui/APTextView;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/verifyidentity/ui/APTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public isNeedShowClearButton()Z
    .locals 1

    .line 693
    iget-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->f:Z

    return v0
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2

    .line 706
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->mInputContent:Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;

    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->getSafeText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0, p2}, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->onInputTextStatusChanged(ZZ)V

    if-eqz p2, :cond_1

    .line 709
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->getEtContent()Lcom/alipay/mobile/verifyidentity/ui/APEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/ui/APEditText;->isFocusable()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->getEtContent()Lcom/alipay/mobile/verifyidentity/ui/APEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/ui/APEditText;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 711
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->getEtContent()Lcom/alipay/mobile/verifyidentity/ui/APEditText;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/ui/APEditText;->setFocusable(Z)V

    .line 712
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->getEtContent()Lcom/alipay/mobile/verifyidentity/ui/APEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/ui/APEditText;->requestFocus()Z

    .line 715
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->m:Landroid/view/View$OnFocusChangeListener;

    if-eqz v0, :cond_2

    .line 716
    invoke-interface {v0, p1, p2}, Landroid/view/View$OnFocusChangeListener;->onFocusChange(Landroid/view/View;Z)V

    :cond_2
    return-void
.end method

.method protected onInputLayputTouchEvent()Z
    .locals 4

    .line 394
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->mInputContent:Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;

    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->hasFocus()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 395
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->requestFocus()Z

    .line 396
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->mInputContent:Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;

    instance-of v2, v0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;

    if-eqz v2, :cond_2

    .line 399
    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->isPasswordType()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 401
    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->getSafeText()Landroid/text/Editable;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 403
    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->getSafeText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->setOnShowEnableOk(Z)V

    .line 405
    :cond_1
    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->showSafeKeyboard()V

    return v3

    :cond_2
    return v1
.end method

.method protected onInputTextStatusChanged(ZZ)V
    .locals 0

    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    .line 659
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->setClearButtonVisiable(Z)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 661
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->setClearButtonVisiable(Z)V

    :goto_0
    return-void
.end method

.method public setApprerance(Z)V
    .locals 2

    .line 440
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->mInputContent:Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;

    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 442
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->mInputContent:Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_0

    .line 444
    :cond_0
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->mInputContent:Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->setTypeface(Landroid/graphics/Typeface;I)V

    :goto_0
    return-void
.end method

.method public setCleanButtonListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 496
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->g:Landroid/view/View$OnClickListener;

    return-void
.end method

.method protected setClearButtonVisiable(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 672
    iget-boolean p1, p0, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->f:Z

    if-eqz p1, :cond_0

    .line 673
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->d:Lcom/alipay/mobile/verifyidentity/ui/APImageButton;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/verifyidentity/ui/APImageButton;->setVisibility(I)V

    goto :goto_0

    .line 675
    :cond_0
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->d:Lcom/alipay/mobile/verifyidentity/ui/APImageButton;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/verifyidentity/ui/APImageButton;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public setEmojiSize(I)V
    .locals 0

    .line 275
    iput p1, p0, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->c:I

    return-void
.end method

.method public setHint(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, ""

    .line 631
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 632
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->mInputContent:Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->setHint(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setHintTextColor(I)V
    .locals 1

    .line 641
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->mInputContent:Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->setHintTextColor(I)V

    return-void
.end method

.method public setInputErrorState(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 302
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->e:Lcom/alipay/mobile/verifyidentity/ui/APTextView;

    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/android/phone/mobilecommon/verifyidentity/R$color;->colorRed:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/verifyidentity/ui/APTextView;->setTextColor(I)V

    goto :goto_0

    .line 304
    :cond_0
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->e:Lcom/alipay/mobile/verifyidentity/ui/APTextView;

    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/android/phone/mobilecommon/verifyidentity/R$color;->colorBlack:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/verifyidentity/ui/APTextView;->setTextColor(I)V

    :goto_0
    return-void
.end method

.method public setInputName(Ljava/lang/String;)V
    .locals 1

    .line 566
    iget v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->a:I

    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->setInputName(Ljava/lang/String;I)V

    return-void
.end method

.method public setInputName(Ljava/lang/String;I)V
    .locals 2

    const-string v0, ""

    if-eqz p1, :cond_1

    .line 548
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 549
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 550
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, p2, :cond_0

    .line 551
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\u3000"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 553
    :cond_0
    iget-object p2, p0, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->e:Lcom/alipay/mobile/verifyidentity/ui/APTextView;

    invoke-virtual {p2, p1}, Lcom/alipay/mobile/verifyidentity/ui/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 554
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->e:Lcom/alipay/mobile/verifyidentity/ui/APTextView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/alipay/mobile/verifyidentity/ui/APTextView;->setVisibility(I)V

    goto :goto_1

    .line 556
    :cond_1
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->e:Lcom/alipay/mobile/verifyidentity/ui/APTextView;

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/verifyidentity/ui/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 557
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->e:Lcom/alipay/mobile/verifyidentity/ui/APTextView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Lcom/alipay/mobile/verifyidentity/ui/APTextView;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public setInputNameLength(I)V
    .locals 0

    .line 574
    iput p1, p0, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->a:I

    return-void
.end method

.method public setInputNameTextSize(F)V
    .locals 2

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 593
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->e:Lcom/alipay/mobile/verifyidentity/ui/APTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/alipay/mobile/verifyidentity/ui/APTextView;->setTextSize(IF)V

    :cond_0
    return-void
.end method

.method public setInputTextColor(I)V
    .locals 1

    .line 613
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->mInputContent:Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->setTextColor(I)V

    return-void
.end method

.method public setInputTextSize(F)V
    .locals 2

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 603
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->mInputContent:Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->setTextSize(IF)V

    :cond_0
    return-void
.end method

.method public setInputType(I)V
    .locals 1

    .line 622
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->mInputContent:Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->setInputType(I)V

    return-void
.end method

.method public setItemPositionStyle(I)V
    .locals 2

    .line 729
    iget v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->bgGroup:I

    const/16 v1, 0x10

    if-eq v1, v0, :cond_0

    const/16 v1, 0x11

    if-ne v1, v0, :cond_1

    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 745
    sget p1, Lcom/alipay/android/phone/mobilecommon/verifyidentity/R$drawable;->table_square_normal:I

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->setBackgroundResource(I)V

    goto :goto_0

    .line 741
    :pswitch_0
    sget p1, Lcom/alipay/android/phone/mobilecommon/verifyidentity/R$drawable;->input_box_line_normal:I

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->setBackgroundResource(I)V

    goto :goto_0

    .line 735
    :pswitch_1
    sget p1, Lcom/alipay/android/phone/mobilecommon/verifyidentity/R$drawable;->table_square_middle:I

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->setBackgroundResource(I)V

    goto :goto_0

    .line 738
    :pswitch_2
    sget p1, Lcom/alipay/android/phone/mobilecommon/verifyidentity/R$drawable;->table_square_bottom:I

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->setBackgroundResource(I)V

    goto :goto_0

    .line 732
    :pswitch_3
    sget p1, Lcom/alipay/android/phone/mobilecommon/verifyidentity/R$drawable;->table_square_top:I

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->setBackgroundResource(I)V

    :cond_1
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setLength(I)V
    .locals 4

    const/4 v0, 0x0

    if-ltz p1, :cond_0

    .line 651
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->mInputContent:Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/text/InputFilter;

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v3, p1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v2, v0

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_0

    .line 653
    :cond_0
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->mInputContent:Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;

    new-array v0, v0, [Landroid/text/InputFilter;

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->setFilters([Landroid/text/InputFilter;)V

    :goto_0
    return-void
.end method

.method public setNeedShowClearButton(Z)V
    .locals 0

    .line 701
    iput-boolean p1, p0, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->f:Z

    return-void
.end method

.method public setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V
    .locals 1

    .line 459
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->mInputContent:Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;

    if-eqz v0, :cond_0

    .line 460
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    :cond_0
    return-void
.end method

.method public setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
    .locals 1

    .line 486
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->mInputContent:Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;

    if-eqz v0, :cond_0

    .line 487
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->m:Landroid/view/View$OnFocusChangeListener;

    :cond_0
    return-void
.end method

.method public setSupportEmoji(Z)V
    .locals 0

    .line 283
    iput-boolean p1, p0, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->b:Z

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1

    .line 505
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->mInputContent:Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->setText(Ljava/lang/CharSequence;)V

    .line 506
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->mInputContent:Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;

    invoke-virtual {p1}, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->getSafeText()Landroid/text/Editable;

    move-result-object p1

    .line 507
    instance-of v0, p1, Landroid/text/Spannable;

    if-eqz v0, :cond_0

    .line 508
    move-object v0, p1

    nop

    nop

    .line 509
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    invoke-static {v0, p1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    :cond_0
    return-void
.end method

.method public setTextFormatter(Lcom/alipay/mobile/verifyidentity/ui/inputfomatter/APFormatter;)V
    .locals 0

    .line 419
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->h:Lcom/alipay/mobile/verifyidentity/ui/inputfomatter/APFormatter;

    return-void
.end method

.method public setVisualStyle(I)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public validate()Z
    .locals 3

    .line 771
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/verifyidentity/ui/validator/APValidator;

    .line 772
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->getInputedText()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/alipay/mobile/verifyidentity/ui/validator/APValidator;->validate(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method
