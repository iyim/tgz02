.class public Lcom/taobao/android/sku/widget/IconFontView;
.super Landroid/support/v7/widget/AppCompatTextView;
.source "IconFontView.java"


# static fields
.field private static volatile mTypeface:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Landroid/support/v7/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    .line 21
    invoke-static {p0}, Lcom/taobao/android/sku/widget/IconFontView;->initTypeface(Landroid/widget/TextView;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    invoke-static {p0}, Lcom/taobao/android/sku/widget/IconFontView;->initTypeface(Landroid/widget/TextView;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    invoke-static {p0}, Lcom/taobao/android/sku/widget/IconFontView;->initTypeface(Landroid/widget/TextView;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private static declared-synchronized initTypeface(Landroid/widget/TextView;)V
    .locals 2

    const-class v0, Lcom/taobao/android/sku/widget/IconFontView;

    monitor-enter v0

    .line 45
    :try_start_0
    sget-object v1, Lcom/taobao/android/sku/widget/IconFontView;->mTypeface:Landroid/graphics/Typeface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 48
    :try_start_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    const-string v1, "fonts/sku_icon_font.ttf"

    invoke-static {p0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p0

    sput-object p0, Lcom/taobao/android/sku/widget/IconFontView;->mTypeface:Landroid/graphics/Typeface;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 50
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/taobao/android/sku/utils/SkuLogUtils;->loge(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 53
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 0
    .param p1    # Landroid/graphics/Typeface;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 36
    sget-object p1, Lcom/taobao/android/sku/widget/IconFontView;->mTypeface:Landroid/graphics/Typeface;

    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatTextView;->setTypeface(Landroid/graphics/Typeface;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public setTypeface(Landroid/graphics/Typeface;I)V
    .locals 0
    .param p1    # Landroid/graphics/Typeface;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 41
    sget-object p1, Lcom/taobao/android/sku/widget/IconFontView;->mTypeface:Landroid/graphics/Typeface;

    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/AppCompatTextView;->setTypeface(Landroid/graphics/Typeface;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
