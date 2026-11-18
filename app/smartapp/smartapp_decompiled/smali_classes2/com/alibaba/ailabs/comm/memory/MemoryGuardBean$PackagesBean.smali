.class public Lcom/alibaba/ailabs/comm/memory/MemoryGuardBean$PackagesBean;
.super Ljava/lang/Object;
.source "MemoryGuardBean.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/comm/memory/MemoryGuardBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PackagesBean"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/alibaba/ailabs/comm/memory/MemoryGuardBean$PackagesBean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private max_mem_size_mb:I

.field private package_name:Ljava/lang/String;

.field public pid:I

.field public pss:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 83
    new-instance v0, Lcom/alibaba/ailabs/comm/memory/MemoryGuardBean$PackagesBean$1;

    invoke-direct {v0}, Lcom/alibaba/ailabs/comm/memory/MemoryGuardBean$PackagesBean$1;-><init>()V

    sput-object v0, Lcom/alibaba/ailabs/comm/memory/MemoryGuardBean$PackagesBean;->CREATOR:Landroid/os/Parcelable$Creator;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/comm/memory/MemoryGuardBean$PackagesBean;->package_name:Ljava/lang/String;

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/alibaba/ailabs/comm/memory/MemoryGuardBean$PackagesBean;->max_mem_size_mb:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getMaxMemSizeMb()I
    .locals 1

    .line 40
    iget v0, p0, Lcom/alibaba/ailabs/comm/memory/MemoryGuardBean$PackagesBean;->max_mem_size_mb:I

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/alibaba/ailabs/comm/memory/MemoryGuardBean$PackagesBean;->package_name:Ljava/lang/String;

    return-object v0
.end method

.method public setMax_mem_size_mb(I)V
    .locals 0

    .line 55
    iput p1, p0, Lcom/alibaba/ailabs/comm/memory/MemoryGuardBean$PackagesBean;->max_mem_size_mb:I

    return-void
.end method

.method public setPackage_name(Ljava/lang/String;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/alibaba/ailabs/comm/memory/MemoryGuardBean$PackagesBean;->package_name:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 74
    iget-object p2, p0, Lcom/alibaba/ailabs/comm/memory/MemoryGuardBean$PackagesBean;->package_name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 75
    iget p2, p0, Lcom/alibaba/ailabs/comm/memory/MemoryGuardBean$PackagesBean;->max_mem_size_mb:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
