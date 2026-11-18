.class Lcom/alibaba/ailabs/genie/contacts/details/DeviceDetailsFragment$1;
.super Ljava/lang/Object;
.source "DeviceDetailsFragment.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsDialView$IDialClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/contacts/details/DeviceDetailsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/contacts/details/DeviceDetailsFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/contacts/details/DeviceDetailsFragment;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/details/DeviceDetailsFragment$1;->this$0:Lcom/alibaba/ailabs/genie/contacts/details/DeviceDetailsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessageClickListener(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 142
    invoke-static {}, Lcom/alibaba/ailabs/genie/contacts/common/utils/ClickUTUtils;->leaveMessage()V

    .line 143
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/details/DeviceDetailsFragment$1;->this$0:Lcom/alibaba/ailabs/genie/contacts/details/DeviceDetailsFragment;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/details/DeviceDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/DeviceDetailsFragment$1;->this$0:Lcom/alibaba/ailabs/genie/contacts/details/DeviceDetailsFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/contacts/details/DeviceDetailsFragment;->access$000(Lcom/alibaba/ailabs/genie/contacts/details/DeviceDetailsFragment;)Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;->getDevice()Landroid/arch/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroid/arch/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;

    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/contacts/common/utils/RTCUtil;->leaveMessage(Landroid/content/Context;Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;)V

    :cond_0
    return-void
.end method

.method public onPSTNClickListener(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 150
    invoke-static {}, Lcom/alibaba/ailabs/genie/contacts/common/utils/ClickUTUtils;->callPstn()V

    .line 151
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/details/DeviceDetailsFragment$1;->this$0:Lcom/alibaba/ailabs/genie/contacts/details/DeviceDetailsFragment;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/details/DeviceDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/DeviceDetailsFragment$1;->this$0:Lcom/alibaba/ailabs/genie/contacts/details/DeviceDetailsFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/contacts/details/DeviceDetailsFragment;->access$000(Lcom/alibaba/ailabs/genie/contacts/details/DeviceDetailsFragment;)Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;->getDevice()Landroid/arch/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroid/arch/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;

    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/contacts/common/utils/RTCUtil;->callPstn(Landroid/content/Context;Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;)V

    :cond_0
    return-void
.end method

.method public onVoipAudioClickListener(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 166
    invoke-static {}, Lcom/alibaba/ailabs/genie/contacts/common/utils/ClickUTUtils;->callAudio()V

    .line 167
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/details/DeviceDetailsFragment$1;->this$0:Lcom/alibaba/ailabs/genie/contacts/details/DeviceDetailsFragment;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/details/DeviceDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/DeviceDetailsFragment$1;->this$0:Lcom/alibaba/ailabs/genie/contacts/details/DeviceDetailsFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/contacts/details/DeviceDetailsFragment;->access$000(Lcom/alibaba/ailabs/genie/contacts/details/DeviceDetailsFragment;)Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;->getDevice()Landroid/arch/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroid/arch/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/alibaba/ailabs/genie/contacts/common/utils/RTCUtil;->callVoip(Landroid/content/Context;Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;Z)V

    :cond_0
    return-void
.end method

.method public onVoipVideoClickListener(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 158
    invoke-static {}, Lcom/alibaba/ailabs/genie/contacts/common/utils/ClickUTUtils;->callVideo()V

    .line 159
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/details/DeviceDetailsFragment$1;->this$0:Lcom/alibaba/ailabs/genie/contacts/details/DeviceDetailsFragment;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/details/DeviceDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/DeviceDetailsFragment$1;->this$0:Lcom/alibaba/ailabs/genie/contacts/details/DeviceDetailsFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/contacts/details/DeviceDetailsFragment;->access$000(Lcom/alibaba/ailabs/genie/contacts/details/DeviceDetailsFragment;)Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;->getDevice()Landroid/arch/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroid/arch/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/alibaba/ailabs/genie/contacts/common/utils/RTCUtil;->callVoip(Landroid/content/Context;Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;Z)V

    :cond_0
    return-void
.end method
