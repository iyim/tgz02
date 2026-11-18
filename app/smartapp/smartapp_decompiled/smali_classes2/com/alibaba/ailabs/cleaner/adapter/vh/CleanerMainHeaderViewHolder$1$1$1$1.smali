.class Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder$1$1$1$1;
.super Ljava/lang/Object;
.source "CleanerMainHeaderViewHolder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder$1$1$1;->onClearFinish(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder$1$1$1;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder$1$1$1;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder$1$1$1$1;->this$3:Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder$1$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 125
    invoke-static {}, Lcom/alibaba/ailabs/appbox/utils/SystemUtil;->getSdCardFreePercent()J

    move-result-wide v0

    .line 126
    iget-object v2, p0, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder$1$1$1$1;->this$3:Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder$1$1$1;

    iget-object v2, v2, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder$1$1$1;->this$2:Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder$1$1;

    iget-object v2, v2, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder$1$1;->this$1:Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder$1;

    iget-object v2, v2, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder$1;->this$0:Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder;

    invoke-static {v2}, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder;->access$100(Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder;)Lcom/alibaba/ailabs/cleaner/view/RunTextView;

    move-result-object v2

    const-wide/16 v3, 0x64

    sub-long/2addr v3, v0

    long-to-float v0, v3

    invoke-virtual {v2, v0}, Lcom/alibaba/ailabs/cleaner/view/RunTextView;->runToText(F)V

    .line 127
    invoke-static {}, Lcom/alibaba/ailabs/appbox/utils/SystemUtil;->getStaFsFree()J

    move-result-wide v0

    const-wide/16 v2, 0x400

    mul-long v0, v0, v2

    mul-long v0, v0, v2

    .line 128
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/appbox/utils/FileSizeUtil;->formatFileSize(J)Lcom/alibaba/ailabs/appbox/utils/FileSizeUtil$FileSize;

    move-result-object v0

    .line 129
    iget-object v1, p0, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder$1$1$1$1;->this$3:Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder$1$1$1;

    iget-object v1, v1, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder$1$1$1;->this$2:Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder$1$1;

    iget-object v1, v1, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder$1$1;->this$1:Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder$1;

    iget-object v1, v1, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder$1;->this$0:Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder;

    invoke-static {v1}, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder;->access$200(Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder;)Lcom/alibaba/ailabs/cleaner/view/RunTextView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/utils/FileSizeUtil$FileSize;->getNum()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-virtual {v1, v4}, Lcom/alibaba/ailabs/cleaner/view/RunTextView;->runToText(F)V

    .line 130
    iget-object v1, p0, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder$1$1$1$1;->this$3:Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder$1$1$1;

    iget-object v1, v1, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder$1$1$1;->this$2:Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder$1$1;

    iget-object v1, v1, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder$1$1;->this$1:Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder$1;

    iget-object v1, v1, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder$1;->this$0:Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder;

    invoke-static {v1}, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder;->access$300(Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/utils/FileSizeUtil$FileSize;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    iget-object v0, p0, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder$1$1$1$1;->this$3:Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder$1$1$1;

    iget-object v0, v0, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder$1$1$1;->this$2:Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder$1$1;

    iget-object v0, v0, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder$1$1;->this$1:Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder$1;

    iget-object v0, v0, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder$1;->this$0:Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder;

    invoke-static {v0}, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder;->access$400(Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder;)Lcom/alibaba/ailabs/cleaner/view/RunTextView;

    move-result-object v0

    .line 132
    invoke-static {}, Lcom/alibaba/ailabs/appbox/utils/SystemUtil;->getDataCountSizeForUser()J

    move-result-wide v4

    mul-long v4, v4, v2

    mul-long v4, v4, v2

    invoke-static {v4, v5}, Lcom/alibaba/ailabs/appbox/utils/FileSizeUtil;->formatFileSize(J)Lcom/alibaba/ailabs/appbox/utils/FileSizeUtil$FileSize;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/ailabs/appbox/utils/FileSizeUtil$FileSize;->getNum()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 131
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/cleaner/view/RunTextView;->runToText(F)V

    return-void
.end method
