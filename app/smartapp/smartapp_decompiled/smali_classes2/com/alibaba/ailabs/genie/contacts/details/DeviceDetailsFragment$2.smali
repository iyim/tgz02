.class Lcom/alibaba/ailabs/genie/contacts/details/DeviceDetailsFragment$2;
.super Ljava/lang/Object;
.source "DeviceDetailsFragment.java"

# interfaces
.implements Landroid/arch/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/contacts/details/DeviceDetailsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/arch/lifecycle/Observer<",
        "Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/contacts/details/DeviceDetailsFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/contacts/details/DeviceDetailsFragment;)V
    .locals 0

    .line 187
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/details/DeviceDetailsFragment$2;->this$0:Lcom/alibaba/ailabs/genie/contacts/details/DeviceDetailsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;)V
    .locals 3
    .param p1    # Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 190
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/DeviceDetailsFragment$2;->this$0:Lcom/alibaba/ailabs/genie/contacts/details/DeviceDetailsFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/contacts/details/DeviceDetailsFragment;->access$100(Lcom/alibaba/ailabs/genie/contacts/details/DeviceDetailsFragment;)Lcom/alibaba/ailabs/genie/widget/GenieProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/widget/GenieProgressDialog;->dismiss()V

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 191
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;->getDeviceName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 195
    :cond_0
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/details/DeviceDetailsFragment$2;->this$0:Lcom/alibaba/ailabs/genie/contacts/details/DeviceDetailsFragment;

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/contacts/details/DeviceDetailsFragment;->access$200(Lcom/alibaba/ailabs/genie/contacts/details/DeviceDetailsFragment;)Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentDeviceDetailsBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentDeviceDetailsBinding;->layoutDeviceDial:Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsDialView;

    invoke-virtual {v1, v0}, Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsDialView;->setVisibility(I)V

    .line 196
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/details/DeviceDetailsFragment$2;->this$0:Lcom/alibaba/ailabs/genie/contacts/details/DeviceDetailsFragment;

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/contacts/details/DeviceDetailsFragment;->access$200(Lcom/alibaba/ailabs/genie/contacts/details/DeviceDetailsFragment;)Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentDeviceDetailsBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentDeviceDetailsBinding;->layoutDeviceInfo:Lcom/alibaba/ailabs/genie/contacts/details/view/DeviceInfoView;

    invoke-virtual {v1, v0}, Lcom/alibaba/ailabs/genie/contacts/details/view/DeviceInfoView;->setVisibility(I)V

    .line 197
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/DeviceDetailsFragment$2;->this$0:Lcom/alibaba/ailabs/genie/contacts/details/DeviceDetailsFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/contacts/details/DeviceDetailsFragment;->access$200(Lcom/alibaba/ailabs/genie/contacts/details/DeviceDetailsFragment;)Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentDeviceDetailsBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentDeviceDetailsBinding;->layoutDeviceInfo:Lcom/alibaba/ailabs/genie/contacts/details/view/DeviceInfoView;

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/contacts/details/view/DeviceInfoView;->setDevice(Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;)V

    .line 198
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/DeviceDetailsFragment$2;->this$0:Lcom/alibaba/ailabs/genie/contacts/details/DeviceDetailsFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/contacts/details/DeviceDetailsFragment;->access$200(Lcom/alibaba/ailabs/genie/contacts/details/DeviceDetailsFragment;)Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentDeviceDetailsBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentDeviceDetailsBinding;->layoutDeviceDial:Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsDialView;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;->getFeatures()Lcom/alibaba/ailabs/genie/contacts/model/Features;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsDialView;->setFeature(Lcom/alibaba/ailabs/genie/contacts/model/Features;)V

    goto :goto_1

    .line 192
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/details/DeviceDetailsFragment$2;->this$0:Lcom/alibaba/ailabs/genie/contacts/details/DeviceDetailsFragment;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/contacts/details/DeviceDetailsFragment;->access$200(Lcom/alibaba/ailabs/genie/contacts/details/DeviceDetailsFragment;)Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentDeviceDetailsBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentDeviceDetailsBinding;->layoutError:Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsError;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/details/DeviceDetailsFragment$2;->this$0:Lcom/alibaba/ailabs/genie/contacts/details/DeviceDetailsFragment;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/contacts/details/DeviceDetailsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alibaba/ailabs/genie/contacts/R$string;->contacts_device_error:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsError;->setMsgInfo(Ljava/lang/String;)V

    .line 193
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/details/DeviceDetailsFragment$2;->this$0:Lcom/alibaba/ailabs/genie/contacts/details/DeviceDetailsFragment;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/contacts/details/DeviceDetailsFragment;->access$200(Lcom/alibaba/ailabs/genie/contacts/details/DeviceDetailsFragment;)Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentDeviceDetailsBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentDeviceDetailsBinding;->layoutError:Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsError;

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsError;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 187
    check-cast p1, Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/contacts/details/DeviceDetailsFragment$2;->onChanged(Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;)V

    return-void
.end method
