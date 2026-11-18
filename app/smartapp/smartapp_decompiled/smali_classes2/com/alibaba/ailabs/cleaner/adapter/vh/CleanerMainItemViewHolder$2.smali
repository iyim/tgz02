.class Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$2;
.super Ljava/lang/Object;
.source "CleanerMainItemViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder;->bindData(Landroid/content/pm/PackageInfo;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder;

.field final synthetic val$finalName:Ljava/lang/String;

.field final synthetic val$finalName1:Ljava/lang/String;

.field final synthetic val$info:Landroid/content/pm/PackageInfo;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder;Ljava/lang/String;Landroid/content/pm/PackageInfo;Ljava/lang/String;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$2;->this$0:Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder;

    iput-object p2, p0, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$2;->val$finalName:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$2;->val$info:Landroid/content/pm/PackageInfo;

    iput-object p4, p0, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$2;->val$finalName1:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 174
    new-instance p1, Lcom/alibaba/ailabs/appbox/dialog/DialogDeleteApp;

    iget-object v0, p0, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$2;->val$finalName:Ljava/lang/String;

    new-instance v1, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$2$1;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$2$1;-><init>(Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$2;)V

    invoke-direct {p1, v0, v1}, Lcom/alibaba/ailabs/appbox/dialog/DialogDeleteApp;-><init>(Ljava/lang/String;Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$OnDialogCallback;)V

    .line 212
    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/dialog/DialogDeleteApp;->show()V

    return-void
.end method
