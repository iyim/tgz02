.class Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder$2;
.super Ljava/lang/Object;
.source "ApplistWithHeaderAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;->bindClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;)V
    .locals 0

    .line 639
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder$2;->this$1:Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 642
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "bindClick tv_retry bean:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder$2;->this$1:Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;

    iget-object v0, v0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;->bean:Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ApplistWithHeaderAdapter-l"

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder$2;->this$1:Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;->retry()V

    return-void
.end method
