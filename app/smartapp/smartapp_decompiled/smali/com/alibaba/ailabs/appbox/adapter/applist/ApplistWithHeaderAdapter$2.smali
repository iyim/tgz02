.class Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$2;
.super Ljava/lang/Object;
.source "ApplistWithHeaderAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;

.field final synthetic val$bean:Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;ILcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;)V
    .locals 0

    .line 290
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$2;->this$0:Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;

    iput p2, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$2;->val$position:I

    iput-object p3, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$2;->val$bean:Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 293
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onBindViewHolder position:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$2;->val$position:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",datas.size():"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$2;->this$0:Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;

    iget-object v0, v0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;->datas:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ApplistWithHeaderAdapter-l"

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    iget p1, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$2;->val$position:I

    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$2;->this$0:Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;

    iget-object v0, v0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;->datas:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    return-void

    .line 297
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$2;->this$0:Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;

    invoke-static {p1}, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;->access$000(Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;)Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ItemOperatorListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 298
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$2;->this$0:Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;

    invoke-static {p1}, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;->access$000(Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;)Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ItemOperatorListener;

    move-result-object p1

    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$2;->val$bean:Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;->getAppName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$2$1;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$2$1;-><init>(Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$2;)V

    invoke-interface {p1, v0, v1}, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ItemOperatorListener;->showDeleteDialog(Ljava/lang/String;Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$OnDialogCallback;)V

    :cond_1
    return-void
.end method
