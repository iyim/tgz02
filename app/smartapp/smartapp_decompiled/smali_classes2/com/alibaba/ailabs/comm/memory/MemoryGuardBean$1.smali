.class final Lcom/alibaba/ailabs/comm/memory/MemoryGuardBean$1;
.super Ljava/lang/Object;
.source "MemoryGuardBean.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/comm/memory/MemoryGuardBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/alibaba/ailabs/comm/memory/MemoryGuardBean;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/alibaba/ailabs/comm/memory/MemoryGuardBean;
    .locals 1

    .line 116
    new-instance v0, Lcom/alibaba/ailabs/comm/memory/MemoryGuardBean;

    invoke-direct {v0, p1}, Lcom/alibaba/ailabs/comm/memory/MemoryGuardBean;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 113
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/comm/memory/MemoryGuardBean$1;->createFromParcel(Landroid/os/Parcel;)Lcom/alibaba/ailabs/comm/memory/MemoryGuardBean;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/alibaba/ailabs/comm/memory/MemoryGuardBean;
    .locals 0

    .line 121
    new-array p1, p1, [Lcom/alibaba/ailabs/comm/memory/MemoryGuardBean;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 113
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/comm/memory/MemoryGuardBean$1;->newArray(I)[Lcom/alibaba/ailabs/comm/memory/MemoryGuardBean;

    move-result-object p1

    return-object p1
.end method
