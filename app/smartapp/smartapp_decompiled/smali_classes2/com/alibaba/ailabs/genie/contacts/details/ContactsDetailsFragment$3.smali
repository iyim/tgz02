.class Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment$3;
.super Ljava/lang/Object;
.source "ContactsDetailsFragment.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsDialView$IDialClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment$3;->this$0:Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessageClickListener(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 128
    invoke-static {}, Lcom/alibaba/ailabs/genie/contacts/common/utils/ClickUTUtils;->leaveMessage()V

    .line 129
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment$3;->this$0:Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment$3;->this$0:Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;->access$000(Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;)Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;->getContacts()Landroid/arch/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroid/arch/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;

    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/contacts/common/utils/RTCUtil;->leaveMessage(Landroid/content/Context;Lcom/alibaba/ailabs/genie/contacts/model/Contacts;)V

    goto :goto_0

    .line 131
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment$3;->this$0:Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;->access$200(Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;)V

    :goto_0
    return-void
.end method

.method public onPSTNClickListener(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 138
    invoke-static {}, Lcom/alibaba/ailabs/genie/contacts/common/utils/ClickUTUtils;->callPstn()V

    .line 139
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment$3;->this$0:Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment$3;->this$0:Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;->access$000(Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;)Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;->getContacts()Landroid/arch/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroid/arch/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;

    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/contacts/common/utils/RTCUtil;->callPstn(Landroid/content/Context;Lcom/alibaba/ailabs/genie/contacts/model/Contacts;)V

    goto :goto_0

    .line 141
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment$3;->this$0:Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;->access$200(Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;)V

    :goto_0
    return-void
.end method

.method public onVoipAudioClickListener(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 158
    invoke-static {}, Lcom/alibaba/ailabs/genie/contacts/common/utils/ClickUTUtils;->callAudio()V

    .line 159
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment$3;->this$0:Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment$3;->this$0:Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;->access$000(Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;)Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;->getContacts()Landroid/arch/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroid/arch/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/alibaba/ailabs/genie/contacts/common/utils/RTCUtil;->callVoip(Landroid/content/Context;Lcom/alibaba/ailabs/genie/contacts/model/Contacts;Z)V

    goto :goto_0

    .line 161
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment$3;->this$0:Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;->access$200(Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;)V

    :goto_0
    return-void
.end method

.method public onVoipVideoClickListener(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 148
    invoke-static {}, Lcom/alibaba/ailabs/genie/contacts/common/utils/ClickUTUtils;->callVideo()V

    .line 149
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment$3;->this$0:Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment$3;->this$0:Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;->access$000(Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;)Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;->getContacts()Landroid/arch/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroid/arch/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/alibaba/ailabs/genie/contacts/common/utils/RTCUtil;->callVoip(Landroid/content/Context;Lcom/alibaba/ailabs/genie/contacts/model/Contacts;Z)V

    goto :goto_0

    .line 151
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment$3;->this$0:Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;->access$200(Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;)V

    :goto_0
    return-void
.end method
