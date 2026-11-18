.class final Lcom/taobao/aranger/core/entity/Reply$1;
.super Ljava/lang/Object;
.source "Reply.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/aranger/core/entity/Reply;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/taobao/aranger/core/entity/Reply;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/taobao/aranger/core/entity/Reply;
    .locals 1

    .line 25
    invoke-static {}, Lcom/taobao/aranger/core/entity/Reply;->obtain()Lcom/taobao/aranger/core/entity/Reply;

    move-result-object v0

    .line 26
    invoke-static {v0, p1}, Lcom/taobao/aranger/core/entity/Reply;->access$000(Lcom/taobao/aranger/core/entity/Reply;Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lcom/taobao/aranger/core/entity/Reply$1;->createFromParcel(Landroid/os/Parcel;)Lcom/taobao/aranger/core/entity/Reply;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/taobao/aranger/core/entity/Reply;
    .locals 0

    .line 31
    new-array p1, p1, [Lcom/taobao/aranger/core/entity/Reply;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lcom/taobao/aranger/core/entity/Reply$1;->newArray(I)[Lcom/taobao/aranger/core/entity/Reply;

    move-result-object p1

    return-object p1
.end method
