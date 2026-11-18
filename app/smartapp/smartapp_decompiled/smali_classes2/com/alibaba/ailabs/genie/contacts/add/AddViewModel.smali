.class public Lcom/alibaba/ailabs/genie/contacts/add/AddViewModel;
.super Landroid/arch/lifecycle/AndroidViewModel;
.source "AddViewModel.java"


# instance fields
.field private isEditAvatar:Z

.field private isEditMode:Z

.field private mAddResult:Landroid/arch/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDeleteResult:Landroid/arch/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mEditContacts:Lcom/alibaba/ailabs/genie/contacts/model/Contacts;

.field private mFilePath:Ljava/lang/String;

.field private mUpdateResult:Landroid/arch/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 0
    .param p1    # Landroid/app/Application;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 32
    invoke-direct {p0, p1}, Landroid/arch/lifecycle/AndroidViewModel;-><init>(Landroid/app/Application;)V

    .line 24
    new-instance p1, Landroid/arch/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroid/arch/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/add/AddViewModel;->mDeleteResult:Landroid/arch/lifecycle/MutableLiveData;

    .line 25
    new-instance p1, Landroid/arch/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroid/arch/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/add/AddViewModel;->mAddResult:Landroid/arch/lifecycle/MutableLiveData;

    .line 26
    new-instance p1, Landroid/arch/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroid/arch/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/add/AddViewModel;->mUpdateResult:Landroid/arch/lifecycle/MutableLiveData;

    const/4 p1, 0x0

    .line 27
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/contacts/add/AddViewModel;->isEditMode:Z

    .line 28
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/contacts/add/AddViewModel;->isEditAvatar:Z

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/genie/contacts/add/AddViewModel;)Lcom/alibaba/ailabs/genie/contacts/model/Contacts;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/contacts/add/AddViewModel;->mEditContacts:Lcom/alibaba/ailabs/genie/contacts/model/Contacts;

    return-object p0
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/genie/contacts/add/AddViewModel;)Landroid/arch/lifecycle/MutableLiveData;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/contacts/add/AddViewModel;->mAddResult:Landroid/arch/lifecycle/MutableLiveData;

    return-object p0
.end method

.method static synthetic access$200(Lcom/alibaba/ailabs/genie/contacts/add/AddViewModel;)Landroid/arch/lifecycle/MutableLiveData;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/contacts/add/AddViewModel;->mUpdateResult:Landroid/arch/lifecycle/MutableLiveData;

    return-object p0
.end method

.method static synthetic access$300(Lcom/alibaba/ailabs/genie/contacts/add/AddViewModel;)Landroid/arch/lifecycle/MutableLiveData;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/contacts/add/AddViewModel;->mDeleteResult:Landroid/arch/lifecycle/MutableLiveData;

    return-object p0
.end method


# virtual methods
.method public addContacts()V
    .locals 4

    .line 36
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/add/AddViewModel;->mEditContacts:Lcom/alibaba/ailabs/genie/contacts/model/Contacts;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "contacts_add"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/add/AddViewModel;->mFilePath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 38
    invoke-static {}, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;->getInstance()Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;->getAuthInfo()Lcom/alibaba/ailabs/genie/second/genie/AuthInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/second/genie/AuthInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    .line 39
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "12818"

    .line 42
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/add/AddViewModel;->getApplication()Landroid/app/Application;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/contacts/add/AddViewModel;->mFilePath:Ljava/lang/String;

    new-instance v3, Lcom/alibaba/ailabs/genie/contacts/add/AddViewModel$1;

    invoke-direct {v3, p0}, Lcom/alibaba/ailabs/genie/contacts/add/AddViewModel$1;-><init>(Lcom/alibaba/ailabs/genie/contacts/add/AddViewModel;)V

    invoke-static {v1, v0, v2, v3}, Lcom/alibaba/ailabs/genie/contacts/avatar/AvatarUtils;->uploadAvatar(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/ailabs/genie/second/oss/UploadFileHelper$UploadFileListener;)V

    goto :goto_0

    .line 67
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/add/AddViewModel;->mEditContacts:Lcom/alibaba/ailabs/genie/contacts/model/Contacts;

    new-instance v1, Lcom/alibaba/ailabs/genie/contacts/add/AddViewModel$2;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/contacts/add/AddViewModel$2;-><init>(Lcom/alibaba/ailabs/genie/contacts/add/AddViewModel;)V

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/contacts/repository/ContactsRepository;->addContacts(Lcom/alibaba/ailabs/genie/contacts/model/Contacts;Lcom/alibaba/ailabs/genie/contacts/repository/callback/ContactsCallback;)V

    :goto_0
    return-void
.end method

.method public deleteContacts()V
    .locals 2

    .line 191
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/add/AddViewModel;->mEditContacts:Lcom/alibaba/ailabs/genie/contacts/model/Contacts;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->getUserId()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/alibaba/ailabs/genie/contacts/add/AddViewModel$7;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/contacts/add/AddViewModel$7;-><init>(Lcom/alibaba/ailabs/genie/contacts/add/AddViewModel;)V

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/contacts/repository/ContactsRepository;->deleteContacts(Ljava/lang/String;Lcom/alibaba/ailabs/genie/contacts/repository/callback/ContactsCallback;)V

    return-void
.end method

.method public getAddResult()Landroid/arch/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/arch/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 172
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/add/AddViewModel;->mAddResult:Landroid/arch/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getDeleteResult()Landroid/arch/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/arch/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 205
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/add/AddViewModel;->mDeleteResult:Landroid/arch/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getEditContacts()Lcom/alibaba/ailabs/genie/contacts/model/Contacts;
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/add/AddViewModel;->mEditContacts:Lcom/alibaba/ailabs/genie/contacts/model/Contacts;

    if-nez v0, :cond_0

    .line 181
    new-instance v0, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/add/AddViewModel;->mEditContacts:Lcom/alibaba/ailabs/genie/contacts/model/Contacts;

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/add/AddViewModel;->mEditContacts:Lcom/alibaba/ailabs/genie/contacts/model/Contacts;

    return-object v0
.end method

.method public getUpdateResult()Landroid/arch/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/arch/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 176
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/add/AddViewModel;->mUpdateResult:Landroid/arch/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public isEditAvatar()Z
    .locals 1

    .line 217
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/contacts/add/AddViewModel;->isEditAvatar:Z

    return v0
.end method

.method public isEditMode()Z
    .locals 1

    .line 209
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/contacts/add/AddViewModel;->isEditMode:Z

    return v0
.end method

.method public setEditAvatar(Z)V
    .locals 0

    .line 221
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/contacts/add/AddViewModel;->isEditAvatar:Z

    return-void
.end method

.method public setEditContacts(Lcom/alibaba/ailabs/genie/contacts/model/Contacts;)V
    .locals 0

    .line 187
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/add/AddViewModel;->mEditContacts:Lcom/alibaba/ailabs/genie/contacts/model/Contacts;

    return-void
.end method

.method public setEditMode(Z)V
    .locals 0

    .line 213
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/contacts/add/AddViewModel;->isEditMode:Z

    return-void
.end method

.method public setFilePath(Ljava/lang/String;)V
    .locals 0

    .line 225
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/add/AddViewModel;->mFilePath:Ljava/lang/String;

    return-void
.end method

.method public updateContacts()V
    .locals 4

    .line 82
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/contacts/add/AddViewModel;->isEditAvatar:Z

    if-eqz v0, :cond_1

    .line 83
    invoke-static {}, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;->getInstance()Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;->getAuthInfo()Lcom/alibaba/ailabs/genie/second/genie/AuthInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/second/genie/AuthInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    .line 84
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "12818"

    .line 87
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/add/AddViewModel;->getApplication()Landroid/app/Application;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/contacts/add/AddViewModel;->mFilePath:Ljava/lang/String;

    new-instance v3, Lcom/alibaba/ailabs/genie/contacts/add/AddViewModel$3;

    invoke-direct {v3, p0}, Lcom/alibaba/ailabs/genie/contacts/add/AddViewModel$3;-><init>(Lcom/alibaba/ailabs/genie/contacts/add/AddViewModel;)V

    invoke-static {v1, v0, v2, v3}, Lcom/alibaba/ailabs/genie/contacts/avatar/AvatarUtils;->uploadAvatar(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/ailabs/genie/second/oss/UploadFileHelper$UploadFileListener;)V

    goto :goto_0

    .line 112
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/add/AddViewModel;->mEditContacts:Lcom/alibaba/ailabs/genie/contacts/model/Contacts;

    new-instance v1, Lcom/alibaba/ailabs/genie/contacts/add/AddViewModel$4;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/contacts/add/AddViewModel$4;-><init>(Lcom/alibaba/ailabs/genie/contacts/add/AddViewModel;)V

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/contacts/repository/ContactsRepository;->updateContacts(Lcom/alibaba/ailabs/genie/contacts/model/Contacts;Lcom/alibaba/ailabs/genie/contacts/repository/callback/ContactsCallback;)V

    :goto_0
    return-void
.end method

.method public updateMineInfo()V
    .locals 4

    .line 127
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/contacts/add/AddViewModel;->isEditAvatar:Z

    if-eqz v0, :cond_1

    .line 128
    invoke-static {}, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;->getInstance()Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;->getAuthInfo()Lcom/alibaba/ailabs/genie/second/genie/AuthInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/second/genie/AuthInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    .line 129
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "12818"

    .line 132
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/add/AddViewModel;->getApplication()Landroid/app/Application;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/contacts/add/AddViewModel;->mFilePath:Ljava/lang/String;

    new-instance v3, Lcom/alibaba/ailabs/genie/contacts/add/AddViewModel$5;

    invoke-direct {v3, p0}, Lcom/alibaba/ailabs/genie/contacts/add/AddViewModel$5;-><init>(Lcom/alibaba/ailabs/genie/contacts/add/AddViewModel;)V

    invoke-static {v1, v0, v2, v3}, Lcom/alibaba/ailabs/genie/contacts/avatar/AvatarUtils;->uploadAvatar(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/ailabs/genie/second/oss/UploadFileHelper$UploadFileListener;)V

    goto :goto_0

    .line 157
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/add/AddViewModel;->mEditContacts:Lcom/alibaba/ailabs/genie/contacts/model/Contacts;

    new-instance v1, Lcom/alibaba/ailabs/genie/contacts/add/AddViewModel$6;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/contacts/add/AddViewModel$6;-><init>(Lcom/alibaba/ailabs/genie/contacts/add/AddViewModel;)V

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/contacts/repository/ContactsRepository;->updateMine(Lcom/alibaba/ailabs/genie/contacts/model/Contacts;Lcom/alibaba/ailabs/genie/contacts/repository/callback/ContactsCallback;)V

    :goto_0
    return-void
.end method
