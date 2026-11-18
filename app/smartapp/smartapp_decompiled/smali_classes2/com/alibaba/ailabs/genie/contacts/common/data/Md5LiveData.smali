.class public Lcom/alibaba/ailabs/genie/contacts/common/data/Md5LiveData;
.super Landroid/arch/lifecycle/MutableLiveData;
.source "Md5LiveData.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/arch/lifecycle/MutableLiveData<",
        "TT;>;"
    }
.end annotation


# instance fields
.field dataMd5:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Landroid/arch/lifecycle/MutableLiveData;-><init>()V

    const-string v0, ""

    .line 11
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/common/data/Md5LiveData;->dataMd5:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDataMd5()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/common/data/Md5LiveData;->dataMd5:Ljava/lang/String;

    return-object v0
.end method

.method public isDataChanged(Ljava/lang/String;)Z
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/common/data/Md5LiveData;->dataMd5:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/common/data/Md5LiveData;->dataMd5:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public setDataMd5(Ljava/lang/String;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/common/data/Md5LiveData;->dataMd5:Ljava/lang/String;

    return-void
.end method
