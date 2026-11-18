.class Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder$1$1$1;
.super Ljava/lang/Object;
.source "CleanerMainHeaderViewHolder.java"

# interfaces
.implements Lcom/alibaba/ailabs/cleaner/util/SettingClearUtil$OnClearCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder$1$1;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder$1$1;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder$1$1$1;->this$2:Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClearFinish(Ljava/lang/String;Z)V
    .locals 2

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onClearFinish pkgName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",result:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CleanerMainHeaderViewHolder"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object p1, p0, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder$1$1$1;->this$2:Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder$1$1;

    iget-object p1, p1, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder$1$1;->this$1:Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder$1;

    iget-object p1, p1, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder$1;->this$0:Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder;

    invoke-static {p1}, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder;->access$000(Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder;)Landroid/widget/TextView;

    move-result-object p1

    new-instance p2, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder$1$1$1$1;

    invoke-direct {p2, p0}, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder$1$1$1$1;-><init>(Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder$1$1$1;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
