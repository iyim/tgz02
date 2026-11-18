.class Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$1;
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

.field final synthetic val$appSizeInfo:Lcom/alibaba/ailabs/appbox/bean/AppSizeInfo;

.field final synthetic val$finalName1:Ljava/lang/String;

.field final synthetic val$info:Landroid/content/pm/PackageInfo;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder;Ljava/lang/String;Landroid/content/pm/PackageInfo;Lcom/alibaba/ailabs/appbox/bean/AppSizeInfo;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$1;->this$0:Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder;

    iput-object p2, p0, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$1;->val$finalName1:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$1;->val$info:Landroid/content/pm/PackageInfo;

    iput-object p4, p0, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$1;->val$appSizeInfo:Lcom/alibaba/ailabs/appbox/bean/AppSizeInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 129
    new-instance p1, Lcom/alibaba/ailabs/appbox/dialog/DialogCleanAppData;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u6e05\u9664 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$1;->val$finalName1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " \u7684\u6240\u6709\u6570\u636e\uff1f"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$1$1;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$1$1;-><init>(Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$1;)V

    const-string v2, "\u786e\u8ba4\u540e\u5c06\u6e05\u9664\u5e94\u7528\u6240\u6709\u5728\u4f7f\u7528\u8fc7\u7a0b\u4e2d\u7684\u4f7f\u7528\u6570\u636e\uff0c\u5305\u62ec\u7f13\u5b58\u4fe1\u606f\uff0c\u6b64\u64cd\u4f5c\u4e0d\u80fd\u64a4\u9500\u3002"

    invoke-direct {p1, v0, v2, v1}, Lcom/alibaba/ailabs/appbox/dialog/DialogCleanAppData;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$OnDialogCallback;)V

    .line 166
    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/dialog/DialogCleanAppData;->show()V

    return-void
.end method
