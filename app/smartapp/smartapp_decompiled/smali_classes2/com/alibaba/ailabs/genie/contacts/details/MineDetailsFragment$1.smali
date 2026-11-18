.class Lcom/alibaba/ailabs/genie/contacts/details/MineDetailsFragment$1;
.super Ljava/lang/Object;
.source "MineDetailsFragment.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsDialView$IDialClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/contacts/details/MineDetailsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/contacts/details/MineDetailsFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/contacts/details/MineDetailsFragment;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/details/MineDetailsFragment$1;->this$0:Lcom/alibaba/ailabs/genie/contacts/details/MineDetailsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessageClickListener(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 97
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/details/MineDetailsFragment$1;->this$0:Lcom/alibaba/ailabs/genie/contacts/details/MineDetailsFragment;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/details/MineDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/MineDetailsFragment$1;->this$0:Lcom/alibaba/ailabs/genie/contacts/details/MineDetailsFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/contacts/details/MineDetailsFragment;->access$000(Lcom/alibaba/ailabs/genie/contacts/details/MineDetailsFragment;)Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;->getContacts()Landroid/arch/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroid/arch/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;

    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/contacts/common/utils/RTCUtil;->leaveMessage(Landroid/content/Context;Lcom/alibaba/ailabs/genie/contacts/model/Contacts;)V

    :cond_0
    return-void
.end method

.method public onPSTNClickListener(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 104
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/details/MineDetailsFragment$1;->this$0:Lcom/alibaba/ailabs/genie/contacts/details/MineDetailsFragment;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/details/MineDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/MineDetailsFragment$1;->this$0:Lcom/alibaba/ailabs/genie/contacts/details/MineDetailsFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/contacts/details/MineDetailsFragment;->access$000(Lcom/alibaba/ailabs/genie/contacts/details/MineDetailsFragment;)Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;->getContacts()Landroid/arch/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroid/arch/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;

    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/contacts/common/utils/RTCUtil;->callPstn(Landroid/content/Context;Lcom/alibaba/ailabs/genie/contacts/model/Contacts;)V

    :cond_0
    return-void
.end method

.method public onVoipAudioClickListener(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 118
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/details/MineDetailsFragment$1;->this$0:Lcom/alibaba/ailabs/genie/contacts/details/MineDetailsFragment;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/details/MineDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/MineDetailsFragment$1;->this$0:Lcom/alibaba/ailabs/genie/contacts/details/MineDetailsFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/contacts/details/MineDetailsFragment;->access$000(Lcom/alibaba/ailabs/genie/contacts/details/MineDetailsFragment;)Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;->getContacts()Landroid/arch/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroid/arch/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/alibaba/ailabs/genie/contacts/common/utils/RTCUtil;->callVoip(Landroid/content/Context;Lcom/alibaba/ailabs/genie/contacts/model/Contacts;Z)V

    :cond_0
    return-void
.end method

.method public onVoipVideoClickListener(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 111
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/details/MineDetailsFragment$1;->this$0:Lcom/alibaba/ailabs/genie/contacts/details/MineDetailsFragment;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/details/MineDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/MineDetailsFragment$1;->this$0:Lcom/alibaba/ailabs/genie/contacts/details/MineDetailsFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/contacts/details/MineDetailsFragment;->access$000(Lcom/alibaba/ailabs/genie/contacts/details/MineDetailsFragment;)Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;->getContacts()Landroid/arch/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroid/arch/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/alibaba/ailabs/genie/contacts/common/utils/RTCUtil;->callVoip(Landroid/content/Context;Lcom/alibaba/ailabs/genie/contacts/model/Contacts;Z)V

    :cond_0
    return-void
.end method
