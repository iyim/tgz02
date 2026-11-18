.class Lcom/alibaba/ailabs/genie/contacts/details/StrangerDetailsFragment$1;
.super Ljava/lang/Object;
.source "StrangerDetailsFragment.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsDialView$IDialClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/contacts/details/StrangerDetailsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/contacts/details/StrangerDetailsFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/contacts/details/StrangerDetailsFragment;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/details/StrangerDetailsFragment$1;->this$0:Lcom/alibaba/ailabs/genie/contacts/details/StrangerDetailsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessageClickListener(Z)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onPSTNClickListener(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 74
    invoke-static {}, Lcom/alibaba/ailabs/genie/contacts/common/utils/ClickUTUtils;->callPstn()V

    .line 75
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/details/StrangerDetailsFragment$1;->this$0:Lcom/alibaba/ailabs/genie/contacts/details/StrangerDetailsFragment;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/contacts/details/StrangerDetailsFragment;->access$000(Lcom/alibaba/ailabs/genie/contacts/details/StrangerDetailsFragment;)Lcom/alibaba/ailabs/genie/contacts/model/Contacts;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->setFriend(Z)V

    .line 76
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/details/StrangerDetailsFragment$1;->this$0:Lcom/alibaba/ailabs/genie/contacts/details/StrangerDetailsFragment;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/details/StrangerDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/StrangerDetailsFragment$1;->this$0:Lcom/alibaba/ailabs/genie/contacts/details/StrangerDetailsFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/contacts/details/StrangerDetailsFragment;->access$000(Lcom/alibaba/ailabs/genie/contacts/details/StrangerDetailsFragment;)Lcom/alibaba/ailabs/genie/contacts/model/Contacts;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/contacts/common/utils/RTCUtil;->callPstn(Landroid/content/Context;Lcom/alibaba/ailabs/genie/contacts/model/Contacts;)V

    :cond_0
    return-void
.end method

.method public onVoipAudioClickListener(Z)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onVoipVideoClickListener(Z)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
