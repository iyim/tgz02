.class Lcom/alibaba/ailabs/genie/contacts/add/AddViewModel$7;
.super Lcom/alibaba/ailabs/genie/contacts/repository/callback/ContactsCallback;
.source "AddViewModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/contacts/add/AddViewModel;->deleteContacts()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/ailabs/genie/contacts/repository/callback/ContactsCallback<",
        "Lcom/alibaba/ailabs/genie/contacts/repository/response/ContactsBaseResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/contacts/add/AddViewModel;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/contacts/add/AddViewModel;)V
    .locals 0

    .line 191
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/add/AddViewModel$7;->this$0:Lcom/alibaba/ailabs/genie/contacts/add/AddViewModel;

    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/contacts/repository/callback/ContactsCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 199
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/add/AddViewModel$7;->this$0:Lcom/alibaba/ailabs/genie/contacts/add/AddViewModel;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/contacts/add/AddViewModel;->access$300(Lcom/alibaba/ailabs/genie/contacts/add/AddViewModel;)Landroid/arch/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/arch/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onSuccess(Lcom/alibaba/ailabs/genie/contacts/repository/response/ContactsBaseResponse;)V
    .locals 1

    .line 194
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/add/AddViewModel$7;->this$0:Lcom/alibaba/ailabs/genie/contacts/add/AddViewModel;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/contacts/add/AddViewModel;->access$300(Lcom/alibaba/ailabs/genie/contacts/add/AddViewModel;)Landroid/arch/lifecycle/MutableLiveData;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/arch/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method
