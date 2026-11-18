.class public Lcom/alibaba/ailabs/ipc/bean/BinderWrapper;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/alibaba/ailabs/ipc/bean/BinderWrapper;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:Landroid/os/IBinder;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/alibaba/ailabs/ipc/bean/BinderWrapper$a;

    invoke-direct {v0}, Lcom/alibaba/ailabs/ipc/bean/BinderWrapper$a;-><init>()V

    sput-object v0, Lcom/alibaba/ailabs/ipc/bean/BinderWrapper;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/ipc/bean/BinderWrapper;->b:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/ailabs/ipc/bean/BinderWrapper;->b:Landroid/os/IBinder;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Lcom/alibaba/ailabs/ipc/bean/BinderWrapper;->b:Landroid/os/IBinder;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return-void
.end method
