.class public Lcom/taobao/aranger/core/entity/Reply;
.super Ljava/lang/Object;
.source "Reply.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/taobao/aranger/core/entity/Reply;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mErrorCode:I

.field private mErrorMessage:Ljava/lang/String;

.field private mFlowParameterWrappers:[Lcom/taobao/aranger/core/wrapper/ParameterWrapper;

.field private mInvokeTime:J

.field private mResult:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    new-instance v0, Lcom/taobao/aranger/core/entity/Reply$1;

    invoke-direct {v0}, Lcom/taobao/aranger/core/entity/Reply$1;-><init>()V

    sput-object v0, Lcom/taobao/aranger/core/entity/Reply;->CREATOR:Landroid/os/Parcelable$Creator;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$000(Lcom/taobao/aranger/core/entity/Reply;Landroid/os/Parcel;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/taobao/aranger/core/entity/Reply;->readFromParcel(Landroid/os/Parcel;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static obtain()Lcom/taobao/aranger/core/entity/Reply;
    .locals 1

    .line 19
    new-instance v0, Lcom/taobao/aranger/core/entity/Reply;

    invoke-direct {v0}, Lcom/taobao/aranger/core/entity/Reply;-><init>()V

    return-object v0
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/taobao/aranger/core/entity/Reply;->mErrorCode:I

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_0

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/aranger/core/entity/Reply;->mErrorMessage:Ljava/lang/String;

    .line 91
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_1

    .line 92
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/taobao/aranger/utils/SerializeUtils;->readFromParcel(Ljava/lang/ClassLoader;Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/taobao/aranger/core/wrapper/ParameterWrapper;

    nop

    nop

    iput-object v0, p0, Lcom/taobao/aranger/core/entity/Reply;->mFlowParameterWrappers:[Lcom/taobao/aranger/core/wrapper/ParameterWrapper;

    .line 94
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/taobao/aranger/core/entity/Reply;->mInvokeTime:J

    .line 95
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/taobao/aranger/utils/SerializeUtils;->readFromParcel(Ljava/lang/ClassLoader;Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/taobao/aranger/core/entity/Reply;->mResult:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getErrorCode()I
    .locals 1

    .line 103
    iget v0, p0, Lcom/taobao/aranger/core/entity/Reply;->mErrorCode:I

    return v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/taobao/aranger/core/entity/Reply;->mErrorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getFlowParameterWrappers()[Lcom/taobao/aranger/core/wrapper/ParameterWrapper;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/taobao/aranger/core/entity/Reply;->mFlowParameterWrappers:[Lcom/taobao/aranger/core/wrapper/ParameterWrapper;

    return-object v0
.end method

.method public getInvokeTime()J
    .locals 2

    .line 128
    iget-wide v0, p0, Lcom/taobao/aranger/core/entity/Reply;->mInvokeTime:J

    return-wide v0
.end method

.method public getResult()Ljava/lang/Object;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/taobao/aranger/core/entity/Reply;->mResult:Ljava/lang/Object;

    return-object v0
.end method

.method public isError()Z
    .locals 1

    .line 111
    iget v0, p0, Lcom/taobao/aranger/core/entity/Reply;->mErrorCode:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setErrorCode(I)Lcom/taobao/aranger/core/entity/Reply;
    .locals 0

    .line 137
    iput p1, p0, Lcom/taobao/aranger/core/entity/Reply;->mErrorCode:I

    return-object p0
.end method

.method public setErrorMessage(Ljava/lang/String;)Lcom/taobao/aranger/core/entity/Reply;
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/taobao/aranger/core/entity/Reply;->mErrorMessage:Ljava/lang/String;

    return-object p0
.end method

.method public setFlowParameterWrappers([Lcom/taobao/aranger/core/wrapper/ParameterWrapper;)Lcom/taobao/aranger/core/entity/Reply;
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/taobao/aranger/core/entity/Reply;->mFlowParameterWrappers:[Lcom/taobao/aranger/core/wrapper/ParameterWrapper;

    return-object p0
.end method

.method public setInvokeTime(J)Lcom/taobao/aranger/core/entity/Reply;
    .locals 0

    .line 132
    iput-wide p1, p0, Lcom/taobao/aranger/core/entity/Reply;->mInvokeTime:J

    return-object p0
.end method

.method public setResult(Ljava/lang/Object;)Lcom/taobao/aranger/core/entity/Reply;
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/taobao/aranger/core/entity/Reply;->mResult:Ljava/lang/Object;

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 69
    iget v0, p0, Lcom/taobao/aranger/core/entity/Reply;->mErrorCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 70
    iget-object v0, p0, Lcom/taobao/aranger/core/entity/Reply;->mErrorMessage:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 72
    iget-object v0, p0, Lcom/taobao/aranger/core/entity/Reply;->mErrorMessage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 74
    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 76
    :goto_0
    iget-object v0, p0, Lcom/taobao/aranger/core/entity/Reply;->mFlowParameterWrappers:[Lcom/taobao/aranger/core/wrapper/ParameterWrapper;

    if-eqz v0, :cond_1

    .line 77
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 78
    iget-object v0, p0, Lcom/taobao/aranger/core/entity/Reply;->mFlowParameterWrappers:[Lcom/taobao/aranger/core/wrapper/ParameterWrapper;

    invoke-static {p1, v0, p2, v2}, Lcom/taobao/aranger/utils/SerializeUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/Object;IZ)J

    goto :goto_1

    .line 80
    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 82
    :goto_1
    iget-wide v0, p0, Lcom/taobao/aranger/core/entity/Reply;->mInvokeTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 83
    iget-object v0, p0, Lcom/taobao/aranger/core/entity/Reply;->mResult:Ljava/lang/Object;

    invoke-static {p1, v0, p2, v2}, Lcom/taobao/aranger/utils/SerializeUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/Object;IZ)J

    return-void
.end method
