.class Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollListener$1;
.super Ljava/lang/Object;
.source "DXScrollerLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollListener;->fireScrollEventWithInit(Landroid/support/v7/widget/RecyclerView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollListener;


# direct methods
.method constructor <init>(Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollListener;)V
    .locals 0

    .line 467
    iput-object p1, p0, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollListener$1;->this$0:Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 470
    iget-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollListener$1;->this$0:Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollListener;

    invoke-static {v0}, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollListener;->access$300(Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollListener;)Lcom/taobao/android/dinamicx/expression/event/DXScrollEvent;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollListener$1;->this$0:Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollListener;

    invoke-static {v1}, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollListener;->access$200(Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollListener;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/taobao/android/dinamicx/expression/event/DXScrollEvent;->setOffsetX(I)V

    .line 471
    iget-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollListener$1;->this$0:Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollListener;

    invoke-static {v0}, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollListener;->access$300(Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollListener;)Lcom/taobao/android/dinamicx/expression/event/DXScrollEvent;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollListener$1;->this$0:Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollListener;

    invoke-static {v1}, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollListener;->access$400(Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollListener;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/taobao/android/dinamicx/expression/event/DXScrollEvent;->setOffsetY(I)V

    .line 473
    iget-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollListener$1;->this$0:Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollListener;

    invoke-static {v0}, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollListener;->access$500(Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollListener;)Lcom/taobao/android/dinamicx/widget/DXScrollerLayout;

    move-result-object v0

    iget-object v0, v0, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout;->indicatorWidgetNode:Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    if-eqz v0, :cond_0

    .line 474
    iget-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollListener$1;->this$0:Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollListener;

    invoke-static {v0}, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollListener;->access$500(Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollListener;)Lcom/taobao/android/dinamicx/widget/DXScrollerLayout;

    move-result-object v0

    iget-object v0, v0, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout;->indicatorWidgetNode:Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    iget-object v1, p0, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollListener$1;->this$0:Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollListener;

    invoke-static {v1}, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollListener;->access$300(Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollListener;)Lcom/taobao/android/dinamicx/expression/event/DXScrollEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->postEvent(Lcom/taobao/android/dinamicx/expression/event/DXEvent;)Z

    .line 477
    :cond_0
    iget-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollListener$1;->this$0:Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollListener;

    invoke-static {v0}, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollListener;->access$500(Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollListener;)Lcom/taobao/android/dinamicx/widget/DXScrollerLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollListener$1;->this$0:Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollListener;

    invoke-static {v1}, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollListener;->access$300(Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollListener;)Lcom/taobao/android/dinamicx/expression/event/DXScrollEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout;->postEvent(Lcom/taobao/android/dinamicx/expression/event/DXEvent;)Z

    return-void
.end method
