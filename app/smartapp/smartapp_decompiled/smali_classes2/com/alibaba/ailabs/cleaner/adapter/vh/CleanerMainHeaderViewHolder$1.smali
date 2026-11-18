.class Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder$1;
.super Ljava/lang/Object;
.source "CleanerMainHeaderViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder;->handleClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder$1;->this$0:Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 106
    iget-object p1, p0, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder$1;->this$0:Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder;

    invoke-static {p1}, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder;->access$000(Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    const-string v0, "\u6b63\u5728\u6e05\u7406"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 109
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder$1;->this$0:Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder;

    invoke-static {p1}, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder;->access$000(Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    const-string v0, "onkeyCleanPressd"

    .line 111
    invoke-static {v0, p1}, Lcom/alibaba/ailabs/base/util/ReportUtil;->reportCleanEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 113
    new-instance p1, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder$1$1;

    invoke-direct {p1, p0}, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder$1$1;-><init>(Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder$1;)V

    invoke-static {p1}, Lcom/alibaba/ailabs/appbox/utils/ThreadPool;->execute(Ljava/lang/Runnable;)V

    .line 141
    iget-object p1, p0, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder$1;->this$0:Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder;

    invoke-static {p1}, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder;->access$500(Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder;)Lcom/alibaba/ailabs/base/view/CircularFillableLoaders;

    move-result-object p1

    const v0, 0x3d8f5c29    # 0.07f

    const-string v1, "#99e2e2e2"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/alibaba/ailabs/base/view/CircularFillableLoaders;->setAmplitudeRatio(FI)V

    const/16 p1, 0x9c4

    const/4 v0, 0x0

    .line 144
    invoke-static {v0}, Lcom/alibaba/ailabs/cleaner/util/CleanFileUtil;->getCleanerOrangeConfig(Z)Lcom/alibaba/ailabs/cleaner/bean/CleanerOrangeConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/cleaner/bean/CleanerOrangeConfig;->getClearSdCardLevel()I

    move-result v0

    const/16 v1, 0x64

    if-lt v0, v1, :cond_1

    .line 145
    invoke-static {}, Lcom/alibaba/ailabs/cleaner/util/CleanFileUtil;->deleteSdCardExceptData()V

    const/16 p1, 0xbb8

    .line 148
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder$1;->this$0:Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder;

    invoke-static {v0}, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder;->access$600(Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder;)Lcom/alibaba/ailabs/cleaner/view/RunTextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/ailabs/cleaner/view/RunTextView;->runToText(FI)V

    .line 149
    iget-object v0, p0, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder$1;->this$0:Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder;

    invoke-static {v0}, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder;->access$700(Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder;)Lcom/alibaba/ailabs/cleaner/view/RunTextView;

    move-result-object v0

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/ailabs/cleaner/view/RunTextView;->runToText(FI)V

    .line 150
    iget-object v0, p0, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder$1;->this$0:Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder;

    invoke-static {v0}, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder;->access$800(Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder;)Lcom/alibaba/ailabs/cleaner/view/RunTextView;

    move-result-object v0

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/ailabs/cleaner/view/RunTextView;->runToText(FI)V

    .line 151
    iget-object v0, p0, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder$1;->this$0:Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder;

    new-instance v1, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder$1$2;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder$1$2;-><init>(Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder$1;)V

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder;->access$902(Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 160
    iget-object v0, p0, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder$1;->this$0:Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder;

    invoke-static {v0}, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder;->access$800(Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder;)Lcom/alibaba/ailabs/cleaner/view/RunTextView;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder$1;->this$0:Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder;

    invoke-static {v1}, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder;->access$900(Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder;)Ljava/lang/Runnable;

    move-result-object v1

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/ailabs/cleaner/view/RunTextView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
