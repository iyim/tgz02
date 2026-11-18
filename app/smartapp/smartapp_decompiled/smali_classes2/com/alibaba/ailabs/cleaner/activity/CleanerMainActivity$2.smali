.class Lcom/alibaba/ailabs/cleaner/activity/CleanerMainActivity$2;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "CleanerMainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/cleaner/activity/CleanerMainActivity;->initViewContent(Landroid/app/Activity;Lcom/alibaba/ailabs/cleaner/adapter/CleanerMainAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field isSlidingToFirst:Z

.field lastFirstVisit:I

.field final synthetic this$0:Lcom/alibaba/ailabs/cleaner/activity/CleanerMainActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/cleaner/activity/CleanerMainActivity;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/alibaba/ailabs/cleaner/activity/CleanerMainActivity$2;->this$0:Lcom/alibaba/ailabs/cleaner/activity/CleanerMainActivity;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    const/4 p1, 0x0

    .line 105
    iput-boolean p1, p0, Lcom/alibaba/ailabs/cleaner/activity/CleanerMainActivity$2;->isSlidingToFirst:Z

    .line 107
    iput p1, p0, Lcom/alibaba/ailabs/cleaner/activity/CleanerMainActivity$2;->lastFirstVisit:I

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 0

    .line 111
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V

    .line 112
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/LinearLayoutManager;

    if-nez p2, :cond_2

    .line 114
    invoke-virtual {p1}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result p1

    .line 116
    iget p2, p0, Lcom/alibaba/ailabs/cleaner/activity/CleanerMainActivity$2;->lastFirstVisit:I

    if-nez p2, :cond_0

    if-eqz p1, :cond_0

    .line 117
    iput p1, p0, Lcom/alibaba/ailabs/cleaner/activity/CleanerMainActivity$2;->lastFirstVisit:I

    :cond_0
    const/4 p2, 0x2

    if-le p1, p2, :cond_1

    .line 121
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    const-string p2, "CleanerMainActivity.SlidingRemoveFirst"

    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    :cond_1
    if-nez p1, :cond_2

    .line 124
    iget-boolean p1, p0, Lcom/alibaba/ailabs/cleaner/activity/CleanerMainActivity$2;->isSlidingToFirst:Z

    if-eqz p1, :cond_2

    iget p1, p0, Lcom/alibaba/ailabs/cleaner/activity/CleanerMainActivity$2;->lastFirstVisit:I

    if-lez p1, :cond_2

    .line 125
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    const-string p2, "CleanerMainActivity.SlidingToFirst"

    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 126
    iput p1, p0, Lcom/alibaba/ailabs/cleaner/activity/CleanerMainActivity$2;->lastFirstVisit:I

    :cond_2
    return-void
.end method

.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 0

    .line 133
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrolled(Landroid/support/v7/widget/RecyclerView;II)V

    if-gez p3, :cond_0

    const/4 p1, 0x1

    .line 135
    iput-boolean p1, p0, Lcom/alibaba/ailabs/cleaner/activity/CleanerMainActivity$2;->isSlidingToFirst:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 137
    iput-boolean p1, p0, Lcom/alibaba/ailabs/cleaner/activity/CleanerMainActivity$2;->isSlidingToFirst:Z

    :goto_0
    return-void
.end method
