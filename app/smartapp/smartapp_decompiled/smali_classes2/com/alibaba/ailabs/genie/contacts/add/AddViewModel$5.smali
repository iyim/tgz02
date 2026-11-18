.class Lcom/alibaba/ailabs/genie/contacts/add/AddViewModel$5;
.super Lcom/alibaba/ailabs/genie/contacts/repository/callback/UploadFileCallback;
.source "AddViewModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/contacts/add/AddViewModel;->updateMineInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/contacts/add/AddViewModel;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/contacts/add/AddViewModel;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/add/AddViewModel$5;->this$0:Lcom/alibaba/ailabs/genie/contacts/add/AddViewModel;

    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/contacts/repository/callback/UploadFileCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "errorCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",msg:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "contacts_add"

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/add/AddViewModel$5;->this$0:Lcom/alibaba/ailabs/genie/contacts/add/AddViewModel;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/contacts/add/AddViewModel;->access$200(Lcom/alibaba/ailabs/genie/contacts/add/AddViewModel;)Landroid/arch/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/arch/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onSucceed(Ljava/lang/String;)V
    .locals 2

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "key:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "contacts_add"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/add/AddViewModel$5;->this$0:Lcom/alibaba/ailabs/genie/contacts/add/AddViewModel;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/contacts/add/AddViewModel;->access$000(Lcom/alibaba/ailabs/genie/contacts/add/AddViewModel;)Lcom/alibaba/ailabs/genie/contacts/model/Contacts;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->setAvatar(Ljava/lang/String;)V

    .line 137
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/add/AddViewModel$5;->this$0:Lcom/alibaba/ailabs/genie/contacts/add/AddViewModel;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/contacts/add/AddViewModel;->access$000(Lcom/alibaba/ailabs/genie/contacts/add/AddViewModel;)Lcom/alibaba/ailabs/genie/contacts/model/Contacts;

    move-result-object p1

    new-instance v0, Lcom/alibaba/ailabs/genie/contacts/add/AddViewModel$5$1;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/contacts/add/AddViewModel$5$1;-><init>(Lcom/alibaba/ailabs/genie/contacts/add/AddViewModel$5;)V

    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/contacts/repository/ContactsRepository;->updateMine(Lcom/alibaba/ailabs/genie/contacts/model/Contacts;Lcom/alibaba/ailabs/genie/contacts/repository/callback/ContactsCallback;)V

    return-void
.end method
