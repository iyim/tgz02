.class Lcom/alibaba/ailabs/childmode/ui/widget/ListenModeDialog$1;
.super Ljava/lang/Object;
.source "ListenModeDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/childmode/ui/widget/ListenModeDialog;
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

    .line 57
    iput-object p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/ListenModeDialog$1;->this$0:Lcom/alibaba/ailabs/childmode/ui/widget/ListenModeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/ListenModeDialog$1;->this$0:Lcom/alibaba/ailabs/childmode/ui/widget/ListenModeDialog;

    invoke-static {v0}, Lcom/alibaba/ailabs/childmode/ui/widget/ListenModeDialog;->access$000(Lcom/alibaba/ailabs/childmode/ui/widget/ListenModeDialog;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/childmode/ListenModeManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/childmode/ListenModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/childmode/ListenModeManager;->clickToExitListenMode()V

    return-void
.end method
