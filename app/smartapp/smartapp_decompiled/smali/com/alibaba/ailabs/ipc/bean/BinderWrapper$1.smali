.class final Lcom/alibaba/ailabs/ipc/bean/BinderWrapper$1;
.super Ljava/lang/Object;
.source "BinderWrapper.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/ipc/bean/BinderWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/alibaba/ailabs/ipc/bean/BinderWrapper;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/alibaba/ailabs/ipc/bean/BinderWrapper;
    .locals 1

    .line 45
    new-instance v0, Lcom/alibaba/ailabs/ipc/bean/BinderWrapper;

    invoke-direct {v0, p1}, Lcom/alibaba/ailabs/ipc/bean/BinderWrapper;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 42
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/ipc/bean/BinderWrapper$1;->createFromParcel(Landroid/os/Parcel;)Lcom/alibaba/ailabs/ipc/bean/BinderWrapper;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/alibaba/ailabs/ipc/bean/BinderWrapper;
    .locals 0

    .line 50
    new-array p1, p1, [Lcom/alibaba/ailabs/ipc/bean/BinderWrapper;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 42
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/ipc/bean/BinderWrapper$1;->newArray(I)[Lcom/alibaba/ailabs/ipc/bean/BinderWrapper;

    move-result-object p1

    return-object p1
.end method
