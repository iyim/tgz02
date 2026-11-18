.class Lcom/alibaba/ailabs/childmode/ui/widget/ListenModeDialog$2;
.super Ljava/lang/Object;
.source "ListenModeDialog.java"

# interfaces
.implements Lcom/alibaba/ailabs/childmode/ui/widget/CircleAnimView$CallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/childmode/ui/widget/ListenModeDialog;-><init>(Landroid/content/Context;)V
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

    .line 86
    iput-object p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/ListenModeDialog$2;->this$0:Lcom/alibaba/ailabs/childmode/ui/widget/ListenModeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallBack(I)V
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 92
    :cond_0
    invoke-static {}, Lcom/alibaba/ailabs/childmode/Global;->needValidate()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 93
    iget-object p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/ListenModeDialog$2;->this$0:Lcom/alibaba/ailabs/childmode/ui/widget/ListenModeDialog;

    invoke-static {p1}, Lcom/alibaba/ailabs/childmode/ui/widget/ListenModeDialog;->access$000(Lcom/alibaba/ailabs/childmode/ui/widget/ListenModeDialog;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/ailabs/childmode/ListenModeManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/childmode/ListenModeManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/childmode/ListenModeManager;->clickToExitListenMode()V

    goto :goto_0

    .line 95
    :cond_1
    iget-object p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/ListenModeDialog$2;->this$0:Lcom/alibaba/ailabs/childmode/ui/widget/ListenModeDialog;

    invoke-static {p1}, Lcom/alibaba/ailabs/childmode/ui/widget/ListenModeDialog;->access$000(Lcom/alibaba/ailabs/childmode/ui/widget/ListenModeDialog;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/ailabs/childmode/common/CommUtils;->isScreenOn(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 96
    iget-object p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/ListenModeDialog$2;->this$0:Lcom/alibaba/ailabs/childmode/ui/widget/ListenModeDialog;

    invoke-static {p1}, Lcom/alibaba/ailabs/childmode/ui/widget/ListenModeDialog;->access$100(Lcom/alibaba/ailabs/childmode/ui/widget/ListenModeDialog;)V

    .line 97
    iget-object p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/ListenModeDialog$2;->this$0:Lcom/alibaba/ailabs/childmode/ui/widget/ListenModeDialog;

    invoke-static {p1}, Lcom/alibaba/ailabs/childmode/ui/widget/ListenModeDialog;->access$200(Lcom/alibaba/ailabs/childmode/ui/widget/ListenModeDialog;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1}, Lcom/alibaba/ailabs/childmode/ui/widget/ListenModeDialog;->setHideAnimation(Landroid/view/View;I)V

    .line 98
    iget-object p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/ListenModeDialog$2;->this$0:Lcom/alibaba/ailabs/childmode/ui/widget/ListenModeDialog;

    invoke-static {p1}, Lcom/alibaba/ailabs/childmode/ui/widget/ListenModeDialog;->access$300(Lcom/alibaba/ailabs/childmode/ui/widget/ListenModeDialog;)V

    :cond_2
    :goto_0
    return-void
.end method
