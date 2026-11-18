.class Lcom/alibaba/ailabs/genie/message/ui/dialog/SubDialog$1;
.super Ljava/lang/Object;
.source "SubDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/message/ui/dialog/SubDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/message/ui/dialog/SubDialog;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/message/ui/dialog/SubDialog;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/ui/dialog/SubDialog$1;->this$0:Lcom/alibaba/ailabs/genie/message/ui/dialog/SubDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 106
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/ui/dialog/SubDialog$1;->this$0:Lcom/alibaba/ailabs/genie/message/ui/dialog/SubDialog;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/message/ui/dialog/SubDialog;->dismiss()V

    return-void
.end method
