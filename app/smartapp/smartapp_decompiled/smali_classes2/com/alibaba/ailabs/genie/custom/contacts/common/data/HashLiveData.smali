.class public Lcom/alibaba/ailabs/genie/custom/contacts/common/data/HashLiveData;
.super Landroid/arch/lifecycle/MutableLiveData;
.source "HashLiveData.java"


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
.field dataHash:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Landroid/arch/lifecycle/MutableLiveData;-><init>()V

    const/4 v0, -0x1

    .line 10
    iput v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/common/data/HashLiveData;->dataHash:I

    return-void
.end method


# virtual methods
.method public getDataHash()I
    .locals 1

    .line 13
    iget v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/common/data/HashLiveData;->dataHash:I

    return v0
.end method

.method public isDataChanged(I)Z
    .locals 2

    .line 21
    iget v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/common/data/HashLiveData;->dataHash:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-eq v0, p1, :cond_0

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

.method public setDataHash(I)V
    .locals 0

    .line 17
    iput p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/common/data/HashLiveData;->dataHash:I

    return-void
.end method
