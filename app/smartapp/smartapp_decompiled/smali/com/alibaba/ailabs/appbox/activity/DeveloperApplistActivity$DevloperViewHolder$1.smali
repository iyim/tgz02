.class Lcom/alibaba/ailabs/appbox/activity/DeveloperApplistActivity$DevloperViewHolder$1;
.super Ljava/lang/Object;
.source "DeveloperApplistActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/appbox/activity/DeveloperApplistActivity$DevloperViewHolder;->bindData(Landroid/content/pm/PackageInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/ailabs/appbox/activity/DeveloperApplistActivity$DevloperViewHolder;

.field final synthetic val$info:Landroid/content/pm/PackageInfo;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/appbox/activity/DeveloperApplistActivity$DevloperViewHolder;Landroid/content/pm/PackageInfo;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/activity/DeveloperApplistActivity$DevloperViewHolder$1;->this$1:Lcom/alibaba/ailabs/appbox/activity/DeveloperApplistActivity$DevloperViewHolder;

    iput-object p2, p0, Lcom/alibaba/ailabs/appbox/activity/DeveloperApplistActivity$DevloperViewHolder$1;->val$info:Landroid/content/pm/PackageInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 122
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/activity/DeveloperApplistActivity$DevloperViewHolder$1;->val$info:Landroid/content/pm/PackageInfo;

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v0, "DeveloperApplistActivity"

    invoke-static {p1, v0}, Lcom/alibaba/ailabs/appbox/utils/SystemUtil;->openPkgByRouter(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method
