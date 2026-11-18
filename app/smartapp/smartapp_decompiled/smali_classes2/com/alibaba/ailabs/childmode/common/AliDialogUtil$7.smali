.class Lcom/alibaba/ailabs/childmode/common/AliDialogUtil$7;
.super Ljava/lang/Object;
.source "AliDialogUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/childmode/common/AliDialogUtil;->showProgressDialogInner(Ljava/lang/String;Z)V
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

    .line 441
    iput-object p1, p0, Lcom/alibaba/ailabs/childmode/common/AliDialogUtil$7;->this$0:Lcom/alibaba/ailabs/childmode/common/AliDialogUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .line 444
    iget-object p1, p0, Lcom/alibaba/ailabs/childmode/common/AliDialogUtil$7;->this$0:Lcom/alibaba/ailabs/childmode/common/AliDialogUtil;

    invoke-static {p1}, Lcom/alibaba/ailabs/childmode/common/AliDialogUtil;->access$400(Lcom/alibaba/ailabs/childmode/common/AliDialogUtil;)Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 445
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 446
    nop

    nop

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method
