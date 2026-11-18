.class public Lcom/alibaba/ailabs/genie/contacts/sysinform/SysInformViewModel;
.super Landroid/arch/lifecycle/ViewModel;
.source "SysInformViewModel.java"


# instance fields
.field private isSysInformEnable:Z

.field private mRepository:Lcom/alibaba/ailabs/genie/contacts/repository/SysInformRepository;

.field private mSystemInform:Landroid/arch/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/lifecycle/MutableLiveData<",
            "Lcom/alibaba/ailabs/genie/contacts/model/SystemInform;",
            ">;"
        }
    .end annotation
.end field

.field private mSystemInformCnt:Landroid/arch/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/lifecycle/MutableLiveData<",
            "Lcom/alibaba/ailabs/genie/contacts/model/SystemInform;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Landroid/arch/lifecycle/ViewModel;-><init>()V

    .line 17
    new-instance v0, Landroid/arch/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroid/arch/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/sysinform/SysInformViewModel;->mSystemInformCnt:Landroid/arch/lifecycle/MutableLiveData;

    .line 18
    new-instance v0, Landroid/arch/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroid/arch/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/sysinform/SysInformViewModel;->mSystemInform:Landroid/arch/lifecycle/MutableLiveData;

    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/contacts/sysinform/SysInformViewModel;->isSysInformEnable:Z

    .line 23
    new-instance v0, Lcom/alibaba/ailabs/genie/contacts/repository/SysInformRepository;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/contacts/repository/SysInformRepository;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/sysinform/SysInformViewModel;->mRepository:Lcom/alibaba/ailabs/genie/contacts/repository/SysInformRepository;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/genie/contacts/sysinform/SysInformViewModel;)Landroid/arch/lifecycle/MutableLiveData;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/contacts/sysinform/SysInformViewModel;->mSystemInformCnt:Landroid/arch/lifecycle/MutableLiveData;

    return-object p0
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/genie/contacts/sysinform/SysInformViewModel;)Landroid/arch/lifecycle/MutableLiveData;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/contacts/sysinform/SysInformViewModel;->mSystemInform:Landroid/arch/lifecycle/MutableLiveData;

    return-object p0
.end method


# virtual methods
.method public getSysInformCount(Ljava/lang/String;)V
    .locals 2

    .line 27
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/sysinform/SysInformViewModel;->mRepository:Lcom/alibaba/ailabs/genie/contacts/repository/SysInformRepository;

    new-instance v1, Lcom/alibaba/ailabs/genie/contacts/sysinform/SysInformViewModel$1;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/contacts/sysinform/SysInformViewModel$1;-><init>(Lcom/alibaba/ailabs/genie/contacts/sysinform/SysInformViewModel;)V

    invoke-virtual {v0, p1, v1}, Lcom/alibaba/ailabs/genie/contacts/repository/SysInformRepository;->getSysInformCount(Ljava/lang/String;Lcom/alibaba/ailabs/genie/contacts/repository/callback/ContactsCallback;)V

    return-void
.end method

.method public getSystemInform()Landroid/arch/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/arch/lifecycle/MutableLiveData<",
            "Lcom/alibaba/ailabs/genie/contacts/model/SystemInform;",
            ">;"
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/sysinform/SysInformViewModel;->mSystemInform:Landroid/arch/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getSystemInformCnt()Landroid/arch/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/arch/lifecycle/MutableLiveData<",
            "Lcom/alibaba/ailabs/genie/contacts/model/SystemInform;",
            ">;"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/sysinform/SysInformViewModel;->mSystemInformCnt:Landroid/arch/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public isSysInformEnable()Z
    .locals 1

    .line 63
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/contacts/sysinform/SysInformViewModel;->isSysInformEnable:Z

    return v0
.end method

.method public sendSysInform(Ljava/lang/String;)V
    .locals 2

    .line 41
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/sysinform/SysInformViewModel;->mRepository:Lcom/alibaba/ailabs/genie/contacts/repository/SysInformRepository;

    new-instance v1, Lcom/alibaba/ailabs/genie/contacts/sysinform/SysInformViewModel$2;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/contacts/sysinform/SysInformViewModel$2;-><init>(Lcom/alibaba/ailabs/genie/contacts/sysinform/SysInformViewModel;)V

    invoke-virtual {v0, p1, v1}, Lcom/alibaba/ailabs/genie/contacts/repository/SysInformRepository;->sendSysInform(Ljava/lang/String;Lcom/alibaba/ailabs/genie/contacts/repository/callback/ContactsCallback;)V

    return-void
.end method

.method public setSysInformEnable(Z)V
    .locals 0

    .line 67
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/contacts/sysinform/SysInformViewModel;->isSysInformEnable:Z

    return-void
.end method
