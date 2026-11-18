.class public Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment$SpaceItemDecoration;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "SkillTabPagerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SpaceItemDecoration"
.end annotation


# instance fields
.field private space:I

.field final synthetic this$0:Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment;


# direct methods
.method public constructor <init>(Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment;I)V
    .locals 0

    .line 196
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment$SpaceItemDecoration;->this$0:Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 197
    iput p2, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment$SpaceItemDecoration;->space:I

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 1

    .line 204
    invoke-virtual {p3, p2}, Landroid/support/v7/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    .line 205
    rem-int/lit8 p3, p2, 0x3

    const/high16 p4, 0x42400000    # 48.0f

    const/4 v0, 0x1

    if-nez p3, :cond_0

    .line 206
    invoke-static {p4}, Lcom/alibaba/ailabs/appbox/utils/DensityUtil;->dip2px(F)I

    move-result p3

    iput p3, p1, Landroid/graphics/Rect;->left:I

    goto :goto_0

    :cond_0
    if-ne p3, v0, :cond_1

    .line 209
    iget p3, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment$SpaceItemDecoration;->space:I

    iput p3, p1, Landroid/graphics/Rect;->left:I

    .line 210
    iput p3, p1, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 213
    :cond_1
    invoke-static {p4}, Lcom/alibaba/ailabs/appbox/utils/DensityUtil;->dip2px(F)I

    move-result p3

    iput p3, p1, Landroid/graphics/Rect;->right:I

    .line 217
    :goto_0
    iget p3, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment$SpaceItemDecoration;->space:I

    iput p3, p1, Landroid/graphics/Rect;->top:I

    const/4 p3, 0x3

    if-ge p2, p3, :cond_2

    const/4 p3, 0x0

    .line 219
    iput p3, p1, Landroid/graphics/Rect;->top:I

    .line 221
    :cond_2
    iget-object p3, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment$SpaceItemDecoration;->this$0:Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment;

    invoke-static {p3}, Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment;->access$100(Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment;)Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment$SkillTabRecycleViewAdapter;

    move-result-object p3

    invoke-virtual {p3}, Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment$SkillTabRecycleViewAdapter;->getItemCount()I

    move-result p3

    sub-int/2addr p3, v0

    if-ne p2, p3, :cond_3

    const/high16 p2, 0x42a40000    # 82.0f

    .line 222
    invoke-static {p2}, Lcom/alibaba/ailabs/appbox/utils/DensityUtil;->dip2px(F)I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    :cond_3
    return-void
.end method
