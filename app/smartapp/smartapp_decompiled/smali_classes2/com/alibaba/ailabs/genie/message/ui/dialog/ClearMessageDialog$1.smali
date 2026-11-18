.class Lcom/alibaba/ailabs/genie/message/ui/dialog/ClearMessageDialog$1;
.super Ljava/lang/Object;
.source "ClearMessageDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/message/ui/dialog/ClearMessageDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/message/ui/dialog/ClearMessageDialog;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/message/ui/dialog/ClearMessageDialog;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/ui/dialog/ClearMessageDialog$1;->this$0:Lcom/alibaba/ailabs/genie/message/ui/dialog/ClearMessageDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 32
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/ui/dialog/ClearMessageDialog$1;->this$0:Lcom/alibaba/ailabs/genie/message/ui/dialog/ClearMessageDialog;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/message/ui/dialog/ClearMessageDialog;->cancel()V

    return-void
.end method
