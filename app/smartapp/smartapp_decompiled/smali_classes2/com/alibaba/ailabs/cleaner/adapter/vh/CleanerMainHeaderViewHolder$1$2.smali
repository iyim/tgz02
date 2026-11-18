.class Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder$1$2;
.super Ljava/lang/Object;
.source "CleanerMainHeaderViewHolder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder$1;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder$1;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder$1$2;->this$1:Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 154
    iget-object v0, p0, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder$1$2;->this$1:Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder$1;

    iget-object v0, v0, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder$1;->this$0:Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder;

    invoke-static {v0}, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder;->access$000(Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "\u4e00\u952e\u6e05\u7406"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    new-instance v0, Lcom/alibaba/ailabs/appbox/dialog/DialogTopToast;

    const-string v1, "\u7a7a\u95f4\u6e05\u7406\u5b8c\u6210"

    invoke-direct {v0, v1}, Lcom/alibaba/ailabs/appbox/dialog/DialogTopToast;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/dialog/DialogTopToast;->show()V

    .line 157
    iget-object v0, p0, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder$1$2;->this$1:Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder$1;

    iget-object v0, v0, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder$1;->this$0:Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder;

    invoke-static {v0}, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder;->access$500(Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder;)Lcom/alibaba/ailabs/base/view/CircularFillableLoaders;

    move-result-object v0

    const-string v1, "#00b3ff"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const v2, 0x3cf5c28f    # 0.03f

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/ailabs/base/view/CircularFillableLoaders;->setAmplitudeRatio(FI)V

    return-void
.end method
