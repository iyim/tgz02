.class Lcom/taobao/android/dinamicx/widget/DXSliderLayout$1;
.super Ljava/lang/Object;
.source "DXSliderLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/android/dinamicx/widget/DXSliderLayout;->onRenderView(Landroid/content/Context;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/android/dinamicx/widget/DXSliderLayout;

.field final synthetic val$recyclerView:Lcom/taobao/android/dinamicx/view/DXNativeAutoLoopRecyclerView;

.field final synthetic val$targetIndex:I


# direct methods
.method constructor <init>(Lcom/taobao/android/dinamicx/widget/DXSliderLayout;Lcom/taobao/android/dinamicx/view/DXNativeAutoLoopRecyclerView;I)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/taobao/android/dinamicx/widget/DXSliderLayout$1;->this$0:Lcom/taobao/android/dinamicx/widget/DXSliderLayout;

    iput-object p2, p0, Lcom/taobao/android/dinamicx/widget/DXSliderLayout$1;->val$recyclerView:Lcom/taobao/android/dinamicx/view/DXNativeAutoLoopRecyclerView;

    iput p3, p0, Lcom/taobao/android/dinamicx/widget/DXSliderLayout$1;->val$targetIndex:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 157
    iget-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXSliderLayout$1;->val$recyclerView:Lcom/taobao/android/dinamicx/view/DXNativeAutoLoopRecyclerView;

    iget v1, p0, Lcom/taobao/android/dinamicx/widget/DXSliderLayout$1;->val$targetIndex:I

    invoke-virtual {v0, v1}, Lcom/taobao/android/dinamicx/view/DXNativeAutoLoopRecyclerView;->scrollToPosition(I)V

    return-void
.end method
