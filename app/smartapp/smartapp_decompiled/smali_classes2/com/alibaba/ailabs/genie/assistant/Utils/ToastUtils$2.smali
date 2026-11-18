.class final Lcom/alibaba/ailabs/genie/assistant/Utils/ToastUtils$2;
.super Ljava/lang/Object;
.source "ToastUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/assistant/Utils/ToastUtils;->show(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$duration:I

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;I)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/Utils/ToastUtils$2;->val$view:Landroid/view/View;

    iput p2, p0, Lcom/alibaba/ailabs/genie/assistant/Utils/ToastUtils$2;->val$duration:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 104
    invoke-static {}, Lcom/alibaba/ailabs/genie/assistant/Utils/ToastUtils;->cancel()V

    .line 105
    new-instance v0, Landroid/widget/Toast;

    invoke-static {}, Lcom/alibaba/ailabs/genie/assistant/MainApplication;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/Utils/ToastUtils;->access$002(Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 106
    invoke-static {}, Lcom/alibaba/ailabs/genie/assistant/Utils/ToastUtils;->access$000()Landroid/widget/Toast;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/Utils/ToastUtils$2;->val$view:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 107
    invoke-static {}, Lcom/alibaba/ailabs/genie/assistant/Utils/ToastUtils;->access$000()Landroid/widget/Toast;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/ailabs/genie/assistant/Utils/ToastUtils$2;->val$duration:I

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setDuration(I)V

    .line 108
    invoke-static {}, Lcom/alibaba/ailabs/genie/assistant/Utils/ToastUtils;->access$000()Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
