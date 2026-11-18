.class public Lcom/taobao/android/tbsku/utils/ToastView;
.super Landroid/widget/RelativeLayout;
.source "ToastView.java"


# instance fields
.field private mIcon:Lcom/taobao/android/sku/widget/IconFontView;

.field private mText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 22
    invoke-direct {p0, p1}, Lcom/taobao/android/tbsku/utils/ToastView;->init(Landroid/content/Context;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    invoke-direct {p0, p1}, Lcom/taobao/android/tbsku/utils/ToastView;->init(Landroid/content/Context;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    invoke-direct {p0, p1}, Lcom/taobao/android/tbsku/utils/ToastView;->init(Landroid/content/Context;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private init(Landroid/content/Context;)V
    .locals 4

    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x41700000    # 15.0f

    mul-float v1, v1, v0

    float-to-int v1, v1

    const/high16 v2, 0x40c00000    # 6.0f

    mul-float v2, v2, v0

    float-to-int v2, v2

    const/high16 v3, 0x41100000    # 9.0f

    mul-float v0, v0, v3

    float-to-int v0, v0

    .line 43
    sget v3, Lcom/taobao/android/tbsku/R$drawable;->xsku_toast_bg:I

    invoke-virtual {p0, v3}, Lcom/taobao/android/tbsku/utils/ToastView;->setBackgroundResource(I)V

    .line 44
    invoke-virtual {p0, v1, v2, v1, v0}, Lcom/taobao/android/tbsku/utils/ToastView;->setPadding(IIII)V

    .line 45
    sget v0, Lcom/taobao/android/tbsku/R$layout;->xsku_view_toast:I

    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 46
    sget v0, Lcom/taobao/android/tbsku/R$id;->detail_toast_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/android/sku/widget/IconFontView;

    iput-object v0, p0, Lcom/taobao/android/tbsku/utils/ToastView;->mIcon:Lcom/taobao/android/sku/widget/IconFontView;

    .line 47
    sget v0, Lcom/taobao/android/tbsku/R$id;->detail_toast_tip:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/taobao/android/tbsku/utils/ToastView;->mText:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public showDefault(Ljava/lang/String;)V
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/taobao/android/tbsku/utils/ToastView;->mText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    iget-object p1, p0, Lcom/taobao/android/tbsku/utils/ToastView;->mIcon:Lcom/taobao/android/sku/widget/IconFontView;

    const-string v0, "\ud16a"

    invoke-virtual {p1, v0}, Lcom/taobao/android/sku/widget/IconFontView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public showFailed(Ljava/lang/String;)V
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/taobao/android/tbsku/utils/ToastView;->mText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    iget-object p1, p0, Lcom/taobao/android/tbsku/utils/ToastView;->mIcon:Lcom/taobao/android/sku/widget/IconFontView;

    const-string v0, "\ud04a"

    invoke-virtual {p1, v0}, Lcom/taobao/android/sku/widget/IconFontView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public showSuccess(Ljava/lang/String;)V
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/taobao/android/tbsku/utils/ToastView;->mText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    iget-object p1, p0, Lcom/taobao/android/tbsku/utils/ToastView;->mIcon:Lcom/taobao/android/sku/widget/IconFontView;

    const-string v0, "\ud01a"

    invoke-virtual {p1, v0}, Lcom/taobao/android/sku/widget/IconFontView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public showWithIcon(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/taobao/android/tbsku/utils/ToastView;->mText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    iget-object p1, p0, Lcom/taobao/android/tbsku/utils/ToastView;->mIcon:Lcom/taobao/android/sku/widget/IconFontView;

    invoke-virtual {p1, p2}, Lcom/taobao/android/sku/widget/IconFontView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
