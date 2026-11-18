.class Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenTimeDialog$2;
.super Landroid/content/BroadcastReceiver;
.source "ForbiddenTimeDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenTimeDialog;->registerBroadcast()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenTimeDialog;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenTimeDialog;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenTimeDialog$2;->this$0:Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenTimeDialog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    if-eqz p2, :cond_1

    .line 122
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 125
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenTimeDialog$2;->this$0:Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenTimeDialog;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenTimeDialog;->access$000(Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenTimeDialog;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
