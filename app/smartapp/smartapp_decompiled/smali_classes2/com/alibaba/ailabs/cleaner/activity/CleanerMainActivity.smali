.class public Lcom/alibaba/ailabs/cleaner/activity/CleanerMainActivity;
.super Lcom/alibaba/ailabs/cleaner/activity/CleanerBaseActivity;
.source "CleanerMainActivity.java"

# interfaces
.implements Lcom/alibaba/ailabs/cleaner/contract/CleanerMainContract$IView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/cleaner/activity/CleanerMainActivity$CleanMainItemDecoration;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/ailabs/cleaner/activity/CleanerBaseActivity<",
        "Lcom/alibaba/ailabs/cleaner/contract/CleanerMainContract$IPresenter;",
        ">;",
        "Lcom/alibaba/ailabs/cleaner/contract/CleanerMainContract$IView;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CleanerMainActivity"


# instance fields
.field private mRvCleanMain:Landroid/support/v7/widget/RecyclerView;

.field private onScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/alibaba/ailabs/cleaner/activity/CleanerBaseActivity;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method protected getLayoutId()I
    .locals 1

    .line 63
    sget v0, Lcom/alibaba/ailabs/appbox/R$layout;->activity_cleaner_main:I

    return v0
.end method

.method protected initPresenter()V
    .locals 2

    .line 58
    new-instance v0, Lcom/alibaba/ailabs/cleaner/prensenter/CleanerMainPresenter;

    iget-object v1, p0, Lcom/alibaba/ailabs/cleaner/activity/CleanerMainActivity;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1, p0}, Lcom/alibaba/ailabs/cleaner/prensenter/CleanerMainPresenter;-><init>(Landroid/app/Activity;Lcom/alibaba/ailabs/cleaner/contract/CleanerMainContract$IView;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/cleaner/activity/CleanerMainActivity;->mPresenter:Lcom/alibaba/ailabs/base/mvp/contract/IBasePresenter;

    return-void
.end method

.method protected initView()V
    .locals 2

    .line 68
    invoke-super {p0}, Lcom/alibaba/ailabs/cleaner/activity/CleanerBaseActivity;->initView()V

    .line 69
    iget-object v0, p0, Lcom/alibaba/ailabs/cleaner/activity/CleanerMainActivity;->mRvCleanMain:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_0

    .line 70
    sget v0, Lcom/alibaba/ailabs/appbox/R$id;->rv_clean_main:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/cleaner/activity/CleanerMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/alibaba/ailabs/cleaner/activity/CleanerMainActivity;->mRvCleanMain:Landroid/support/v7/widget/RecyclerView;

    .line 71
    sget v0, Lcom/alibaba/ailabs/appbox/R$id;->iv_cleaner_main_back:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/cleaner/activity/CleanerMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/alibaba/ailabs/cleaner/activity/CleanerMainActivity$1;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/cleaner/activity/CleanerMainActivity$1;-><init>(Lcom/alibaba/ailabs/cleaner/activity/CleanerMainActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public initViewContent(Landroid/app/Activity;Lcom/alibaba/ailabs/cleaner/adapter/CleanerMainAdapter;)V
    .locals 1

    .line 98
    new-instance p1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {p1, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 99
    invoke-virtual {p1, v0}, Landroid/support/v7/widget/LinearLayoutManager;->setOrientation(I)V

    .line 100
    iget-object v0, p0, Lcom/alibaba/ailabs/cleaner/activity/CleanerMainActivity;->mRvCleanMain:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 101
    iget-object p1, p0, Lcom/alibaba/ailabs/cleaner/activity/CleanerMainActivity;->mRvCleanMain:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 102
    iget-object p1, p0, Lcom/alibaba/ailabs/cleaner/activity/CleanerMainActivity;->mRvCleanMain:Landroid/support/v7/widget/RecyclerView;

    new-instance p2, Lcom/alibaba/ailabs/cleaner/activity/CleanerMainActivity$CleanMainItemDecoration;

    invoke-direct {p2, p0}, Lcom/alibaba/ailabs/cleaner/activity/CleanerMainActivity$CleanMainItemDecoration;-><init>(Lcom/alibaba/ailabs/cleaner/activity/CleanerMainActivity;)V

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 103
    new-instance p1, Lcom/alibaba/ailabs/cleaner/activity/CleanerMainActivity$2;

    invoke-direct {p1, p0}, Lcom/alibaba/ailabs/cleaner/activity/CleanerMainActivity$2;-><init>(Lcom/alibaba/ailabs/cleaner/activity/CleanerMainActivity;)V

    iput-object p1, p0, Lcom/alibaba/ailabs/cleaner/activity/CleanerMainActivity;->onScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    .line 142
    iget-object p1, p0, Lcom/alibaba/ailabs/cleaner/activity/CleanerMainActivity;->mRvCleanMain:Landroid/support/v7/widget/RecyclerView;

    iget-object p2, p0, Lcom/alibaba/ailabs/cleaner/activity/CleanerMainActivity;->onScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "CleanerMainActivity"

    const-string v1, "onCreate"

    .line 39
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-super {p0, p1}, Lcom/alibaba/ailabs/cleaner/activity/CleanerBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    invoke-virtual {p0}, Lcom/alibaba/ailabs/cleaner/activity/CleanerMainActivity;->showLoaddingView()V

    const-string p1, "openCleanPage"

    const/4 v0, 0x0

    .line 53
    invoke-static {p1, v0}, Lcom/alibaba/ailabs/base/util/ReportUtil;->reportCleanEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 6

    const-string v0, "CleanerMainActivity"

    const-string v1, "onDestroy"

    .line 167
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    invoke-super {p0}, Lcom/alibaba/ailabs/cleaner/activity/CleanerBaseActivity;->onDestroy()V

    .line 169
    iget-object v1, p0, Lcom/alibaba/ailabs/cleaner/activity/CleanerMainActivity;->mRvCleanMain:Landroid/support/v7/widget/RecyclerView;

    if-eqz v1, :cond_1

    .line 170
    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->clearOnScrollListeners()V

    .line 171
    iget-object v1, p0, Lcom/alibaba/ailabs/cleaner/activity/CleanerMainActivity;->mRvCleanMain:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 173
    iget-object v3, p0, Lcom/alibaba/ailabs/cleaner/activity/CleanerMainActivity;->mRvCleanMain:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 175
    iget-object v4, p0, Lcom/alibaba/ailabs/cleaner/activity/CleanerMainActivity;->mRvCleanMain:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4, v3}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v3

    .line 176
    instance-of v4, v3, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder;

    if-eqz v4, :cond_0

    .line 177
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onDestroy i:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",CleanerMainHeaderViewHolder"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    nop

    nop

    invoke-virtual {v3}, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder;->release()V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1

    .line 161
    invoke-super {p0, p1}, Lcom/alibaba/ailabs/cleaner/activity/CleanerBaseActivity;->onNewIntent(Landroid/content/Intent;)V

    const-string p1, "CleanerMainActivity"

    const-string v0, "onNewIntent"

    .line 162
    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method protected onResume()V
    .locals 2

    .line 82
    invoke-super {p0}, Lcom/alibaba/ailabs/cleaner/activity/CleanerBaseActivity;->onResume()V

    const-string v0, "CleanerMainActivity"

    const-string v1, "onResume"

    .line 83
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public startClearAnim()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public stopClearAnim()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
