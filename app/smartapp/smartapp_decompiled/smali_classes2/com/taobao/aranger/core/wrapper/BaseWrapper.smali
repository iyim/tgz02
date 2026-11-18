.class public Lcom/taobao/aranger/core/wrapper/BaseWrapper;
.super Ljava/lang/Object;
.source "BaseWrapper.java"


# instance fields
.field private mName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/taobao/aranger/core/wrapper/BaseWrapper;->mName:Ljava/lang/String;

    return-object v0
.end method

.method readFromParcel(Landroid/os/Parcel;)V
    .locals 0

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/taobao/aranger/core/wrapper/BaseWrapper;->mName:Ljava/lang/String;

    return-void
.end method

.method setName(Ljava/lang/String;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/taobao/aranger/core/wrapper/BaseWrapper;->mName:Ljava/lang/String;

    return-void
.end method

.method writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 23
    iget-object p2, p0, Lcom/taobao/aranger/core/wrapper/BaseWrapper;->mName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
