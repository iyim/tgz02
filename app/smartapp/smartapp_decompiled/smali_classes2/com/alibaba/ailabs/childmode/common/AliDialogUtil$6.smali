.class Lcom/alibaba/ailabs/childmode/common/AliDialogUtil$6;
.super Ljava/lang/Object;
.source "AliDialogUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/childmode/common/AliDialogUtil;->showNetworkDialog(B)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/childmode/common/AliDialogUtil;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/childmode/common/AliDialogUtil;)V
    .locals 0

    .line 355
    iput-object p1, p0, Lcom/alibaba/ailabs/childmode/common/AliDialogUtil$6;->this$0:Lcom/alibaba/ailabs/childmode/common/AliDialogUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p3, 0x4

    if-ne p2, p3, :cond_1

    .line 360
    iget-object p2, p0, Lcom/alibaba/ailabs/childmode/common/AliDialogUtil$6;->this$0:Lcom/alibaba/ailabs/childmode/common/AliDialogUtil;

    invoke-static {p2}, Lcom/alibaba/ailabs/childmode/common/AliDialogUtil;->access$400(Lcom/alibaba/ailabs/childmode/common/AliDialogUtil;)Landroid/content/Context;

    move-result-object p2

    .line 361
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    if-eqz p2, :cond_0

    .line 362
    instance-of p1, p2, Landroid/app/Activity;

    if-eqz p1, :cond_0

    .line 364
    nop

    nop

    .line 365
    invoke-virtual {p2}, Landroid/app/Activity;->finish()V

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
