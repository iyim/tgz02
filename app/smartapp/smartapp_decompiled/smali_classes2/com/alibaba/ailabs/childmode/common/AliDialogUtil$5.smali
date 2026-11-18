.class Lcom/alibaba/ailabs/childmode/common/AliDialogUtil$5;
.super Ljava/lang/Object;
.source "AliDialogUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/childmode/common/AliDialogUtil;->showErrorDialog(BLjava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/app/Dialog;
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

    .line 290
    iput-object p1, p0, Lcom/alibaba/ailabs/childmode/common/AliDialogUtil$5;->this$0:Lcom/alibaba/ailabs/childmode/common/AliDialogUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 293
    iget-object p1, p0, Lcom/alibaba/ailabs/childmode/common/AliDialogUtil$5;->this$0:Lcom/alibaba/ailabs/childmode/common/AliDialogUtil;

    invoke-static {p1}, Lcom/alibaba/ailabs/childmode/common/AliDialogUtil;->access$200(Lcom/alibaba/ailabs/childmode/common/AliDialogUtil;)V

    return-void
.end method
