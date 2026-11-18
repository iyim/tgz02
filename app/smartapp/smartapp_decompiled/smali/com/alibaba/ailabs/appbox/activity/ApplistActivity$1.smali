.class Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$1;
.super Ljava/lang/Object;
.source "ApplistActivity.java"

# interfaces
.implements Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ItemOperatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->initOnce()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;)V
    .locals 0

    .line 468
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$1;->this$0:Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public finishLoadingView()V
    .locals 1

    .line 476
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$1;->this$0:Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->finishLoadingView()V

    return-void
.end method

.method public removeData(Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;)V
    .locals 1

    .line 481
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$1;->this$0:Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;

    iget-object v0, v0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->dataItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public showDeleteDialog(Ljava/lang/String;Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$OnDialogCallback;)V
    .locals 1

    .line 471
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$1;->this$0:Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->showDeleteDialog(Ljava/lang/String;Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$OnDialogCallback;)V

    return-void
.end method
