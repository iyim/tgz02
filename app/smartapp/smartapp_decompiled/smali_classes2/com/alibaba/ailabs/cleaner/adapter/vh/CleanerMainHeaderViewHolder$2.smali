.class Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder$2;
.super Ljava/lang/Object;
.source "CleanerMainHeaderViewHolder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder;->bindData()V
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

    .line 180
    iput-object p1, p0, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder$2;->this$0:Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 183
    iget-object v0, p0, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder$2;->this$0:Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder;

    invoke-static {v0}, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder;->access$500(Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder;)Lcom/alibaba/ailabs/base/view/CircularFillableLoaders;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/base/view/CircularFillableLoaders;->setVisibility(I)V

    return-void
.end method
