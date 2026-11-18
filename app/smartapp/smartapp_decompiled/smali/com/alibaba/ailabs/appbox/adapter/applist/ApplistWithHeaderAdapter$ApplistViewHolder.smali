.class Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "ApplistWithHeaderAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ApplistViewHolder"
.end annotation


# instance fields
.field bean:Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;

.field private fl_item:Landroid/widget/FrameLayout;

.field private isUserClick:Z

.field public iv_list_cloud_tag:Landroid/view/View;

.field private iv_retryMark:Landroid/widget/ImageView;

.field public iv_square_del_app:Landroid/widget/ImageView;

.field public iv_square_icon:Landroid/widget/ImageView;

.field private listener:Lcom/alibaba/genie/market/task/MarketDownloadAndInstallListener;

.field public pg_pre_loadding:Lcom/alibaba/ailabs/appbox/view/RoundedProgressBar;

.field public rl_cover_square:Landroid/widget/RelativeLayout;

.field public rl_item_applist:Landroid/widget/RelativeLayout;

.field private rl_item_layout:Landroid/widget/RelativeLayout;

.field final synthetic this$0:Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;

.field public tv_msg_red:Landroid/widget/TextView;

.field private tv_retry:Landroid/widget/TextView;

.field public tv_space:Landroid/widget/TextView;

.field public tv_square_title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;Landroid/view/View;)V
    .locals 2

    .line 517
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;->this$0:Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;

    .line 518
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 513
    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;->listener:Lcom/alibaba/genie/market/task/MarketDownloadAndInstallListener;

    const/4 v0, 0x0

    .line 515
    iput-boolean v0, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;->isUserClick:Z

    .line 519
    sget v1, Lcom/alibaba/ailabs/appbox/R$id;->iv_square_icon:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;->iv_square_icon:Landroid/widget/ImageView;

    .line 520
    sget v1, Lcom/alibaba/ailabs/appbox/R$id;->iv_cloud_tag:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;->iv_list_cloud_tag:Landroid/view/View;

    .line 521
    sget v1, Lcom/alibaba/ailabs/appbox/R$id;->iv_square_del_app:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;->iv_square_del_app:Landroid/widget/ImageView;

    .line 523
    sget v1, Lcom/alibaba/ailabs/appbox/R$id;->tv_square_title:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;->tv_square_title:Landroid/widget/TextView;

    .line 524
    sget v1, Lcom/alibaba/ailabs/appbox/R$id;->tv_space:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;->tv_space:Landroid/widget/TextView;

    .line 525
    sget v1, Lcom/alibaba/ailabs/appbox/R$id;->rl_item_applist:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;->rl_item_applist:Landroid/widget/RelativeLayout;

    .line 526
    sget v1, Lcom/alibaba/ailabs/appbox/R$id;->rl_cover_square:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;->rl_cover_square:Landroid/widget/RelativeLayout;

    .line 527
    sget v1, Lcom/alibaba/ailabs/appbox/R$id;->pg_pre_loadding:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/ailabs/appbox/view/RoundedProgressBar;

    iput-object v1, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;->pg_pre_loadding:Lcom/alibaba/ailabs/appbox/view/RoundedProgressBar;

    .line 528
    sget v1, Lcom/alibaba/ailabs/appbox/R$id;->tv_msg_red:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;->tv_msg_red:Landroid/widget/TextView;

    .line 529
    sget v1, Lcom/alibaba/ailabs/appbox/R$id;->fl_item:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;->fl_item:Landroid/widget/FrameLayout;

    .line 530
    sget v1, Lcom/alibaba/ailabs/appbox/R$id;->iv_square_retry_mark:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;->iv_retryMark:Landroid/widget/ImageView;

    .line 531
    sget v1, Lcom/alibaba/ailabs/appbox/R$id;->iv_square_retry:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;->tv_retry:Landroid/widget/TextView;

    .line 532
    sget v1, Lcom/alibaba/ailabs/appbox/R$id;->rl_item_layout:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;->rl_item_layout:Landroid/widget/RelativeLayout;

    .line 533
    invoke-static {p1}, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;->access$500(Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/alibaba/ailabs/appbox/utils/DensityUtil;->getHeight(Landroid/content/Context;)I

    move-result p2

    const/16 v1, 0x1e0

    if-gt p2, v1, :cond_0

    .line 534
    iget-object p2, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;->fl_item:Landroid/widget/FrameLayout;

    invoke-static {p1}, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;->access$500(Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;)Landroid/content/Context;

    move-result-object p1

    const/high16 v1, 0x42300000    # 44.0f

    invoke-static {p1, v1}, Lcom/alibaba/ailabs/appbox/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result p1

    invoke-virtual {p2, v0, v0, p1, v0}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 536
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;->bindClick()V

    return-void
.end method

.method static synthetic access$1000(Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;)Z
    .locals 0

    .line 494
    iget-boolean p0, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;->isUserClick:Z

    return p0
.end method

.method static synthetic access$1100(Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;)Landroid/widget/ImageView;
    .locals 0

    .line 494
    iget-object p0, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;->iv_retryMark:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$700(Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 494
    iget-object p0, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;->tv_retry:Landroid/widget/TextView;

    return-object p0
.end method

.method private getListener(Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;)Lcom/alibaba/genie/market/task/MarketDownloadAndInstallListener;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 759
    new-instance v0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder$3;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder$3;-><init>(Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;)V

    return-object v0
.end method

.method private showInstallStatus()V
    .locals 5

    .line 720
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;->this$0:Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;

    invoke-static {v0}, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;->access$900(Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;)Ljava/util/HashMap;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;->this$0:Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;

    invoke-static {v0}, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;->access$900(Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v3, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;->bean:Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;

    invoke-virtual {v3}, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;->getDownloadUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 721
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;->this$0:Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;

    invoke-static {v0}, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;->access$900(Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v3, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;->bean:Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;

    invoke-virtual {v3}, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;->getDownloadUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 722
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "showInstallStatus downloadUrl:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;->bean:Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;

    invoke-virtual {v4}, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;->getDownloadUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",installStatus:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ApplistWithHeaderAdapter-l"

    invoke-static {v4, v3}, Lcom/alibaba/ailabs/genie/utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x3

    const/4 v4, 0x0

    if-ne v0, v3, :cond_0

    .line 724
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;->iv_retryMark:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 725
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;->tv_retry:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 726
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;->rl_item_applist:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;->this$0:Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;

    invoke-static {v1}, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;->access$500(Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/alibaba/ailabs/appbox/R$drawable;->applist_item_failed_foreground:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 727
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;->setOutOfInstall()V

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    .line 729
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;->iv_retryMark:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 730
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;->tv_retry:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 731
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;->rl_item_applist:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 732
    invoke-virtual {p0, v4}, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;->setProgress(I)V

    goto :goto_0

    .line 734
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;->iv_retryMark:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 735
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;->tv_retry:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 736
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;->rl_item_applist:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 737
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;->setOutOfInstall()V

    goto :goto_0

    .line 740
    :cond_2
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;->iv_retryMark:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 741
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;->tv_retry:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 742
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;->rl_item_applist:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 743
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;->setOutOfInstall()V

    :goto_0
    return-void
.end method


# virtual methods
.method public bindClick()V
    .locals 2

    .line 560
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder$1;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder$1;-><init>(Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 639
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;->tv_retry:Landroid/widget/TextView;

    new-instance v1, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder$2;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder$2;-><init>(Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onBindData(Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;)V
    .locals 11

    .line 650
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;->bean:Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;

    .line 651
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;->tv_square_title:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;->getAppName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 653
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;->this$0:Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;

    invoke-static {v0}, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;->access$600(Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;->getDeleteType()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 654
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;->iv_square_del_app:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 656
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;->iv_square_del_app:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 659
    :goto_0
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;->this$0:Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;

    invoke-static {v0}, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;->access$600(Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;)Z

    move-result v0

    const/4 v4, 0x4

    if-eqz v0, :cond_1

    .line 661
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;->tv_space:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 662
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;->rl_item_applist:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 663
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;->iv_retryMark:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 664
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;->tv_retry:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 665
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;->setOutOfInstall()V

    goto :goto_1

    .line 667
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;->tv_space:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 670
    invoke-static {}, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;->getInstance()Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;->getDownloadUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;->isUrlInDownload(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 671
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onBindData isUrlInDownload true downloadUrl:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;->getDownloadUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "ApplistWithHeaderAdapter-l"

    invoke-static {v4, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 672
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;->this$0:Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;

    invoke-static {v0}, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;->access$900(Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;->getDownloadUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 674
    invoke-static {}, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;->getInstance()Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;

    move-result-object v5

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;->getDownloadUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;->getInstallSize()I

    move-result v7

    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;->getListener(Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;)Lcom/alibaba/genie/market/task/MarketDownloadAndInstallListener;

    move-result-object v8

    const/4 v10, 0x0

    const-string v9, "false"

    invoke-virtual/range {v5 .. v10}, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;->downloadAndInstall(Ljava/lang/String;ILcom/alibaba/genie/market/task/MarketDownloadAndInstallListener;Ljava/lang/String;Z)V

    .line 682
    :cond_2
    invoke-direct {p0}, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;->showInstallStatus()V

    .line 685
    :goto_1
    invoke-static {}, Lcom/alibaba/ailabs/appbox/BoxApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    .line 686
    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;->getIcon()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;->this$0:Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;

    iget-object v1, v1, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;->preAndError:Lcom/bumptech/glide/request/RequestOptions;

    .line 687
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;->iv_square_icon:Landroid/widget/ImageView;

    .line 688
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 690
    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;->getActionValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/base/util/AppTypeUtil;->isCloudAppUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 691
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;->iv_list_cloud_tag:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 693
    :cond_3
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;->iv_list_cloud_tag:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 698
    :goto_2
    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;->getActionValue()Ljava/lang/String;

    move-result-object p1

    const-string v0, "genie://com.alibaba.ailabs.genie.message/page"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 700
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;->tv_msg_red:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    const-string p1, "MessageUnReadNumber"

    .line 701
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/utils/system/SystemUtil;->getSystemProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 703
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_4

    .line 705
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;->tv_msg_red:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 706
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;->tv_msg_red:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 708
    :cond_4
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;->tv_msg_red:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 711
    :catch_0
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;->tv_msg_red:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 714
    :cond_5
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;->tv_msg_red:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_3
    return-void
.end method

.method public retry()V
    .locals 8

    .line 748
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bindClick tv_retry bean:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;->bean:Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ApplistWithHeaderAdapter-l"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 749
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;->iv_retryMark:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 750
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;->tv_retry:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 751
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;->rl_item_applist:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 752
    invoke-static {}, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;->getInstance()Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;

    move-result-object v2

    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;->bean:Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;->getDownloadUrl()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;->bean:Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;->getInstallSize()I

    move-result v4

    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;->bean:Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;

    invoke-direct {p0, v0}, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;->getListener(Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;)Lcom/alibaba/genie/market/task/MarketDownloadAndInstallListener;

    move-result-object v5

    const-string v6, "false"

    const/4 v7, 0x1

    invoke-virtual/range {v2 .. v7}, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;->downloadAndInstall(Ljava/lang/String;ILcom/alibaba/genie/market/task/MarketDownloadAndInstallListener;Ljava/lang/String;Z)V

    return-void
.end method

.method public setOutOfInstall()V
    .locals 2

    .line 551
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;->rl_cover_square:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 552
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;->rl_cover_square:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 554
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;->tv_square_title:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 555
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;->tv_square_title:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public setProgress(I)V
    .locals 2

    .line 541
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;->rl_cover_square:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 542
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;->rl_cover_square:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 544
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;->tv_square_title:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    .line 545
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;->tv_square_title:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 547
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;->pg_pre_loadding:Lcom/alibaba/ailabs/appbox/view/RoundedProgressBar;

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/appbox/view/RoundedProgressBar;->setProgress(I)V

    return-void
.end method
