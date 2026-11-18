.class final Lcom/alibaba/ailabs/childmode/Global$1;
.super Ljava/lang/Object;
.source "Global.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/childmode/Global;->showCameraOpen(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "Global"

    const-string v1, "setEyeYieldMode new handler show camera dialog"

    .line 230
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    invoke-static {}, Lcom/alibaba/ailabs/childmode/Global;->access$000()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/alibaba/ailabs/childmode/Global;->access$000()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    invoke-static {}, Lcom/alibaba/ailabs/childmode/Global;->access$000()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 234
    :cond_0
    invoke-static {}, Lcom/alibaba/ailabs/childmode/Global;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/childmode/common/AliDialogUtil;->showCameraConfirmDialog(Landroid/content/Context;)Landroid/app/Dialog;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/childmode/Global;->access$002(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method
