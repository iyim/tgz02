.class Lcom/alibaba/ailabs/searchbox/activity/AppSearchActivity$1;
.super Ljava/lang/Object;
.source "AppSearchActivity.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/searchbox/activity/AppSearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/searchbox/activity/AppSearchActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/searchbox/activity/AppSearchActivity;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/alibaba/ailabs/searchbox/activity/AppSearchActivity$1;->this$0:Lcom/alibaba/ailabs/searchbox/activity/AppSearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 2

    .line 82
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 83
    iget-object v0, p0, Lcom/alibaba/ailabs/searchbox/activity/AppSearchActivity$1;->this$0:Lcom/alibaba/ailabs/searchbox/activity/AppSearchActivity;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/searchbox/activity/AppSearchActivity;->access$000(Lcom/alibaba/ailabs/searchbox/activity/AppSearchActivity;Ljava/lang/String;)V

    :cond_0
    return v1
.end method
