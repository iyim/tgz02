.class Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity$10;
.super Ljava/lang/Object;
.source "ApiActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity;)V
    .locals 0

    .line 289
    iput-object p1, p0, Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity$10;->this$0:Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, "ApiActivity"

    const-string v1, "FlowTaskManager mGotoChildFaceFlow"

    .line 292
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "genie://com.alibaba.ailabs.genie.datacenter/childface"

    .line 293
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 294
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 295
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity$10;->this$0:Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
