.class public Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;
.super Landroid/arch/lifecycle/ViewModel;
.source "DetailsViewModel.java"


# instance fields
.field private mContactId:Ljava/lang/String;

.field private mContacts:Landroid/arch/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/lifecycle/MutableLiveData<",
            "Lcom/alibaba/ailabs/genie/contacts/model/Contacts;",
            ">;"
        }
    .end annotation
.end field

.field private mContactsByMobile:Landroid/arch/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/lifecycle/MutableLiveData<",
            "Lcom/alibaba/ailabs/genie/contacts/model/Contacts;",
            ">;"
        }
    .end annotation
.end field

.field private mContactsExtra:Lcom/alibaba/ailabs/genie/contacts/model/Contacts;

.field private mDevice:Landroid/arch/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/lifecycle/MutableLiveData<",
            "Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;",
            ">;"
        }
    .end annotation
.end field

.field private mMobile:Ljava/lang/String;

.field private mUpdateBlockResult:Landroid/arch/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUpdateDeviceResult:Landroid/arch/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUpdateMemberResult:Landroid/arch/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUserId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Landroid/arch/lifecycle/ViewModel;-><init>()V

    .line 21
    new-instance v0, Landroid/arch/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroid/arch/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;->mContacts:Landroid/arch/lifecycle/MutableLiveData;

    .line 22
    new-instance v0, Landroid/arch/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroid/arch/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;->mContactsByMobile:Landroid/arch/lifecycle/MutableLiveData;

    .line 23
    new-instance v0, Landroid/arch/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroid/arch/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;->mDevice:Landroid/arch/lifecycle/MutableLiveData;

    .line 28
    new-instance v0, Landroid/arch/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroid/arch/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;->mUpdateMemberResult:Landroid/arch/lifecycle/MutableLiveData;

    .line 29
    new-instance v0, Landroid/arch/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroid/arch/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;->mUpdateBlockResult:Landroid/arch/lifecycle/MutableLiveData;

    .line 30
    new-instance v0, Landroid/arch/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroid/arch/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;->mUpdateDeviceResult:Landroid/arch/lifecycle/MutableLiveData;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;)Landroid/arch/lifecycle/MutableLiveData;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;->mContacts:Landroid/arch/lifecycle/MutableLiveData;

    return-object p0
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;)Landroid/arch/lifecycle/MutableLiveData;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;->mContactsByMobile:Landroid/arch/lifecycle/MutableLiveData;

    return-object p0
.end method

.method static synthetic access$200(Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;)Landroid/arch/lifecycle/MutableLiveData;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;->mDevice:Landroid/arch/lifecycle/MutableLiveData;

    return-object p0
.end method

.method static synthetic access$300(Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;)Landroid/arch/lifecycle/MutableLiveData;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;->mUpdateMemberResult:Landroid/arch/lifecycle/MutableLiveData;

    return-object p0
.end method

.method static synthetic access$400(Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;)Landroid/arch/lifecycle/MutableLiveData;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;->mUpdateBlockResult:Landroid/arch/lifecycle/MutableLiveData;

    return-object p0
.end method

.method static synthetic access$500(Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;)Landroid/arch/lifecycle/MutableLiveData;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;->mUpdateDeviceResult:Landroid/arch/lifecycle/MutableLiveData;

    return-object p0
.end method


# virtual methods
.method public getContactId()Ljava/lang/String;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;->mContactId:Ljava/lang/String;

    return-object v0
.end method

.method public getContacts()Landroid/arch/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/arch/lifecycle/MutableLiveData<",
            "Lcom/alibaba/ailabs/genie/contacts/model/Contacts;",
            ">;"
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;->mContacts:Landroid/arch/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getContactsByMobile()Landroid/arch/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/arch/lifecycle/MutableLiveData<",
            "Lcom/alibaba/ailabs/genie/contacts/model/Contacts;",
            ">;"
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;->mContactsByMobile:Landroid/arch/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getContactsExtra()Lcom/alibaba/ailabs/genie/contacts/model/Contacts;
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;->mContactsExtra:Lcom/alibaba/ailabs/genie/contacts/model/Contacts;

    return-object v0
.end method

.method public getDevice()Landroid/arch/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/arch/lifecycle/LiveData<",
            "Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;",
            ">;"
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;->mDevice:Landroid/arch/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getMobile()Ljava/lang/String;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;->mMobile:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateBlockResult()Landroid/arch/lifecycle/MutableLiveData;
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
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;->mUpdateBlockResult:Landroid/arch/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getUpdateDeviceResult()Landroid/arch/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/arch/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 197
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;->mUpdateDeviceResult:Landroid/arch/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getUpdateMemberResult()Landroid/arch/lifecycle/MutableLiveData;
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
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;->mUpdateMemberResult:Landroid/arch/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;->mUserId:Ljava/lang/String;

    return-object v0
.end method

.method public loadSingleContactsByContactId(Ljava/lang/String;)V
    .locals 1

    .line 36
    new-instance v0, Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel$1;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel$1;-><init>(Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/contacts/repository/ContactsRepository;->getContactsByContactId(Ljava/lang/String;Lcom/alibaba/ailabs/genie/contacts/repository/callback/ContactsCallback;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public loadSingleContactsByMobile(Ljava/lang/String;)V
    .locals 1

    .line 68
    new-instance v0, Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel$3;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel$3;-><init>(Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/contacts/repository/ContactsRepository;->getContactsByMobile(Ljava/lang/String;Lcom/alibaba/ailabs/genie/contacts/repository/callback/ContactsCallback;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public loadSingleContactsByUserId(Ljava/lang/String;)V
    .locals 1

    .line 52
    new-instance v0, Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel$2;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel$2;-><init>(Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/contacts/repository/ContactsRepository;->getContactsByUserId(Ljava/lang/String;Lcom/alibaba/ailabs/genie/contacts/repository/callback/ContactsCallback;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public loadSingleDevice(Ljava/lang/String;)V
    .locals 1

    .line 84
    new-instance v0, Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel$4;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel$4;-><init>(Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/contacts/repository/ContactsRepository;->getDevice(Ljava/lang/String;Lcom/alibaba/ailabs/genie/contacts/repository/callback/ContactsCallback;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public setContactId(Ljava/lang/String;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;->mContactId:Ljava/lang/String;

    return-void
.end method

.method public setContactsExtra(Lcom/alibaba/ailabs/genie/contacts/model/Contacts;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;->mContactsExtra:Lcom/alibaba/ailabs/genie/contacts/model/Contacts;

    return-void
.end method

.method public setMobile(Ljava/lang/String;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;->mMobile:Ljava/lang/String;

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;->mUserId:Ljava/lang/String;

    return-void
.end method

.method public updateBlock(Z)V
    .locals 3

    .line 158
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;->mContactId:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    new-instance v1, Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel$6;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel$6;-><init>(Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;)V

    const-string v2, "preventCallFlag"

    invoke-static {v0, v2, p1, v1}, Lcom/alibaba/ailabs/genie/contacts/repository/ContactsRepository;->updateContacts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/alibaba/ailabs/genie/contacts/repository/callback/ContactsCallback;)V

    return-void
.end method

.method public updateDeviceName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;->mDevice:Landroid/arch/lifecycle/MutableLiveData;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/arch/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 183
    :cond_0
    new-instance v0, Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel$7;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel$7;-><init>(Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;)V

    invoke-static {p1, p2, v0}, Lcom/alibaba/ailabs/genie/contacts/repository/DeviceContactsRepository;->updateDeviceContacts(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/ailabs/genie/contacts/repository/callback/ContactsCallback;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public updateFamilyMember(Z)V
    .locals 3

    .line 144
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;->mContactId:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    new-instance v1, Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel$5;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel$5;-><init>(Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;)V

    const-string v2, "familyFlag"

    invoke-static {v0, v2, p1, v1}, Lcom/alibaba/ailabs/genie/contacts/repository/ContactsRepository;->updateContacts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/alibaba/ailabs/genie/contacts/repository/callback/ContactsCallback;)V

    return-void
.end method
