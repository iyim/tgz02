.class public Lcom/taobao/android/dinamicx/view/DXNativeAutoLoopRecyclerView$LooperRunnable;
.super Ljava/lang/Object;
.source "DXNativeAutoLoopRecyclerView.java"

# interfaces
.implements Lcom/taobao/android/dinamicx/timer/DXTimerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/android/dinamicx/view/DXNativeAutoLoopRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LooperRunnable"
.end annotation


# instance fields
.field private recyclerViewWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/taobao/android/dinamicx/view/DXNativeAutoLoopRecyclerView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/taobao/android/dinamicx/view/DXNativeAutoLoopRecyclerView;)V
    .locals 1

    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 234
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/taobao/android/dinamicx/view/DXNativeAutoLoopRecyclerView$LooperRunnable;->recyclerViewWeakReference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onTimerCallback()V
    .locals 2

    .line 241
    iget-object v0, p0, Lcom/taobao/android/dinamicx/view/DXNativeAutoLoopRecyclerView$LooperRunnable;->recyclerViewWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/android/dinamicx/view/DXNativeAutoLoopRecyclerView;

    if-nez v0, :cond_0

    return-void

    .line 246
    :cond_0
    invoke-virtual {v0}, Lcom/taobao/android/dinamicx/view/DXNativeAutoLoopRecyclerView;->increaseCurrentIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/taobao/android/dinamicx/view/DXNativeAutoLoopRecyclerView;->smoothScrollToPosition(I)V

    .line 247
    invoke-virtual {v0}, Lcom/taobao/android/dinamicx/view/DXNativeAutoLoopRecyclerView;->getOnPageChangeListener()Lcom/taobao/android/dinamicx/view/DXNativeAutoLoopRecyclerView$OnPageChangeListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 249
    invoke-virtual {v0}, Lcom/taobao/android/dinamicx/view/DXNativeAutoLoopRecyclerView;->getCurrentIndex()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/taobao/android/dinamicx/view/DXNativeAutoLoopRecyclerView$OnPageChangeListener;->onPageSelected(I)V

    :cond_1
    return-void
.end method
