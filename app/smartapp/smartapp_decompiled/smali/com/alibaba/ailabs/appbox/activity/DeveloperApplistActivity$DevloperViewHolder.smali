.class Lcom/alibaba/ailabs/appbox/activity/DeveloperApplistActivity$DevloperViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "DeveloperApplistActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/appbox/activity/DeveloperApplistActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DevloperViewHolder"
.end annotation


# instance fields
.field private mIcon:Landroid/widget/ImageView;

.field private mSize:Landroid/widget/TextView;

.field private mTitle:Landroid/widget/TextView;

.field private mVersion:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/alibaba/ailabs/appbox/activity/DeveloperApplistActivity;


# direct methods
.method public constructor <init>(Lcom/alibaba/ailabs/appbox/activity/DeveloperApplistActivity;Landroid/view/View;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/activity/DeveloperApplistActivity$DevloperViewHolder;->this$0:Lcom/alibaba/ailabs/appbox/activity/DeveloperApplistActivity;

    .line 106
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 107
    invoke-direct {p0}, Lcom/alibaba/ailabs/appbox/activity/DeveloperApplistActivity$DevloperViewHolder;->initHolder()V

    return-void
.end method

.method private initHolder()V
    .locals 2

    .line 111
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/DeveloperApplistActivity$DevloperViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/alibaba/ailabs/appbox/R$id;->iv_clean_app_icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/DeveloperApplistActivity$DevloperViewHolder;->mIcon:Landroid/widget/ImageView;

    .line 112
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/DeveloperApplistActivity$DevloperViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/alibaba/ailabs/appbox/R$id;->tv_clean_app_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/DeveloperApplistActivity$DevloperViewHolder;->mTitle:Landroid/widget/TextView;

    .line 113
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/DeveloperApplistActivity$DevloperViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/alibaba/ailabs/appbox/R$id;->tv_clean_app_desc:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/DeveloperApplistActivity$DevloperViewHolder;->mVersion:Landroid/widget/TextView;

    .line 114
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/DeveloperApplistActivity$DevloperViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/alibaba/ailabs/appbox/R$id;->tv_size:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/DeveloperApplistActivity$DevloperViewHolder;->mSize:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public bindData(Landroid/content/pm/PackageInfo;)V
    .locals 5

    .line 119
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/DeveloperApplistActivity$DevloperViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/alibaba/ailabs/appbox/activity/DeveloperApplistActivity$DevloperViewHolder$1;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/ailabs/appbox/activity/DeveloperApplistActivity$DevloperViewHolder$1;-><init>(Lcom/alibaba/ailabs/appbox/activity/DeveloperApplistActivity$DevloperViewHolder;Landroid/content/pm/PackageInfo;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    invoke-static {}, Lcom/alibaba/ailabs/appbox/BoxApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    iget-object v1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 127
    invoke-static {v1}, Lcom/alibaba/ailabs/appbox/utils/AppUtil;->getIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/activity/DeveloperApplistActivity$DevloperViewHolder;->mIcon:Landroid/widget/ImageView;

    .line 128
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 130
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {}, Lcom/alibaba/ailabs/appbox/BoxApplication;->getInstance()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 131
    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/activity/DeveloperApplistActivity$DevloperViewHolder;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    invoke-static {}, Lcom/alibaba/ailabs/appbox/BoxApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    iget-object v1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/appbox/utils/AppUtil;->getAppSizeByPkgName(Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/ailabs/appbox/bean/AppSizeInfo;

    move-result-object v0

    .line 134
    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/activity/DeveloperApplistActivity$DevloperViewHolder;->mSize:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/bean/AppSizeInfo;->getAppCountMbs()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " MB"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/DeveloperApplistActivity$DevloperViewHolder;->mVersion:Landroid/widget/TextView;

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
