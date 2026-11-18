.class public Lcom/alibaba/ailabs/cleaner/adapter/CleanerMainAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "CleanerMainAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CleanerMainAdapter"

.field private static final TYPE_HEADER:I = 0x0

.field private static final TYPE_ITEM:I = 0x1


# instance fields
.field packageInfoArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field packageInfos:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field packageUsedInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field sortedPackageInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/content/pm/PackageInfo;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lcom/alibaba/ailabs/cleaner/adapter/CleanerMainAdapter;->packageInfos:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 37
    iput-object v0, p0, Lcom/alibaba/ailabs/cleaner/adapter/CleanerMainAdapter;->packageInfoArrayList:Ljava/util/ArrayList;

    .line 38
    iput-object v0, p0, Lcom/alibaba/ailabs/cleaner/adapter/CleanerMainAdapter;->packageUsedInfo:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 2

    .line 120
    iget-object v0, p0, Lcom/alibaba/ailabs/cleaner/adapter/CleanerMainAdapter;->packageInfoArrayList:Ljava/util/ArrayList;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/alibaba/ailabs/cleaner/adapter/CleanerMainAdapter;->packageInfoArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v0, v1

    return v0

    :cond_0
    return v1
.end method

.method public getItemViewType(I)I
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 3
    .param p1    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 69
    instance-of v0, p1, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder;

    if-eqz v0, :cond_0

    .line 70
    nop

    nop

    invoke-virtual {p1}, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder;->bindData()V

    goto :goto_0

    .line 71
    :cond_0
    instance-of v0, p1, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder;

    if-eqz v0, :cond_1

    add-int/lit8 v0, p2, -0x1

    .line 75
    nop

    nop

    iget-object v1, p0, Lcom/alibaba/ailabs/cleaner/adapter/CleanerMainAdapter;->packageInfoArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    iget-object v2, p0, Lcom/alibaba/ailabs/cleaner/adapter/CleanerMainAdapter;->packageUsedInfo:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder;->bindData(Landroid/content/pm/PackageInfo;Ljava/lang/String;)V

    .line 76
    new-instance v1, Lcom/alibaba/ailabs/cleaner/adapter/CleanerMainAdapter$1;

    invoke-direct {v1, p0, v0, p2}, Lcom/alibaba/ailabs/cleaner/adapter/CleanerMainAdapter$1;-><init>(Lcom/alibaba/ailabs/cleaner/adapter/CleanerMainAdapter;II)V

    invoke-virtual {p1, v1}, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder;->setUinstallCallback(Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$OnUinstallCallback;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const/4 p1, 0x0

    if-nez p2, :cond_0

    .line 58
    invoke-static {}, Lcom/alibaba/ailabs/appbox/BoxApplication;->getInstance()Landroid/app/Application;

    move-result-object p2

    sget v0, Lcom/alibaba/ailabs/appbox/R$layout;->header_cleaner_main:I

    invoke-static {p2, v0, p1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 59
    new-instance p2, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder;

    invoke-direct {p2, p1}, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder;-><init>(Landroid/view/View;)V

    return-object p2

    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 61
    invoke-static {}, Lcom/alibaba/ailabs/appbox/BoxApplication;->getInstance()Landroid/app/Application;

    move-result-object p2

    sget v0, Lcom/alibaba/ailabs/appbox/R$layout;->item_cleaner_main_app:I

    invoke-static {p2, v0, p1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 62
    new-instance p2, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder;

    invoke-direct {p2, p1}, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder;-><init>(Landroid/view/View;)V

    return-object p2

    :cond_1
    return-object p1
.end method

.method public setPackageInfoArrayList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/PackageInfo;",
            ">;)V"
        }
    .end annotation

    .line 46
    iput-object p1, p0, Lcom/alibaba/ailabs/cleaner/adapter/CleanerMainAdapter;->packageInfoArrayList:Ljava/util/ArrayList;

    return-void
.end method

.method public setPackageInfos(Ljava/util/concurrent/CopyOnWriteArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroid/content/pm/PackageInfo;",
            ">;)V"
        }
    .end annotation

    .line 42
    iput-object p1, p0, Lcom/alibaba/ailabs/cleaner/adapter/CleanerMainAdapter;->packageInfos:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method public setPackageUsedInfo(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 50
    iput-object p1, p0, Lcom/alibaba/ailabs/cleaner/adapter/CleanerMainAdapter;->packageUsedInfo:Ljava/util/ArrayList;

    return-void
.end method
