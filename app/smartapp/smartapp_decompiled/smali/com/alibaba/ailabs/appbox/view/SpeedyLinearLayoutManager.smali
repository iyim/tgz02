.class public Lcom/alibaba/ailabs/appbox/view/SpeedyLinearLayoutManager;
.super Landroid/support/v7/widget/GridLayoutManager;
.source "SpeedyLinearLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/appbox/view/SpeedyLinearLayoutManager$SmoothVelocityScroller;,
        Lcom/alibaba/ailabs/appbox/view/SpeedyLinearLayoutManager$SmoothTopScroller;
    }
.end annotation


# static fields
.field public static final SMOOTH_MILLISECONDS_PER_INCH:F = 25.0f


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;IIZ)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    .line 26
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/view/SpeedyLinearLayoutManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 1

    const/4 v0, 0x1

    .line 20
    invoke-direct {p0, p1, v0, p2, p3}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    .line 21
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/view/SpeedyLinearLayoutManager;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public smoothScrollToPosition(IF)V
    .locals 1

    .line 38
    invoke-static {p2}, Lcom/alibaba/ailabs/appbox/view/SpeedyLinearLayoutManager$SmoothVelocityScroller;->access$102(F)F

    .line 39
    new-instance p2, Lcom/alibaba/ailabs/appbox/view/SpeedyLinearLayoutManager$SmoothVelocityScroller;

    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/view/SpeedyLinearLayoutManager;->mContext:Landroid/content/Context;

    invoke-direct {p2, v0}, Lcom/alibaba/ailabs/appbox/view/SpeedyLinearLayoutManager$SmoothVelocityScroller;-><init>(Landroid/content/Context;)V

    .line 40
    invoke-virtual {p2, p1}, Lcom/alibaba/ailabs/appbox/view/SpeedyLinearLayoutManager$SmoothVelocityScroller;->setTargetPosition(I)V

    .line 41
    invoke-virtual {p0, p2}, Lcom/alibaba/ailabs/appbox/view/SpeedyLinearLayoutManager;->startSmoothScroll(Landroid/support/v7/widget/RecyclerView$SmoothScroller;)V

    return-void
.end method

.method public smoothScrollToPositionFromTop(IF)V
    .locals 1

    .line 30
    invoke-static {p2}, Lcom/alibaba/ailabs/appbox/view/SpeedyLinearLayoutManager$SmoothTopScroller;->access$002(F)F

    .line 31
    new-instance p2, Lcom/alibaba/ailabs/appbox/view/SpeedyLinearLayoutManager$SmoothTopScroller;

    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/view/SpeedyLinearLayoutManager;->mContext:Landroid/content/Context;

    invoke-direct {p2, v0}, Lcom/alibaba/ailabs/appbox/view/SpeedyLinearLayoutManager$SmoothTopScroller;-><init>(Landroid/content/Context;)V

    .line 33
    invoke-virtual {p2, p1}, Lcom/alibaba/ailabs/appbox/view/SpeedyLinearLayoutManager$SmoothTopScroller;->setTargetPosition(I)V

    .line 34
    invoke-virtual {p0, p2}, Lcom/alibaba/ailabs/appbox/view/SpeedyLinearLayoutManager;->startSmoothScroll(Landroid/support/v7/widget/RecyclerView$SmoothScroller;)V

    return-void
.end method
