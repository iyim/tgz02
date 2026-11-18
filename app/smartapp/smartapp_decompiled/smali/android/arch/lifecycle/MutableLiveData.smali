.class public Landroid/arch/lifecycle/MutableLiveData;
.super Landroid/arch/lifecycle/LiveData;
.source "MutableLiveData.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/arch/lifecycle/LiveData<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Landroid/arch/lifecycle/LiveData;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public postValue(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 28
    invoke-super {p0, p1}, Landroid/arch/lifecycle/LiveData;->postValue(Ljava/lang/Object;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 33
    invoke-super {p0, p1}, Landroid/arch/lifecycle/LiveData;->setValue(Ljava/lang/Object;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
