.class public Lcom/alibaba/ailabs/appbox/activity/DeveloperApplistActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "DeveloperApplistActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/appbox/activity/DeveloperApplistActivity$DevloperViewHolder;,
        Lcom/alibaba/ailabs/appbox/activity/DeveloperApplistActivity$DeveloperAdapter;
    }
.end annotation


# instance fields
.field mRvList:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private initData()V
    .locals 3

    .line 50
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 51
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->setOrientation(I)V

    .line 52
    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/activity/DeveloperApplistActivity;->mRvList:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Lcom/alibaba/ailabs/appbox/activity/DeveloperApplistActivity$DeveloperAdapter;

    invoke-direct {v2, p0}, Lcom/alibaba/ailabs/appbox/activity/DeveloperApplistActivity$DeveloperAdapter;-><init>(Lcom/alibaba/ailabs/appbox/activity/DeveloperApplistActivity;)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 53
    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/activity/DeveloperApplistActivity;->mRvList:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    return-void
.end method

.method private initView()V
    .locals 2

    .line 58
    sget v0, Lcom/alibaba/ailabs/appbox/R$id;->rv_devloper_main:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/appbox/activity/DeveloperApplistActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/DeveloperApplistActivity;->mRvList:Landroid/support/v7/widget/RecyclerView;

    .line 60
    sget v0, Lcom/alibaba/ailabs/appbox/R$id;->iv_devloper_main_back:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/appbox/activity/DeveloperApplistActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/alibaba/ailabs/appbox/activity/DeveloperApplistActivity$1;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/appbox/activity/DeveloperApplistActivity$1;-><init>(Lcom/alibaba/ailabs/appbox/activity/DeveloperApplistActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 40
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 41
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/appbox/activity/DeveloperApplistActivity;->requestWindowFeature(I)Z

    .line 42
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/activity/DeveloperApplistActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x400

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    .line 44
    sget p1, Lcom/alibaba/ailabs/appbox/R$layout;->activity_devloper_applist:I

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/appbox/activity/DeveloperApplistActivity;->setContentView(I)V

    .line 45
    invoke-direct {p0}, Lcom/alibaba/ailabs/appbox/activity/DeveloperApplistActivity;->initView()V

    .line 46
    invoke-direct {p0}, Lcom/alibaba/ailabs/appbox/activity/DeveloperApplistActivity;->initData()V

    return-void
.end method
