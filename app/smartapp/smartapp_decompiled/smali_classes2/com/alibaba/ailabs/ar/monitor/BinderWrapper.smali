.class public Lcom/alibaba/ailabs/ar/monitor/BinderWrapper;
.super Ljava/lang/Object;
.source "BinderWrapper.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/alibaba/ailabs/ar/monitor/BinderWrapper;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final binder:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 61
    new-instance v0, Lcom/alibaba/ailabs/ar/monitor/BinderWrapper$1;

    invoke-direct {v0}, Lcom/alibaba/ailabs/ar/monitor/BinderWrapper$1;-><init>()V

    sput-object v0, Lcom/alibaba/ailabs/ar/monitor/BinderWrapper;->CREATOR:Landroid/os/Parcelable$Creator;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/alibaba/ailabs/ar/monitor/BinderWrapper;->binder:Landroid/os/IBinder;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/ar/monitor/BinderWrapper;->binder:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBinder()Landroid/os/IBinder;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/alibaba/ailabs/ar/monitor/BinderWrapper;->binder:Landroid/os/IBinder;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 58
    iget-object p2, p0, Lcom/alibaba/ailabs/ar/monitor/BinderWrapper;->binder:Landroid/os/IBinder;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return-void
.end method
