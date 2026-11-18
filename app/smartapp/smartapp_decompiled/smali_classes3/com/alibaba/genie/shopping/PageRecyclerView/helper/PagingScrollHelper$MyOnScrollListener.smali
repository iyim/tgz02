.class Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$MyOnScrollListener;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "PagingScrollHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyOnScrollListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;


# direct methods
.method private constructor <init>(Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;)V
    .locals 0

    .line 248
    iput-object p1, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$MyOnScrollListener;->this$0:Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$1;)V
    .locals 0

    .line 248
    invoke-direct {p0, p1}, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$MyOnScrollListener;-><init>(Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;)V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 5

    if-nez p2, :cond_6

    .line 251
    iget-object p2, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$MyOnScrollListener;->this$0:Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;

    invoke-static {p2}, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;->access$200(Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;)Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$ORIENTATION;

    move-result-object p2

    sget-object v0, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$ORIENTATION;->NULL:Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$ORIENTATION;

    if-eq p2, v0, :cond_6

    .line 254
    iget-object p2, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$MyOnScrollListener;->this$0:Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;

    invoke-static {p2}, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;->access$200(Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;)Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$ORIENTATION;

    move-result-object p2

    sget-object v0, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$ORIENTATION;->VERTICAL:Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$ORIENTATION;

    const/16 v1, -0x3e8

    const/16 v2, 0x3e8

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne p2, v0, :cond_2

    .line 255
    iget-object p1, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$MyOnScrollListener;->this$0:Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;

    invoke-static {p1}, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;->access$400(Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;)I

    move-result p1

    iget-object p2, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$MyOnScrollListener;->this$0:Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;

    invoke-static {p2}, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;->access$1400(Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;)I

    move-result p2

    sub-int/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    .line 258
    iget-object p2, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$MyOnScrollListener;->this$0:Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;

    invoke-static {p2}, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;->access$700(Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;)I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    if-le p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_5

    .line 261
    iget-object p1, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$MyOnScrollListener;->this$0:Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;

    invoke-static {p1}, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;->access$400(Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;)I

    move-result p1

    iget-object p2, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$MyOnScrollListener;->this$0:Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;

    invoke-static {p2}, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;->access$1400(Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;)I

    move-result p2

    sub-int/2addr p1, p2

    if-gez p1, :cond_1

    goto :goto_3

    :cond_1
    const/16 v1, 0x3e8

    goto :goto_3

    .line 264
    :cond_2
    iget-object p2, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$MyOnScrollListener;->this$0:Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;

    invoke-static {p2}, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;->access$1000(Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;)I

    move-result p2

    iget-object v0, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$MyOnScrollListener;->this$0:Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;

    invoke-static {v0}, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;->access$1500(Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;)I

    move-result v0

    sub-int/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    .line 265
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    if-le p2, p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_5

    .line 267
    iget-object p1, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$MyOnScrollListener;->this$0:Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;

    invoke-static {p1}, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;->access$1000(Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;)I

    move-result p1

    iget-object p2, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$MyOnScrollListener;->this$0:Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;

    invoke-static {p2}, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;->access$1500(Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;)I

    move-result p2

    sub-int/2addr p1, p2

    if-gez p1, :cond_4

    goto :goto_2

    :cond_4
    const/16 v1, 0x3e8

    :goto_2
    move v4, v1

    :cond_5
    const/4 v1, 0x0

    .line 270
    :goto_3
    iget-object p1, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$MyOnScrollListener;->this$0:Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;

    invoke-static {p1}, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;->access$1700(Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;)Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$MyOnFlingListener;

    move-result-object p1

    invoke-virtual {p1, v4, v1}, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$MyOnFlingListener;->onFling(II)Z

    :cond_6
    return-void
.end method

.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 1

    .line 278
    iget-object p1, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$MyOnScrollListener;->this$0:Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;

    invoke-static {p1}, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;->access$400(Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;)I

    move-result v0

    add-int/2addr v0, p3

    invoke-static {p1, v0}, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;->access$402(Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;I)I

    .line 279
    iget-object p1, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$MyOnScrollListener;->this$0:Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;

    invoke-static {p1}, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;->access$1000(Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;)I

    move-result p3

    add-int/2addr p3, p2

    invoke-static {p1, p3}, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;->access$1002(Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;I)I

    return-void
.end method
