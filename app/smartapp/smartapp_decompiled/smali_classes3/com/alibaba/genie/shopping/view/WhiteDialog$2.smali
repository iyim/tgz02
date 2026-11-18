.class Lcom/alibaba/genie/shopping/view/WhiteDialog$2;
.super Ljava/lang/Object;
.source "WhiteDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/genie/shopping/view/WhiteDialog;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/genie/shopping/view/WhiteDialog;


# direct methods
.method constructor <init>(Lcom/alibaba/genie/shopping/view/WhiteDialog;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/alibaba/genie/shopping/view/WhiteDialog$2;->this$0:Lcom/alibaba/genie/shopping/view/WhiteDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 66
    iget-object p1, p0, Lcom/alibaba/genie/shopping/view/WhiteDialog$2;->this$0:Lcom/alibaba/genie/shopping/view/WhiteDialog;

    invoke-virtual {p1}, Lcom/alibaba/genie/shopping/view/WhiteDialog;->dismiss()V

    return-void
.end method
