.class Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$1$1$1;
.super Ljava/lang/Object;
.source "CleanerMainItemViewHolder.java"

# interfaces
.implements Lcom/alibaba/ailabs/cleaner/util/SettingClearUtil$OnClearCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$1$1;->onConfirm()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$1$1;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$1$1;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$1$1$1;->this$2:Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClearFinish(Ljava/lang/String;Z)V
    .locals 1

    .line 142
    iget-object p2, p0, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$1$1$1;->this$2:Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$1$1;

    iget-object p2, p2, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$1$1;->this$1:Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$1;

    iget-object p2, p2, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$1;->this$0:Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder;

    invoke-static {p2}, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder;->access$200(Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder;)Landroid/widget/TextView;

    move-result-object p2

    new-instance v0, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$1$1$1$1;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$1$1$1$1;-><init>(Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$1$1$1;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
