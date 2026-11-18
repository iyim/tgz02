.class public Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "CleanerMainItemViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$OnUinstallCallback;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "CleanerMainItemViewHolder"


# instance fields
.field private mCanCleanSize:Lcom/alibaba/ailabs/cleaner/view/RunTextView;

.field private mCleanData:Landroid/widget/TextView;

.field private mIcon:Landroid/widget/ImageView;

.field private mTitle:Landroid/widget/TextView;

.field private mTotalSize:Lcom/alibaba/ailabs/cleaner/view/RunTextView;

.field private mUninstall:Landroid/widget/TextView;

.field private mUnusedTime:Landroid/widget/TextView;

.field private uinstallCallback:Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$OnUinstallCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 71
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 72
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder;->initView(Landroid/view/View;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder;)Lcom/alibaba/ailabs/cleaner/view/RunTextView;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder;->mCanCleanSize:Lcom/alibaba/ailabs/cleaner/view/RunTextView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder;)Lcom/alibaba/ailabs/cleaner/view/RunTextView;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder;->mTotalSize:Lcom/alibaba/ailabs/cleaner/view/RunTextView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder;->mCleanData:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder;->unCollect(Ljava/lang/String;Ljava/lang/String;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$400(Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder;)Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$OnUinstallCallback;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder;->uinstallCallback:Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$OnUinstallCallback;

    return-object p0
.end method

.method private getTypeFromId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 351
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, ""

    return-object p1

    :cond_0
    const-string v0, "."

    .line 354
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "apk"

    return-object p1

    :cond_1
    const-string p1, "applet"

    return-object p1
.end method

.method private initView(Landroid/view/View;)V
    .locals 1

    .line 76
    sget v0, Lcom/alibaba/ailabs/appbox/R$id;->iv_clean_app_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder;->mIcon:Landroid/widget/ImageView;

    .line 77
    sget v0, Lcom/alibaba/ailabs/appbox/R$id;->tv_clean_app_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder;->mTitle:Landroid/widget/TextView;

    .line 78
    sget v0, Lcom/alibaba/ailabs/appbox/R$id;->tv_clean_app_desc:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/cleaner/view/RunTextView;

    iput-object v0, p0, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder;->mTotalSize:Lcom/alibaba/ailabs/cleaner/view/RunTextView;

    .line 79
    sget v0, Lcom/alibaba/ailabs/appbox/R$id;->tv_can_clean_size:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/cleaner/view/RunTextView;

    iput-object v0, p0, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder;->mCanCleanSize:Lcom/alibaba/ailabs/cleaner/view/RunTextView;

    .line 80
    sget v0, Lcom/alibaba/ailabs/appbox/R$id;->tv_clean_app_data:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder;->mCleanData:Landroid/widget/TextView;

    .line 81
    sget v0, Lcom/alibaba/ailabs/appbox/R$id;->tv_uninstall_app:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder;->mUninstall:Landroid/widget/TextView;

    .line 82
    sget v0, Lcom/alibaba/ailabs/appbox/R$id;->tv_app_unused:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder;->mUnusedTime:Landroid/widget/TextView;

    return-void
.end method

.method private unCollect(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    .line 219
    sget-object v0, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unCollect packageName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",finalName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",retCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder;->getTypeFromId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$3;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$3;-><init>(Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v0, p1, v1}, Lcom/alibaba/ailabs/appbox/mtop/MarketMtopUtil;->getMarketInfoById(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;)V

    return-void
.end method


# virtual methods
.method public bindData(Landroid/content/pm/PackageInfo;Ljava/lang/String;)V
    .locals 6

    .line 86
    invoke-static {}, Lcom/alibaba/ailabs/appbox/BoxApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    iget-object v1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 87
    invoke-static {v1}, Lcom/alibaba/ailabs/appbox/utils/AppUtil;->getIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder;->mIcon:Landroid/widget/ImageView;

    .line 88
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    const/4 v0, 0x0

    .line 91
    invoke-static {v0}, Lcom/alibaba/ailabs/cleaner/util/CleanFileUtil;->getCleanerOrangeConfig(Z)Lcom/alibaba/ailabs/cleaner/bean/CleanerOrangeConfig;

    move-result-object v1

    iget-object v2, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/cleaner/bean/CleanerOrangeConfig;->getUserPackageNameByName(Ljava/lang/String;)Lcom/alibaba/ailabs/cleaner/bean/CleanerOrangeConfig$UserData;

    move-result-object v1

    .line 92
    iget-object v2, p0, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder;->mUnusedTime:Landroid/widget/TextView;

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p2, 0x4

    if-eqz v1, :cond_2

    .line 94
    invoke-virtual {v1}, Lcom/alibaba/ailabs/cleaner/bean/CleanerOrangeConfig$UserData;->getApkType()I

    move-result v1

    const/16 v2, 0x3e9

    if-eq v1, v2, :cond_1

    const/16 v2, 0x3ea

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 100
    :cond_0
    iget-object v1, p0, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder;->mCleanData:Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 101
    iget-object v1, p0, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder;->mUninstall:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 96
    :cond_1
    iget-object v1, p0, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder;->mUninstall:Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 97
    iget-object v1, p0, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder;->mCleanData:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 107
    :cond_2
    iget-object v1, p0, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder;->mCleanData:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 108
    iget-object v1, p0, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder;->mUninstall:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 111
    :goto_0
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_3

    .line 112
    iget-object v0, p0, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder;->mUninstall:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 116
    :cond_3
    iget-object p2, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {}, Lcom/alibaba/ailabs/appbox/BoxApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    .line 118
    iget-object v0, p0, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    invoke-static {}, Lcom/alibaba/ailabs/appbox/BoxApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    iget-object v1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/appbox/utils/AppUtil;->getAppSizeByPkgName(Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/ailabs/appbox/bean/AppSizeInfo;

    move-result-object v0

    .line 121
    iget-object v1, p0, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder;->mCanCleanSize:Lcom/alibaba/ailabs/cleaner/view/RunTextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/bean/AppSizeInfo;->getPrintSize()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/cleaner/view/RunTextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    iget-object v1, p0, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder;->mTotalSize:Lcom/alibaba/ailabs/cleaner/view/RunTextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/bean/AppSizeInfo;->getAppCountMbs()J

    move-result-wide v4

    long-to-float v4, v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/cleaner/view/RunTextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    iget-object v1, p0, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder;->mCleanData:Landroid/widget/TextView;

    new-instance v2, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$1;

    invoke-direct {v2, p0, p2, p1, v0}, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$1;-><init>(Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder;Ljava/lang/String;Landroid/content/pm/PackageInfo;Lcom/alibaba/ailabs/appbox/bean/AppSizeInfo;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    iget-object v0, p0, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder;->mUninstall:Landroid/widget/TextView;

    new-instance v1, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$2;

    invoke-direct {v1, p0, p2, p1, p2}, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$2;-><init>(Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder;Ljava/lang/String;Landroid/content/pm/PackageInfo;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setUinstallCallback(Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$OnUinstallCallback;)V
    .locals 0

    .line 365
    iput-object p1, p0, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder;->uinstallCallback:Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$OnUinstallCallback;

    return-void
.end method
