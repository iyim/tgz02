.class Lcom/alibaba/ailabs/childmode/ui/widget/ListenModeDialog$3;
.super Landroid/content/BroadcastReceiver;
.source "ListenModeDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/childmode/ui/widget/ListenModeDialog;->registerBroadcast()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/childmode/ui/widget/ListenModeDialog;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/childmode/ui/widget/ListenModeDialog;)V
    .locals 0

    .line 185
    iput-object p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/ListenModeDialog$3;->this$0:Lcom/alibaba/ailabs/childmode/ui/widget/ListenModeDialog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    if-eqz p2, :cond_1

    .line 188
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 191
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/ListenModeDialog$3;->this$0:Lcom/alibaba/ailabs/childmode/ui/widget/ListenModeDialog;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/alibaba/ailabs/childmode/ui/widget/ListenModeDialog;->access$400(Lcom/alibaba/ailabs/childmode/ui/widget/ListenModeDialog;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
