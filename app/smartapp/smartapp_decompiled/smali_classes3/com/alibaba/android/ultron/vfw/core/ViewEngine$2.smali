.class Lcom/alibaba/android/ultron/vfw/core/ViewEngine$2;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "ViewEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->bindViewTree(Landroid/widget/LinearLayout;Landroid/support/v7/widget/RecyclerView;Landroid/widget/LinearLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/android/ultron/vfw/core/ViewEngine;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ultron/vfw/core/ViewEngine;)V
    .locals 0

    .line 251
    iput-object p1, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine$2;->this$0:Lcom/alibaba/android/ultron/vfw/core/ViewEngine;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 2

    .line 254
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrolled(Landroid/support/v7/widget/RecyclerView;II)V

    .line 255
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object p1

    .line 256
    instance-of p2, p1, Landroid/support/v7/widget/LinearLayoutManager;

    if-eqz p2, :cond_3

    .line 257
    nop

    nop

    .line 258
    invoke-virtual {p1}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p2

    .line 260
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine$2;->this$0:Lcom/alibaba/android/ultron/vfw/core/ViewEngine;

    invoke-static {v0}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->access$000(Lcom/alibaba/android/ultron/vfw/core/ViewEngine;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 261
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine$2;->this$0:Lcom/alibaba/android/ultron/vfw/core/ViewEngine;

    invoke-static {v0}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->access$100(Lcom/alibaba/android/ultron/vfw/core/ViewEngine;)I

    move-result v0

    if-le p2, v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine$2;->this$0:Lcom/alibaba/android/ultron/vfw/core/ViewEngine;

    invoke-static {v0}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->access$200(Lcom/alibaba/android/ultron/vfw/core/ViewEngine;)Lcom/alibaba/android/ultron/vfw/viewholder/RecyclerViewHolder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->access$300(Lcom/alibaba/android/ultron/vfw/core/ViewEngine;Lcom/alibaba/android/ultron/vfw/viewholder/RecyclerViewHolder;)V

    goto :goto_0

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine$2;->this$0:Lcom/alibaba/android/ultron/vfw/core/ViewEngine;

    invoke-static {v0}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->access$200(Lcom/alibaba/android/ultron/vfw/core/ViewEngine;)Lcom/alibaba/android/ultron/vfw/viewholder/RecyclerViewHolder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->access$400(Lcom/alibaba/android/ultron/vfw/core/ViewEngine;Lcom/alibaba/android/ultron/vfw/viewholder/RecyclerViewHolder;)V

    .line 268
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine$2;->this$0:Lcom/alibaba/android/ultron/vfw/core/ViewEngine;

    invoke-static {v0}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->access$500(Lcom/alibaba/android/ultron/vfw/core/ViewEngine;)I

    move-result v0

    if-le p2, v0, :cond_2

    .line 269
    iget-object p2, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine$2;->this$0:Lcom/alibaba/android/ultron/vfw/core/ViewEngine;

    invoke-static {p2}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->access$600(Lcom/alibaba/android/ultron/vfw/core/ViewEngine;)Lcom/alibaba/android/ultron/vfw/viewholder/RecyclerViewHolder;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->access$300(Lcom/alibaba/android/ultron/vfw/core/ViewEngine;Lcom/alibaba/android/ultron/vfw/viewholder/RecyclerViewHolder;)V

    goto :goto_1

    .line 271
    :cond_2
    iget-object p2, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine$2;->this$0:Lcom/alibaba/android/ultron/vfw/core/ViewEngine;

    invoke-static {p2}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->access$600(Lcom/alibaba/android/ultron/vfw/core/ViewEngine;)Lcom/alibaba/android/ultron/vfw/viewholder/RecyclerViewHolder;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->access$400(Lcom/alibaba/android/ultron/vfw/core/ViewEngine;Lcom/alibaba/android/ultron/vfw/viewholder/RecyclerViewHolder;)V

    .line 275
    :goto_1
    :try_start_0
    iget-object p2, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine$2;->this$0:Lcom/alibaba/android/ultron/vfw/core/ViewEngine;

    invoke-static {p2, p1, p3}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->access$700(Lcom/alibaba/android/ultron/vfw/core/ViewEngine;Landroid/support/v7/widget/LinearLayoutManager;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    const/4 p2, 0x2

    .line 277
    new-array p2, p2, [Ljava/lang/String;

    const/4 p3, 0x0

    const-string v0, "\u7ec4\u4ef6\u9690\u85cf\u5c55\u793a\u901a\u77e5"

    aput-object v0, p2, p3

    const/4 p3, 0x1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, p3

    const-string p1, "ViewEngine"

    invoke-static {p1, p2}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_3
    :goto_2
    return-void
.end method
