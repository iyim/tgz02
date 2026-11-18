.class Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$6$1;
.super Ljava/lang/Object;
.source "ApplistActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$6;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$6;)V
    .locals 0

    .line 935
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$6$1;->this$1:Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 938
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$6$1;->this$1:Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$6;

    iget-object v0, v0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$6;->this$0:Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->finishLoadingView()V

    return-void
.end method
