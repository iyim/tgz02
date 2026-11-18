.class Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$MyOnFlingListener$1;
.super Ljava/lang/Object;
.source "PagingScrollHelper.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$MyOnFlingListener;->onFling(II)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$MyOnFlingListener;


# direct methods
.method constructor <init>(Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$MyOnFlingListener;)V
    .locals 0

    .line 200
    iput-object p1, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$MyOnFlingListener$1;->this$1:Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$MyOnFlingListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 203
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 205
    iget-object v0, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$MyOnFlingListener$1;->this$1:Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$MyOnFlingListener;

    iget-object v0, v0, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$MyOnFlingListener;->this$0:Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;

    invoke-static {v0}, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;->access$200(Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;)Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$ORIENTATION;

    move-result-object v0

    sget-object v1, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$ORIENTATION;->VERTICAL:Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$ORIENTATION;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 206
    iget-object v0, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$MyOnFlingListener$1;->this$1:Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$MyOnFlingListener;

    iget-object v0, v0, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$MyOnFlingListener;->this$0:Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;

    invoke-static {v0}, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;->access$400(Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;)I

    move-result v0

    sub-int/2addr p1, v0

    if-nez p1, :cond_0

    return-void

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$MyOnFlingListener$1;->this$1:Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$MyOnFlingListener;

    iget-object v0, v0, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$MyOnFlingListener;->this$0:Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;

    invoke-static {v0}, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;->access$800(Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, v2, p1}, Landroid/support/v7/widget/RecyclerView;->scrollBy(II)V

    goto :goto_0

    .line 213
    :cond_1
    iget-object v0, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$MyOnFlingListener$1;->this$1:Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$MyOnFlingListener;

    iget-object v0, v0, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$MyOnFlingListener;->this$0:Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;

    invoke-static {v0}, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;->access$1000(Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;)I

    move-result v0

    sub-int/2addr p1, v0

    .line 214
    iget-object v0, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$MyOnFlingListener$1;->this$1:Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$MyOnFlingListener;

    iget-object v0, v0, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$MyOnFlingListener;->this$0:Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;

    invoke-static {v0}, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;->access$800(Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, p1, v2}, Landroid/support/v7/widget/RecyclerView;->scrollBy(II)V

    :goto_0
    return-void
.end method
