.class public Lcom/taobao/uikit/feature/features/PageNumberFeature$PageTip;
.super Landroid/widget/TextView;
.source "PageNumberFeature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/uikit/feature/features/PageNumberFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PageTip"
.end annotation


# instance fields
.field mMarginBottom:I

.field mMarginRight:I

.field final synthetic this$0:Lcom/taobao/uikit/feature/features/PageNumberFeature;


# direct methods
.method public constructor <init>(Lcom/taobao/uikit/feature/features/PageNumberFeature;Landroid/content/Context;)V
    .locals 0

    .line 204
    iput-object p1, p0, Lcom/taobao/uikit/feature/features/PageNumberFeature$PageTip;->this$0:Lcom/taobao/uikit/feature/features/PageNumberFeature;

    .line 205
    invoke-direct {p0, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 206
    invoke-direct {p0}, Lcom/taobao/uikit/feature/features/PageNumberFeature$PageTip;->init()V

    return-void
.end method

.method public constructor <init>(Lcom/taobao/uikit/feature/features/PageNumberFeature;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 199
    iput-object p1, p0, Lcom/taobao/uikit/feature/features/PageNumberFeature$PageTip;->this$0:Lcom/taobao/uikit/feature/features/PageNumberFeature;

    .line 200
    invoke-direct {p0, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 201
    invoke-direct {p0}, Lcom/taobao/uikit/feature/features/PageNumberFeature$PageTip;->init()V

    return-void
.end method

.method public constructor <init>(Lcom/taobao/uikit/feature/features/PageNumberFeature;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/taobao/uikit/feature/features/PageNumberFeature$PageTip;->this$0:Lcom/taobao/uikit/feature/features/PageNumberFeature;

    .line 195
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 196
    invoke-direct {p0}, Lcom/taobao/uikit/feature/features/PageNumberFeature$PageTip;->init()V

    return-void
.end method

.method private init()V
    .locals 3

    .line 210
    invoke-virtual {p0}, Lcom/taobao/uikit/feature/features/PageNumberFeature$PageTip;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 211
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x40a00000    # 5.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/4 v1, 0x0

    .line 213
    invoke-virtual {p0, v0, v1, v0, v1}, Lcom/taobao/uikit/feature/features/PageNumberFeature$PageTip;->setPadding(IIII)V

    const/high16 v0, 0x41880000    # 17.0f

    .line 214
    invoke-virtual {p0, v0}, Lcom/taobao/uikit/feature/features/PageNumberFeature$PageTip;->setTextSize(F)V

    const v0, -0x777778

    .line 215
    invoke-virtual {p0, v0}, Lcom/taobao/uikit/feature/features/PageNumberFeature$PageTip;->setBackgroundColor(I)V

    const/16 v0, 0x11

    .line 216
    invoke-virtual {p0, v0}, Lcom/taobao/uikit/feature/features/PageNumberFeature$PageTip;->setGravity(I)V

    const-string v0, "0/0"

    .line 217
    invoke-virtual {p0, v0}, Lcom/taobao/uikit/feature/features/PageNumberFeature$PageTip;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, -0x1

    .line 219
    invoke-virtual {p0, v0}, Lcom/taobao/uikit/feature/features/PageNumberFeature$PageTip;->setTextColor(I)V

    .line 221
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 223
    invoke-virtual {p0, v0}, Lcom/taobao/uikit/feature/features/PageNumberFeature$PageTip;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 225
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 226
    invoke-virtual {p0}, Lcom/taobao/uikit/feature/features/PageNumberFeature$PageTip;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 228
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x41c80000    # 25.0f

    mul-float v1, v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/taobao/uikit/feature/features/PageNumberFeature$PageTip;->mMarginRight:I

    .line 229
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x41a00000    # 20.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/taobao/uikit/feature/features/PageNumberFeature$PageTip;->mMarginBottom:I

    return-void
.end method


# virtual methods
.method updatePageIndex(IIII)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    if-nez p4, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    .line 242
    :cond_1
    div-int/2addr p1, p2

    add-int/2addr p1, v0

    :goto_0
    add-int p4, p3, p2

    sub-int/2addr p4, v0

    .line 244
    div-int p2, p4, p2

    if-le p1, p2, :cond_2

    move p1, p2

    :cond_2
    const/4 p4, 0x0

    if-lez p3, :cond_3

    const/4 p3, 0x2

    .line 251
    new-array p3, p3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p3, p4

    .line 252
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p3, v0

    const-string p2, "%s/%s"

    .line 251
    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 254
    :cond_3
    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p2, p4

    const-string p3, "%s"

    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 256
    :goto_1
    iget-object p3, p0, Lcom/taobao/uikit/feature/features/PageNumberFeature$PageTip;->this$0:Lcom/taobao/uikit/feature/features/PageNumberFeature;

    invoke-static {p3, p1}, Lcom/taobao/uikit/feature/features/PageNumberFeature;->access$002(Lcom/taobao/uikit/feature/features/PageNumberFeature;I)I

    .line 258
    invoke-virtual {p0}, Lcom/taobao/uikit/feature/features/PageNumberFeature$PageTip;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 259
    invoke-virtual {p0, p2}, Lcom/taobao/uikit/feature/features/PageNumberFeature$PageTip;->setText(Ljava/lang/CharSequence;)V

    .line 260
    invoke-virtual {p0, p4, p4}, Lcom/taobao/uikit/feature/features/PageNumberFeature$PageTip;->measure(II)V

    .line 261
    invoke-virtual {p0}, Lcom/taobao/uikit/feature/features/PageNumberFeature$PageTip;->getRight()I

    move-result p1

    invoke-virtual {p0}, Lcom/taobao/uikit/feature/features/PageNumberFeature$PageTip;->getMeasuredWidth()I

    move-result p2

    sub-int/2addr p1, p2

    invoke-virtual {p0}, Lcom/taobao/uikit/feature/features/PageNumberFeature$PageTip;->getBottom()I

    move-result p2

    .line 262
    invoke-virtual {p0}, Lcom/taobao/uikit/feature/features/PageNumberFeature$PageTip;->getMeasuredHeight()I

    move-result p3

    sub-int/2addr p2, p3

    invoke-virtual {p0}, Lcom/taobao/uikit/feature/features/PageNumberFeature$PageTip;->getRight()I

    move-result p3

    invoke-virtual {p0}, Lcom/taobao/uikit/feature/features/PageNumberFeature$PageTip;->getBottom()I

    move-result p4

    .line 261
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/taobao/uikit/feature/features/PageNumberFeature$PageTip;->layout(IIII)V

    :cond_4
    return-void
.end method
