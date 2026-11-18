.class Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$1$1$1$1;
.super Ljava/lang/Object;
.source "CleanerMainItemViewHolder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$1$1$1;->onClearFinish(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$1$1$1;

.field final synthetic val$pkgName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$1$1$1;Ljava/lang/String;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$1$1$1$1;->this$3:Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$1$1$1;

    iput-object p2, p0, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$1$1$1$1;->val$pkgName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 145
    invoke-static {}, Lcom/alibaba/ailabs/appbox/BoxApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$1$1$1$1;->this$3:Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$1$1$1;

    iget-object v1, v1, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$1$1$1;->this$2:Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$1$1;

    iget-object v1, v1, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$1$1;->this$1:Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$1;

    iget-object v1, v1, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$1;->val$info:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/appbox/utils/AppUtil;->getAppSizeByPkgName(Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/ailabs/appbox/bean/AppSizeInfo;

    move-result-object v0

    .line 146
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$1$1$1$1;->val$pkgName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " clear finish , and cache = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v0, Lcom/alibaba/ailabs/appbox/bean/AppSizeInfo;->cacheBytes:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " , appdata = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v0, Lcom/alibaba/ailabs/appbox/bean/AppSizeInfo;->dataBytes:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ClearAppData"

    invoke-static {v2, v1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    iget-object v1, p0, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$1$1$1$1;->this$3:Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$1$1$1;

    iget-object v1, v1, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$1$1$1;->this$2:Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$1$1;

    iget-object v1, v1, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$1$1;->this$1:Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$1;

    iget-object v1, v1, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$1;->this$0:Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder;

    invoke-static {v1}, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder;->access$000(Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder;)Lcom/alibaba/ailabs/cleaner/view/RunTextView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/bean/AppSizeInfo;->getCahcePrintSize()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/cleaner/view/RunTextView;->runToText(F)V

    .line 149
    iget-object v1, p0, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$1$1$1$1;->this$3:Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$1$1$1;

    iget-object v1, v1, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$1$1$1;->this$2:Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$1$1;

    iget-object v1, v1, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$1$1;->this$1:Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$1;

    iget-object v1, v1, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$1;->this$0:Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder;

    invoke-static {v1}, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder;->access$100(Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder;)Lcom/alibaba/ailabs/cleaner/view/RunTextView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/bean/AppSizeInfo;->getAppCountMbs()J

    move-result-wide v2

    long-to-float v0, v2

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/alibaba/ailabs/cleaner/view/RunTextView;->runToText(F)V

    return-void
.end method
