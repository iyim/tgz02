.class Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$MyOnFlingListener$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PagingScrollHelper.java"


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

    .line 218
    iput-object p1, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$MyOnFlingListener$2;->this$1:Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$MyOnFlingListener;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 223
    iget-object p1, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$MyOnFlingListener$2;->this$1:Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$MyOnFlingListener;

    iget-object p1, p1, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$MyOnFlingListener;->this$0:Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;

    invoke-static {p1}, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;->access$1200(Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;)Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$onPageChangeListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 224
    iget-object p1, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$MyOnFlingListener$2;->this$1:Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$MyOnFlingListener;

    iget-object p1, p1, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$MyOnFlingListener;->this$0:Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;

    invoke-static {p1}, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;->access$1200(Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;)Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$onPageChangeListener;

    move-result-object p1

    iget-object v0, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$MyOnFlingListener$2;->this$1:Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$MyOnFlingListener;

    iget-object v0, v0, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$MyOnFlingListener;->this$0:Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;

    invoke-static {v0}, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;->access$1300(Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;)I

    move-result v0

    invoke-interface {p1, v0}, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$onPageChangeListener;->onPageChange(I)V

    .line 226
    :cond_0
    iget-object p1, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$MyOnFlingListener$2;->this$1:Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$MyOnFlingListener;

    iget-object p1, p1, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$MyOnFlingListener;->this$0:Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;

    iget-object v0, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$MyOnFlingListener$2;->this$1:Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$MyOnFlingListener;

    iget-object v0, v0, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$MyOnFlingListener;->this$0:Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;

    invoke-static {v0}, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;->access$400(Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;->access$1402(Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;I)I

    .line 227
    iget-object p1, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$MyOnFlingListener$2;->this$1:Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$MyOnFlingListener;

    iget-object p1, p1, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$MyOnFlingListener;->this$0:Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;

    iget-object v0, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$MyOnFlingListener$2;->this$1:Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$MyOnFlingListener;

    iget-object v0, v0, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$MyOnFlingListener;->this$0:Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;

    invoke-static {v0}, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;->access$1000(Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;->access$1502(Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;I)I

    .line 229
    iget-object p1, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$MyOnFlingListener$2;->this$1:Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$MyOnFlingListener;

    iget-object p1, p1, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$MyOnFlingListener;->this$0:Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;

    invoke-static {p1}, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;->access$900(Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$MyOnFlingListener$2;->this$1:Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$MyOnFlingListener;

    iget-object p1, p1, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$MyOnFlingListener;->this$0:Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;

    invoke-static {p1}, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;->access$400(Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;)I

    move-result p1

    if-ltz p1, :cond_1

    .line 230
    iget-object p1, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$MyOnFlingListener$2;->this$1:Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$MyOnFlingListener;

    iget-object p1, p1, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$MyOnFlingListener;->this$0:Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;

    invoke-virtual {p1}, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;->updateLayoutManger()V

    .line 232
    :cond_1
    iget-object p1, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$MyOnFlingListener$2;->this$1:Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$MyOnFlingListener;

    iget-object p1, p1, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$MyOnFlingListener;->this$0:Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;

    invoke-static {p1}, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;->access$1600(Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;)I

    move-result p1

    if-nez p1, :cond_2

    .line 233
    iget-object p1, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$MyOnFlingListener$2;->this$1:Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$MyOnFlingListener;

    iget-object p1, p1, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$MyOnFlingListener;->this$0:Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;

    invoke-virtual {p1}, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;->updateLayoutManger()V

    :cond_2
    return-void
.end method
