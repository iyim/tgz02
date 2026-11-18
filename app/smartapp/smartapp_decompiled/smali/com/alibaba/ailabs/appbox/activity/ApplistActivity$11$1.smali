.class Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$11$1;
.super Ljava/lang/Object;
.source "ApplistActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$11;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$11;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$11;)V
    .locals 0

    .line 1450
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$11$1;->this$1:Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1453
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$11$1;->this$1:Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$11;

    iget-object v0, v0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$11;->this$0:Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$11$1;->this$1:Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$11;

    iget-object v1, v1, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$11;->this$0:Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;

    iget-object v1, v1, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->dataItems:Ljava/util/List;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->access$900(Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;Ljava/util/List;Z)V

    return-void
.end method
