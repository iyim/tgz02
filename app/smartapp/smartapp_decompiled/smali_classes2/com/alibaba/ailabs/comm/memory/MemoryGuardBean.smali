.class public Lcom/alibaba/ailabs/comm/memory/MemoryGuardBean;
.super Ljava/lang/Object;
.source "MemoryGuardBean.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/comm/memory/MemoryGuardBean$PackagesBean;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/alibaba/ailabs/comm/memory/MemoryGuardBean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private check_interval_secs:I

.field private first_check_secs:I

.field private packages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/comm/memory/MemoryGuardBean$PackagesBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 113
    new-instance v0, Lcom/alibaba/ailabs/comm/memory/MemoryGuardBean$1;

    invoke-direct {v0}, Lcom/alibaba/ailabs/comm/memory/MemoryGuardBean$1;-><init>()V

    sput-object v0, Lcom/alibaba/ailabs/comm/memory/MemoryGuardBean;->CREATOR:Landroid/os/Parcelable$Creator;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alibaba/ailabs/comm/memory/MemoryGuardBean;->first_check_secs:I

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/alibaba/ailabs/comm/memory/MemoryGuardBean;->check_interval_secs:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCheck_interval_secs()I
    .locals 1

    .line 134
    iget v0, p0, Lcom/alibaba/ailabs/comm/memory/MemoryGuardBean;->check_interval_secs:I

    return v0
.end method

.method public getFirst_check_secs()I
    .locals 1

    .line 126
    iget v0, p0, Lcom/alibaba/ailabs/comm/memory/MemoryGuardBean;->first_check_secs:I

    return v0
.end method

.method public getPackages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/comm/memory/MemoryGuardBean$PackagesBean;",
            ">;"
        }
    .end annotation

    .line 142
    iget-object v0, p0, Lcom/alibaba/ailabs/comm/memory/MemoryGuardBean;->packages:Ljava/util/List;

    return-object v0
.end method

.method public setCheck_interval_secs(I)V
    .locals 0

    .line 138
    iput p1, p0, Lcom/alibaba/ailabs/comm/memory/MemoryGuardBean;->check_interval_secs:I

    return-void
.end method

.method public setFirst_check_secs(I)V
    .locals 0

    .line 130
    iput p1, p0, Lcom/alibaba/ailabs/comm/memory/MemoryGuardBean;->first_check_secs:I

    return-void
.end method

.method public setPackages(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/comm/memory/MemoryGuardBean$PackagesBean;",
            ">;)V"
        }
    .end annotation

    .line 146
    iput-object p1, p0, Lcom/alibaba/ailabs/comm/memory/MemoryGuardBean;->packages:Ljava/util/List;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 104
    iget p2, p0, Lcom/alibaba/ailabs/comm/memory/MemoryGuardBean;->first_check_secs:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 105
    iget p2, p0, Lcom/alibaba/ailabs/comm/memory/MemoryGuardBean;->check_interval_secs:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
