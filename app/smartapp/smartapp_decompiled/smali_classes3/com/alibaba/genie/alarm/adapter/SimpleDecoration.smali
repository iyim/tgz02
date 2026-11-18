.class public Lcom/alibaba/genie/alarm/adapter/SimpleDecoration;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "SimpleDecoration.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SimpleDecoration:"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 2

    .line 16
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V

    .line 17
    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    .line 18
    invoke-virtual {p3, p2}, Landroid/support/v7/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    .line 19
    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object p3

    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p3

    const/4 p4, 0x1

    if-nez p2, :cond_0

    if-eq p3, p4, :cond_0

    .line 21
    invoke-static {}, Lcom/alibaba/ailabs/basedomain/MainApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41d00000    # 26.0f

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    :cond_0
    if-nez p2, :cond_1

    if-ne p3, p4, :cond_1

    .line 24
    invoke-static {}, Lcom/alibaba/ailabs/basedomain/MainApplication;->getContext()Landroid/content/Context;

    move-result-object p2

    const p3, 0x43b38000    # 359.0f

    invoke-static {p2, p3}, Lcom/alibaba/ailabs/genie/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->left:I

    .line 26
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getItemOffsets: \u5355\u4e2a\u7684\u65f6\u5019\u5de6\u8fb9\u7684\u504f\u79fb\u91cf\u662f \uff1a "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alibaba/ailabs/basedomain/MainApplication;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p3}, Lcom/alibaba/ailabs/genie/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SimpleDecoration:"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method
