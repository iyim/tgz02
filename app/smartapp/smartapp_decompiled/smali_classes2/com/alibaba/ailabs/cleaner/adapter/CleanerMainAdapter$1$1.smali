.class Lcom/alibaba/ailabs/cleaner/adapter/CleanerMainAdapter$1$1;
.super Ljava/lang/Object;
.source "CleanerMainAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/cleaner/adapter/CleanerMainAdapter$1;->onUninstallSuccess(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/ailabs/cleaner/adapter/CleanerMainAdapter$1;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/cleaner/adapter/CleanerMainAdapter$1;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/alibaba/ailabs/cleaner/adapter/CleanerMainAdapter$1$1;->this$1:Lcom/alibaba/ailabs/cleaner/adapter/CleanerMainAdapter$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 87
    iget-object v0, p0, Lcom/alibaba/ailabs/cleaner/adapter/CleanerMainAdapter$1$1;->this$1:Lcom/alibaba/ailabs/cleaner/adapter/CleanerMainAdapter$1;

    iget-object v0, v0, Lcom/alibaba/ailabs/cleaner/adapter/CleanerMainAdapter$1;->this$0:Lcom/alibaba/ailabs/cleaner/adapter/CleanerMainAdapter;

    iget-object v0, v0, Lcom/alibaba/ailabs/cleaner/adapter/CleanerMainAdapter;->packageInfoArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/alibaba/ailabs/cleaner/adapter/CleanerMainAdapter$1$1;->this$1:Lcom/alibaba/ailabs/cleaner/adapter/CleanerMainAdapter$1;

    iget v1, v1, Lcom/alibaba/ailabs/cleaner/adapter/CleanerMainAdapter$1;->val$dataPos:I

    if-le v0, v1, :cond_0

    .line 88
    iget-object v0, p0, Lcom/alibaba/ailabs/cleaner/adapter/CleanerMainAdapter$1$1;->this$1:Lcom/alibaba/ailabs/cleaner/adapter/CleanerMainAdapter$1;

    iget-object v0, v0, Lcom/alibaba/ailabs/cleaner/adapter/CleanerMainAdapter$1;->this$0:Lcom/alibaba/ailabs/cleaner/adapter/CleanerMainAdapter;

    iget-object v0, v0, Lcom/alibaba/ailabs/cleaner/adapter/CleanerMainAdapter;->packageInfoArrayList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/alibaba/ailabs/cleaner/adapter/CleanerMainAdapter$1$1;->this$1:Lcom/alibaba/ailabs/cleaner/adapter/CleanerMainAdapter$1;

    iget v1, v1, Lcom/alibaba/ailabs/cleaner/adapter/CleanerMainAdapter$1;->val$dataPos:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 89
    iget-object v0, p0, Lcom/alibaba/ailabs/cleaner/adapter/CleanerMainAdapter$1$1;->this$1:Lcom/alibaba/ailabs/cleaner/adapter/CleanerMainAdapter$1;

    iget-object v0, v0, Lcom/alibaba/ailabs/cleaner/adapter/CleanerMainAdapter$1;->this$0:Lcom/alibaba/ailabs/cleaner/adapter/CleanerMainAdapter;

    iget-object v1, p0, Lcom/alibaba/ailabs/cleaner/adapter/CleanerMainAdapter$1$1;->this$1:Lcom/alibaba/ailabs/cleaner/adapter/CleanerMainAdapter$1;

    iget v1, v1, Lcom/alibaba/ailabs/cleaner/adapter/CleanerMainAdapter$1;->val$position:I

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/cleaner/adapter/CleanerMainAdapter;->notifyItemRemoved(I)V

    .line 90
    iget-object v0, p0, Lcom/alibaba/ailabs/cleaner/adapter/CleanerMainAdapter$1$1;->this$1:Lcom/alibaba/ailabs/cleaner/adapter/CleanerMainAdapter$1;

    iget-object v0, v0, Lcom/alibaba/ailabs/cleaner/adapter/CleanerMainAdapter$1;->this$0:Lcom/alibaba/ailabs/cleaner/adapter/CleanerMainAdapter;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/alibaba/ailabs/cleaner/adapter/CleanerMainAdapter$1$1;->this$1:Lcom/alibaba/ailabs/cleaner/adapter/CleanerMainAdapter$1;

    iget-object v2, v2, Lcom/alibaba/ailabs/cleaner/adapter/CleanerMainAdapter$1;->this$0:Lcom/alibaba/ailabs/cleaner/adapter/CleanerMainAdapter;

    iget-object v2, v2, Lcom/alibaba/ailabs/cleaner/adapter/CleanerMainAdapter;->packageInfoArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/ailabs/cleaner/adapter/CleanerMainAdapter;->notifyItemRangeChanged(II)V

    :cond_0
    return-void
.end method
