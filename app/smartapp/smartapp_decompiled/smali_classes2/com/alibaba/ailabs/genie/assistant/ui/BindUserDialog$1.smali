.class Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog$1;
.super Ljava/lang/Object;
.source "BindUserDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog$1;->this$0:Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 101
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog$1;->this$0:Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;->access$000(Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 102
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->getInstance()Lcom/alibaba/ailabs/geniesdk/AiLabsCore;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->bindUser()V

    goto :goto_1

    .line 105
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog$1;->this$0:Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;->access$100(Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 108
    :catch_0
    :try_start_1
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog$1;->this$0:Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;->access$200(Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 110
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 113
    :goto_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog$1;->this$0:Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;->access$300(Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;->getinstace(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;->hideBindUI(Z)V

    :goto_1
    return-void
.end method
