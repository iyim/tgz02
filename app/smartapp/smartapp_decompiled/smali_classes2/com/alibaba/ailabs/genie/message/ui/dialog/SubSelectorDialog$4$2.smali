.class Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog$4$2;
.super Ljava/lang/Object;
.source "SubSelectorDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog$4;->onResult(ILjava/lang/String;Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog$4;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog$4;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog$4$2;->this$1:Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 178
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog$4$2;->this$1:Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog$4;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog$4;->this$0:Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog;->access$400(Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u5f00\u542f\u5931\u8d25"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
