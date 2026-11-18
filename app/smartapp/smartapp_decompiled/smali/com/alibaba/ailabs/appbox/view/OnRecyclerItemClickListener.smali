.class public abstract Lcom/alibaba/ailabs/appbox/view/OnRecyclerItemClickListener;
.super Ljava/lang/Object;
.source "OnRecyclerItemClickListener.java"

# interfaces
.implements Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/appbox/view/OnRecyclerItemClickListener$ItemTouchHelperGestureListener;
    }
.end annotation


# instance fields
.field private mGestureDetector:Landroid/support/v4/view/GestureDetectorCompat;

.field private recyclerView:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 3

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/view/OnRecyclerItemClickListener;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 18
    new-instance p1, Landroid/support/v4/view/GestureDetectorCompat;

    invoke-static {}, Lcom/alibaba/ailabs/appbox/BoxApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    new-instance v1, Lcom/alibaba/ailabs/appbox/view/OnRecyclerItemClickListener$ItemTouchHelperGestureListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/alibaba/ailabs/appbox/view/OnRecyclerItemClickListener$ItemTouchHelperGestureListener;-><init>(Lcom/alibaba/ailabs/appbox/view/OnRecyclerItemClickListener;Lcom/alibaba/ailabs/appbox/view/OnRecyclerItemClickListener$1;)V

    invoke-direct {p1, v0, v1}, Landroid/support/v4/view/GestureDetectorCompat;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/view/OnRecyclerItemClickListener;->mGestureDetector:Landroid/support/v4/view/GestureDetectorCompat;

    return-void
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/appbox/view/OnRecyclerItemClickListener;)Landroid/support/v7/widget/RecyclerView;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/alibaba/ailabs/appbox/view/OnRecyclerItemClickListener;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    return-object p0
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/support/v7/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 23
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/view/OnRecyclerItemClickListener;->mGestureDetector:Landroid/support/v4/view/GestureDetectorCompat;

    invoke-virtual {p1, p2}, Landroid/support/v4/view/GestureDetectorCompat;->onTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 p1, 0x0

    return p1
.end method

.method public abstract onItemClick(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
.end method

.method public abstract onItemLongClick(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
.end method

.method public onRequestDisallowInterceptTouchEvent(Z)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onTouchEvent(Landroid/support/v7/widget/RecyclerView;Landroid/view/MotionEvent;)V
    .locals 0

    .line 29
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/view/OnRecyclerItemClickListener;->mGestureDetector:Landroid/support/v4/view/GestureDetectorCompat;

    invoke-virtual {p1, p2}, Landroid/support/v4/view/GestureDetectorCompat;->onTouchEvent(Landroid/view/MotionEvent;)Z

    return-void
.end method
