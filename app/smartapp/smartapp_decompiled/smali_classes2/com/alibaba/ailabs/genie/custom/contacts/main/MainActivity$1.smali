.class Lcom/alibaba/ailabs/genie/custom/contacts/main/MainActivity$1;
.super Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/custom/contacts/main/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/custom/contacts/main/MainActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/custom/contacts/main/MainActivity;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/main/MainActivity$1;->this$0:Lcom/alibaba/ailabs/genie/custom/contacts/main/MainActivity;

    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 65
    invoke-super {p0, p1}, Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;->handleMessage(Landroid/os/Message;)V

    .line 66
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/main/MainActivity$1;->this$0:Lcom/alibaba/ailabs/genie/custom/contacts/main/MainActivity;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/custom/contacts/main/MainActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 69
    :cond_0
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 79
    :cond_1
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/main/MainActivity$1;->this$0:Lcom/alibaba/ailabs/genie/custom/contacts/main/MainActivity;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/custom/contacts/main/MainActivity;->access$000(Lcom/alibaba/ailabs/genie/custom/contacts/main/MainActivity;)Lcom/alibaba/ailabs/genie/widget/GenieProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/widget/GenieProgressDialog;->dismiss()V

    goto :goto_0

    .line 72
    :cond_2
    :try_start_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/main/MainActivity$1;->this$0:Lcom/alibaba/ailabs/genie/custom/contacts/main/MainActivity;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/custom/contacts/main/MainActivity;->access$000(Lcom/alibaba/ailabs/genie/custom/contacts/main/MainActivity;)Lcom/alibaba/ailabs/genie/widget/GenieProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/widget/GenieProgressDialog;->show()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 74
    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    :goto_0
    return-void
.end method
