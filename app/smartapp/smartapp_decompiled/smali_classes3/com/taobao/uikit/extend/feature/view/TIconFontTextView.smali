.class public Lcom/taobao/uikit/extend/feature/view/TIconFontTextView;
.super Landroid/widget/TextView;
.source "TIconFontTextView.java"


# static fields
.field private static sIconfont:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getTypeface()Landroid/graphics/Typeface;
    .locals 2

    .line 43
    sget-object v0, Lcom/taobao/uikit/extend/feature/view/TIconFontTextView;->sIconfont:Landroid/graphics/Typeface;

    if-nez v0, :cond_0

    .line 46
    :try_start_0
    invoke-virtual {p0}, Lcom/taobao/uikit/extend/feature/view/TIconFontTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "uik_iconfont.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/taobao/uikit/extend/feature/view/TIconFontTextView;->sIconfont:Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    :catch_0
    :cond_0
    sget-object v0, Lcom/taobao/uikit/extend/feature/view/TIconFontTextView;->sIconfont:Landroid/graphics/Typeface;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 30
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 31
    invoke-virtual {p0}, Lcom/taobao/uikit/extend/feature/view/TIconFontTextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/taobao/uikit/extend/feature/view/TIconFontTextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/4 v0, 0x0

    .line 32
    invoke-virtual {p0, v0}, Lcom/taobao/uikit/extend/feature/view/TIconFontTextView;->setIncludeFontPadding(Z)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    const/4 v0, 0x0

    .line 37
    invoke-virtual {p0, v0}, Lcom/taobao/uikit/extend/feature/view/TIconFontTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 38
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    return-void
.end method
