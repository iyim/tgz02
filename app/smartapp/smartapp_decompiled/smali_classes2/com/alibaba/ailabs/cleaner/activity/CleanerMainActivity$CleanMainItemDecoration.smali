.class public Lcom/alibaba/ailabs/cleaner/activity/CleanerMainActivity$CleanMainItemDecoration;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "CleanerMainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/cleaner/activity/CleanerMainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CleanMainItemDecoration"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/cleaner/activity/CleanerMainActivity;


# direct methods
.method public constructor <init>(Lcom/alibaba/ailabs/cleaner/activity/CleanerMainActivity;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/alibaba/ailabs/cleaner/activity/CleanerMainActivity$CleanMainItemDecoration;->this$0:Lcom/alibaba/ailabs/cleaner/activity/CleanerMainActivity;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 0

    .line 152
    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object p4

    invoke-virtual {p4}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p4

    .line 153
    invoke-virtual {p3, p2}, Landroid/support/v7/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result p2

    add-int/lit8 p4, p4, -0x1

    if-ne p2, p4, :cond_0

    const/high16 p2, 0x42b40000    # 90.0f

    .line 154
    invoke-static {p2}, Lcom/alibaba/ailabs/appbox/utils/DensityUtil;->dip2px(F)I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    :cond_0
    return-void
.end method
