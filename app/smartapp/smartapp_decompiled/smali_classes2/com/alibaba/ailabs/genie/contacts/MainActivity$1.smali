.class Lcom/alibaba/ailabs/genie/contacts/MainActivity$1;
.super Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/contacts/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/contacts/MainActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/contacts/MainActivity;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/MainActivity$1;->this$0:Lcom/alibaba/ailabs/genie/contacts/MainActivity;

    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 101
    invoke-super {p0, p1}, Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;->handleMessage(Landroid/os/Message;)V

    .line 102
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/MainActivity$1;->this$0:Lcom/alibaba/ailabs/genie/contacts/MainActivity;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/MainActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 105
    :cond_0
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_5

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 127
    :cond_1
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/MainActivity$1;->this$0:Lcom/alibaba/ailabs/genie/contacts/MainActivity;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/contacts/MainActivity;->cmccPresenter:Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccPresenter;

    if-eqz p1, :cond_6

    .line 128
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/MainActivity$1;->this$0:Lcom/alibaba/ailabs/genie/contacts/MainActivity;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/contacts/MainActivity;->cmccPresenter:Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccPresenter;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccPresenter;->checkPackage()V

    goto :goto_0

    .line 124
    :cond_2
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/MainActivity$1;->this$0:Lcom/alibaba/ailabs/genie/contacts/MainActivity;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/contacts/MainActivity;->access$100(Lcom/alibaba/ailabs/genie/contacts/MainActivity;)Lcom/alibaba/ailabs/genie/contacts/view/MainViewPager;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/contacts/view/MainViewPager;->setVisibility(I)V

    goto :goto_0

    .line 119
    :cond_3
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/MainActivity$1;->this$0:Lcom/alibaba/ailabs/genie/contacts/MainActivity;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/contacts/MainActivity;->access$000(Lcom/alibaba/ailabs/genie/contacts/MainActivity;)Lcom/alibaba/ailabs/genie/widget/GenieProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/widget/GenieProgressDialog;->dismiss()V

    .line 120
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/MainActivity$1;->this$0:Lcom/alibaba/ailabs/genie/contacts/MainActivity;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/MainActivity$1;->this$0:Lcom/alibaba/ailabs/genie/contacts/MainActivity;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/contacts/R$string;->contacts_network_error:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/utils/ToastUtils;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 115
    :cond_4
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/MainActivity$1;->this$0:Lcom/alibaba/ailabs/genie/contacts/MainActivity;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/contacts/MainActivity;->access$000(Lcom/alibaba/ailabs/genie/contacts/MainActivity;)Lcom/alibaba/ailabs/genie/widget/GenieProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/widget/GenieProgressDialog;->dismiss()V

    goto :goto_0

    .line 108
    :cond_5
    :try_start_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/MainActivity$1;->this$0:Lcom/alibaba/ailabs/genie/contacts/MainActivity;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/contacts/MainActivity;->access$000(Lcom/alibaba/ailabs/genie/contacts/MainActivity;)Lcom/alibaba/ailabs/genie/widget/GenieProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/widget/GenieProgressDialog;->show()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 110
    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    :cond_6
    :goto_0
    return-void
.end method
