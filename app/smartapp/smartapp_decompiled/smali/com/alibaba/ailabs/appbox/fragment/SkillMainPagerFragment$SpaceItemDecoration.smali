.class public Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SpaceItemDecoration;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "SkillMainPagerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SpaceItemDecoration"
.end annotation


# instance fields
.field private space:I

.field final synthetic this$0:Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment;


# direct methods
.method public constructor <init>(Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment;I)V
    .locals 0

    .line 437
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SpaceItemDecoration;->this$0:Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 438
    iput p2, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SpaceItemDecoration;->space:I

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 0

    .line 445
    invoke-virtual {p3, p2}, Landroid/support/v7/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    const/4 p3, 0x4

    if-ge p2, p3, :cond_0

    return-void

    :cond_0
    sub-int/2addr p2, p3

    .line 452
    rem-int/lit8 p2, p2, 0x3

    const/high16 p3, 0x42400000    # 48.0f

    if-nez p2, :cond_1

    .line 453
    invoke-static {p3}, Lcom/alibaba/ailabs/appbox/utils/DensityUtil;->dip2px(F)I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->left:I

    goto :goto_0

    :cond_1
    const/4 p4, 0x1

    if-ne p2, p4, :cond_2

    .line 456
    iget p2, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SpaceItemDecoration;->space:I

    iput p2, p1, Landroid/graphics/Rect;->left:I

    .line 457
    iput p2, p1, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 459
    :cond_2
    invoke-static {p3}, Lcom/alibaba/ailabs/appbox/utils/DensityUtil;->dip2px(F)I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->right:I

    .line 463
    :goto_0
    iget p2, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SpaceItemDecoration;->space:I

    iput p2, p1, Landroid/graphics/Rect;->top:I

    return-void
.end method
