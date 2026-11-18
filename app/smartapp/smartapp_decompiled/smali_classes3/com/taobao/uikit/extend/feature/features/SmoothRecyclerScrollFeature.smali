.class public Lcom/taobao/uikit/extend/feature/features/SmoothRecyclerScrollFeature;
.super Lcom/taobao/uikit/feature/features/AbsFeature;
.source "SmoothRecyclerScrollFeature.java"

# interfaces
.implements Lcom/taobao/uikit/feature/callback/RecyclerAdapterCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/uikit/extend/feature/features/SmoothRecyclerScrollFeature$SmoothAdapter;,
        Lcom/taobao/uikit/extend/feature/features/SmoothRecyclerScrollFeature$InnerScrollListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/taobao/uikit/feature/features/AbsFeature<",
        "Landroid/support/v7/widget/RecyclerView;",
        ">;",
        "Lcom/taobao/uikit/feature/callback/RecyclerAdapterCallback;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/taobao/uikit/feature/features/AbsFeature;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$000(Lcom/taobao/uikit/extend/feature/features/SmoothRecyclerScrollFeature;Landroid/view/View;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/taobao/uikit/extend/feature/features/SmoothRecyclerScrollFeature;->resume(Landroid/view/View;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$100(Lcom/taobao/uikit/extend/feature/features/SmoothRecyclerScrollFeature;Landroid/view/View;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/taobao/uikit/extend/feature/features/SmoothRecyclerScrollFeature;->pause(Landroid/view/View;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private getImageLoadFeature(Lcom/taobao/uikit/feature/view/TImageView;)Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;
    .locals 1

    .line 41
    const-class v0, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;

    invoke-virtual {p1, v0}, Lcom/taobao/uikit/feature/view/TImageView;->findFeature(Ljava/lang/Class;)Lcom/taobao/uikit/feature/features/AbsFeature;

    move-result-object p1

    check-cast p1, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;

    return-object p1
.end method

.method private pause(Landroid/view/View;)V
    .locals 3

    .line 70
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 72
    nop

    nop

    .line 73
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 76
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/taobao/uikit/extend/feature/features/SmoothRecyclerScrollFeature;->pause(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 81
    :cond_0
    instance-of v0, p1, Lcom/taobao/uikit/feature/view/TImageView;

    if-eqz v0, :cond_1

    .line 83
    nop

    nop

    invoke-direct {p0, p1}, Lcom/taobao/uikit/extend/feature/features/SmoothRecyclerScrollFeature;->getImageLoadFeature(Lcom/taobao/uikit/feature/view/TImageView;)Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 86
    invoke-virtual {p1}, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->pause()V

    :cond_1
    return-void
.end method

.method private resume(Landroid/view/View;)V
    .locals 3

    .line 46
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 48
    nop

    nop

    .line 49
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 52
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/taobao/uikit/extend/feature/features/SmoothRecyclerScrollFeature;->resume(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 57
    :cond_0
    instance-of v0, p1, Lcom/taobao/uikit/feature/view/TImageView;

    if-eqz v0, :cond_1

    .line 59
    nop

    nop

    invoke-direct {p0, p1}, Lcom/taobao/uikit/extend/feature/features/SmoothRecyclerScrollFeature;->getImageLoadFeature(Lcom/taobao/uikit/feature/view/TImageView;)Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 62
    invoke-virtual {p1}, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->resume()V

    :cond_1
    return-void
.end method


# virtual methods
.method public constructor(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public setHost(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1

    .line 26
    invoke-super {p0, p1}, Lcom/taobao/uikit/feature/features/AbsFeature;->setHost(Landroid/view/View;)V

    .line 27
    new-instance v0, Lcom/taobao/uikit/extend/feature/features/SmoothRecyclerScrollFeature$InnerScrollListener;

    invoke-direct {v0, p0}, Lcom/taobao/uikit/extend/feature/features/SmoothRecyclerScrollFeature$InnerScrollListener;-><init>(Lcom/taobao/uikit/extend/feature/features/SmoothRecyclerScrollFeature;)V

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method public bridge synthetic setHost(Landroid/view/View;)V
    .locals 0

    .line 16
    check-cast p1, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p0, p1}, Lcom/taobao/uikit/extend/feature/features/SmoothRecyclerScrollFeature;->setHost(Landroid/support/v7/widget/RecyclerView;)V

    return-void
.end method

.method public wrapAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)Landroid/support/v7/widget/RecyclerView$Adapter;
    .locals 1

    if-eqz p1, :cond_0

    .line 32
    instance-of v0, p1, Lcom/taobao/uikit/extend/feature/features/SmoothRecyclerScrollFeature$SmoothAdapter;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lcom/taobao/uikit/extend/feature/features/SmoothRecyclerScrollFeature$SmoothAdapter;

    invoke-direct {v0, p0, p1}, Lcom/taobao/uikit/extend/feature/features/SmoothRecyclerScrollFeature$SmoothAdapter;-><init>(Lcom/taobao/uikit/extend/feature/features/SmoothRecyclerScrollFeature;Landroid/support/v7/widget/RecyclerView$Adapter;)V

    return-object v0

    :cond_0
    return-object p1
.end method
