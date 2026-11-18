.class Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$11;
.super Ljava/lang/Object;
.source "ApplistActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->onReceiveMsg(Lcom/alibaba/ailabs/appbox/busmessage/InstallListChangeEventMessage;)V
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

    .line 1446
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$11;->this$0:Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1449
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$11;->this$0:Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;

    invoke-static {}, Lcom/alibaba/ailabs/appbox/db/CollectionDBUtil;->getAppList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->dataItems:Ljava/util/List;

    .line 1450
    new-instance v0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$11$1;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$11$1;-><init>(Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$11;)V

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/utils/handle/HandleUtil;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
