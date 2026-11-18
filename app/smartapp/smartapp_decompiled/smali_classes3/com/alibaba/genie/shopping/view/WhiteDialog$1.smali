.class Lcom/alibaba/genie/shopping/view/WhiteDialog$1;
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

    .line 54
    iput-object p1, p0, Lcom/alibaba/genie/shopping/view/WhiteDialog$1;->this$0:Lcom/alibaba/genie/shopping/view/WhiteDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 57
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/alibaba/genie/shopping/view/WhiteDialog$1;->this$0:Lcom/alibaba/genie/shopping/view/WhiteDialog;

    invoke-virtual {v0}, Lcom/alibaba/genie/shopping/view/WhiteDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-class v1, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 58
    iget-object v0, p0, Lcom/alibaba/genie/shopping/view/WhiteDialog$1;->this$0:Lcom/alibaba/genie/shopping/view/WhiteDialog;

    invoke-virtual {v0, p1}, Lcom/alibaba/genie/shopping/view/WhiteDialog;->startActivity(Landroid/content/Intent;)V

    .line 59
    iget-object p1, p0, Lcom/alibaba/genie/shopping/view/WhiteDialog$1;->this$0:Lcom/alibaba/genie/shopping/view/WhiteDialog;

    invoke-virtual {p1}, Lcom/alibaba/genie/shopping/view/WhiteDialog;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
