.class Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnActivity$1;
.super Ljava/lang/Object;
.source "VoipToPstnActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnActivity;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnActivity$1;->this$0:Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 164
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 165
    sget v0, Lcom/alibaba/ailabs/genie/contacts/R$id;->btn_pstn:I

    if-ne p1, v0, :cond_1

    .line 166
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnActivity$1;->this$0:Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnActivity;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnActivity;->access$000(Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnActivity;)Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 167
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnActivity$1;->this$0:Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnActivity;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnActivity;->access$000(Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnActivity;)Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/contacts/common/utils/RTCUtil;->callPstn(Landroid/content/Context;Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;)V

    goto :goto_0

    .line 169
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnActivity$1;->this$0:Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnActivity;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnActivity;->access$100(Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnActivity;)Lcom/alibaba/ailabs/genie/contacts/model/Contacts;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/contacts/common/utils/RTCUtil;->callPstn(Landroid/content/Context;Lcom/alibaba/ailabs/genie/contacts/model/Contacts;)V

    .line 171
    :goto_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnActivity$1;->this$0:Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnActivity;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnActivity;->finish()V

    goto :goto_2

    .line 172
    :cond_1
    sget v0, Lcom/alibaba/ailabs/genie/contacts/R$id;->btn_system_inform:I

    if-ne p1, v0, :cond_3

    .line 173
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnActivity$1;->this$0:Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnActivity;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnActivity;->access$200(Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnActivity;)Lcom/alibaba/ailabs/genie/contacts/sysinform/SysInformViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/sysinform/SysInformViewModel;->isSysInformEnable()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 174
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnActivity$1;->this$0:Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnActivity;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnActivity;->access$000(Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnActivity;)Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 175
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnActivity$1;->this$0:Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnActivity;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnActivity;->access$200(Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnActivity;)Lcom/alibaba/ailabs/genie/contacts/sysinform/SysInformViewModel;

    move-result-object p1

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnActivity$1;->this$0:Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnActivity;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnActivity;->access$000(Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnActivity;)Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/contacts/sysinform/SysInformViewModel;->sendSysInform(Ljava/lang/String;)V

    goto :goto_1

    .line 177
    :cond_2
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnActivity$1;->this$0:Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnActivity;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnActivity;->access$200(Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnActivity;)Lcom/alibaba/ailabs/genie/contacts/sysinform/SysInformViewModel;

    move-result-object p1

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnActivity$1;->this$0:Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnActivity;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnActivity;->access$100(Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnActivity;)Lcom/alibaba/ailabs/genie/contacts/model/Contacts;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->getMobile()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/contacts/sysinform/SysInformViewModel;->sendSysInform(Ljava/lang/String;)V

    .line 179
    :goto_1
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnActivity$1;->this$0:Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnActivity;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnActivity;->access$200(Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnActivity;)Lcom/alibaba/ailabs/genie/contacts/sysinform/SysInformViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/sysinform/SysInformViewModel;->getSystemInform()Landroid/arch/lifecycle/MutableLiveData;

    move-result-object p1

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnActivity$1;->this$0:Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnActivity;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnActivity;->access$300(Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnActivity;)Landroid/arch/lifecycle/Observer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/arch/lifecycle/MutableLiveData;->observe(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    :cond_3
    :goto_2
    return-void
.end method
