.class Lcom/alibaba/ailabs/genie/custom/contacts/repository/ContactRepository$1;
.super Ljava/lang/Object;
.source "ContactRepository.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/custom/contacts/repository/ContactRepository;->fetchContactDetail(Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/ailabs/genie/second/MtopClient$Callback<",
        "Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/ContactDetailResp;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/custom/contacts/repository/ContactRepository;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/custom/contacts/repository/ContactRepository;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/repository/ContactRepository$1;->this$0:Lcom/alibaba/ailabs/genie/custom/contacts/repository/ContactRepository;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 90
    new-instance v0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/ContactsDetailWrapper;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/ContactsDetailWrapper;-><init>()V

    .line 91
    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/ContactsDetailWrapper;->setErrorCode(Ljava/lang/String;)V

    .line 92
    invoke-virtual {v0, p2}, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/ContactsDetailWrapper;->setMessage(Ljava/lang/String;)V

    .line 93
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/repository/ContactRepository$1;->this$0:Lcom/alibaba/ailabs/genie/custom/contacts/repository/ContactRepository;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/custom/contacts/repository/ContactRepository;->contactDetail:Lcom/alibaba/ailabs/genie/custom/contacts/common/data/HashLiveData;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/custom/contacts/common/data/HashLiveData;->setDataHash(I)V

    .line 94
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/repository/ContactRepository$1;->this$0:Lcom/alibaba/ailabs/genie/custom/contacts/repository/ContactRepository;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/custom/contacts/repository/ContactRepository;->contactDetail:Lcom/alibaba/ailabs/genie/custom/contacts/common/data/HashLiveData;

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/custom/contacts/common/data/HashLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onSuccess(Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse<",
            "Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/ContactDetailResp;",
            ">;)V"
        }
    .end annotation

    .line 82
    new-instance v0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/ContactsDetailWrapper;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/ContactsDetailWrapper;-><init>()V

    .line 83
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;->getData()Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/ContactDetailResp;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/ContactDetailResp;->getModel()Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/ContactsDetailWrapper;->setContacts(Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;)V

    .line 84
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/repository/ContactRepository$1;->this$0:Lcom/alibaba/ailabs/genie/custom/contacts/repository/ContactRepository;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/custom/contacts/repository/ContactRepository;->contactDetail:Lcom/alibaba/ailabs/genie/custom/contacts/common/data/HashLiveData;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/alibaba/ailabs/genie/custom/contacts/common/data/HashLiveData;->setDataHash(I)V

    .line 85
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/repository/ContactRepository$1;->this$0:Lcom/alibaba/ailabs/genie/custom/contacts/repository/ContactRepository;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/custom/contacts/repository/ContactRepository;->contactDetail:Lcom/alibaba/ailabs/genie/custom/contacts/common/data/HashLiveData;

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/custom/contacts/common/data/HashLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method
