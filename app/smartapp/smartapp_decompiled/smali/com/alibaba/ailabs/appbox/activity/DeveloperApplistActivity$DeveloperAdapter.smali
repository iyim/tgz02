.class Lcom/alibaba/ailabs/appbox/activity/DeveloperApplistActivity$DeveloperAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "DeveloperApplistActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/appbox/activity/DeveloperApplistActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DeveloperAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/alibaba/ailabs/appbox/activity/DeveloperApplistActivity$DevloperViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field packageInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/alibaba/ailabs/appbox/activity/DeveloperApplistActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/appbox/activity/DeveloperApplistActivity;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/activity/DeveloperApplistActivity$DeveloperAdapter;->this$0:Lcom/alibaba/ailabs/appbox/activity/DeveloperApplistActivity;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    const/4 p1, 0x0

    .line 70
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/activity/DeveloperApplistActivity$DeveloperAdapter;->packageInfos:Ljava/util/ArrayList;

    .line 73
    invoke-static {}, Lcom/alibaba/ailabs/appbox/utils/AppUtil;->getAllPackageShowToDeveloper()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/activity/DeveloperApplistActivity$DeveloperAdapter;->packageInfos:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 91
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/DeveloperApplistActivity$DeveloperAdapter;->packageInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 68
    check-cast p1, Lcom/alibaba/ailabs/appbox/activity/DeveloperApplistActivity$DevloperViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/ailabs/appbox/activity/DeveloperApplistActivity$DeveloperAdapter;->onBindViewHolder(Lcom/alibaba/ailabs/appbox/activity/DeveloperApplistActivity$DevloperViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/alibaba/ailabs/appbox/activity/DeveloperApplistActivity$DevloperViewHolder;I)V
    .locals 1
    .param p1    # Lcom/alibaba/ailabs/appbox/activity/DeveloperApplistActivity$DevloperViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 84
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/DeveloperApplistActivity$DeveloperAdapter;->packageInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/pm/PackageInfo;

    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/appbox/activity/DeveloperApplistActivity$DevloperViewHolder;->bindData(Landroid/content/pm/PackageInfo;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 68
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/ailabs/appbox/activity/DeveloperApplistActivity$DeveloperAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/alibaba/ailabs/appbox/activity/DeveloperApplistActivity$DevloperViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/alibaba/ailabs/appbox/activity/DeveloperApplistActivity$DevloperViewHolder;
    .locals 1
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 78
    invoke-static {}, Lcom/alibaba/ailabs/appbox/BoxApplication;->getInstance()Landroid/app/Application;

    move-result-object p1

    sget p2, Lcom/alibaba/ailabs/appbox/R$layout;->item_devloper_list:I

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 79
    new-instance p2, Lcom/alibaba/ailabs/appbox/activity/DeveloperApplistActivity$DevloperViewHolder;

    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/DeveloperApplistActivity$DeveloperAdapter;->this$0:Lcom/alibaba/ailabs/appbox/activity/DeveloperApplistActivity;

    invoke-direct {p2, v0, p1}, Lcom/alibaba/ailabs/appbox/activity/DeveloperApplistActivity$DevloperViewHolder;-><init>(Lcom/alibaba/ailabs/appbox/activity/DeveloperApplistActivity;Landroid/view/View;)V

    return-object p2
.end method
