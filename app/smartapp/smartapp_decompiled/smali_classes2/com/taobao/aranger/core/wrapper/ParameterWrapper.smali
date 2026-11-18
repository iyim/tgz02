.class public Lcom/taobao/aranger/core/wrapper/ParameterWrapper;
.super Lcom/taobao/aranger/core/wrapper/BaseWrapper;
.source "ParameterWrapper.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/taobao/aranger/core/wrapper/ParameterWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "ParameterWrapper"


# instance fields
.field private mClientServiceBinder:Landroid/os/IBinder;

.field private mData:Ljava/lang/Object;

.field private mFlowFlag:I

.field private mTimeStamp:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    new-instance v0, Lcom/taobao/aranger/core/wrapper/ParameterWrapper$1;

    invoke-direct {v0}, Lcom/taobao/aranger/core/wrapper/ParameterWrapper$1;-><init>()V

    sput-object v0, Lcom/taobao/aranger/core/wrapper/ParameterWrapper;->CREATOR:Landroid/os/Parcelable$Creator;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 1

    .line 70
    invoke-direct {p0}, Lcom/taobao/aranger/core/wrapper/BaseWrapper;-><init>()V

    const/4 v0, 0x0

    .line 58
    iput v0, p0, Lcom/taobao/aranger/core/wrapper/ParameterWrapper;->mFlowFlag:I

    return-void
.end method

.method public static obtain()Lcom/taobao/aranger/core/wrapper/ParameterWrapper;
    .locals 1

    .line 32
    new-instance v0, Lcom/taobao/aranger/core/wrapper/ParameterWrapper;

    invoke-direct {v0}, Lcom/taobao/aranger/core/wrapper/ParameterWrapper;-><init>()V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getClassType()Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/aranger/exception/IPCException;
        }
    .end annotation

    .line 114
    iget-object v0, p0, Lcom/taobao/aranger/core/wrapper/ParameterWrapper;->mData:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0

    .line 117
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/aranger/core/wrapper/ParameterWrapper;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 118
    invoke-static {}, Lcom/taobao/aranger/utils/TypeCenter;->getInstance()Lcom/taobao/aranger/utils/TypeCenter;

    move-result-object v0

    invoke-virtual {p0}, Lcom/taobao/aranger/core/wrapper/ParameterWrapper;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/taobao/aranger/utils/TypeCenter;->getClassType(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getClientServiceBinder()Landroid/os/IBinder;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/taobao/aranger/core/wrapper/ParameterWrapper;->mClientServiceBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public getData()Ljava/lang/Object;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/taobao/aranger/core/wrapper/ParameterWrapper;->mData:Ljava/lang/Object;

    return-object v0
.end method

.method public getFlowFlag()I
    .locals 1

    .line 124
    iget v0, p0, Lcom/taobao/aranger/core/wrapper/ParameterWrapper;->mFlowFlag:I

    return v0
.end method

.method public getTimeStamp()Ljava/lang/String;
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/taobao/aranger/core/wrapper/ParameterWrapper;->mTimeStamp:Ljava/lang/String;

    return-object v0
.end method

.method readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .line 98
    invoke-super {p0, p1}, Lcom/taobao/aranger/core/wrapper/BaseWrapper;->readFromParcel(Landroid/os/Parcel;)V

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/taobao/aranger/core/wrapper/ParameterWrapper;->mFlowFlag:I

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_0

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/aranger/core/wrapper/ParameterWrapper;->mTimeStamp:Ljava/lang/String;

    .line 103
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_1

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/aranger/core/wrapper/ParameterWrapper;->mClientServiceBinder:Landroid/os/IBinder;

    .line 106
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/taobao/aranger/utils/SerializeUtils;->readFromParcel(Ljava/lang/ClassLoader;Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/taobao/aranger/core/wrapper/ParameterWrapper;->mData:Ljava/lang/Object;

    return-void
.end method

.method public setClientServiceBinder(Landroid/os/IBinder;)Lcom/taobao/aranger/core/wrapper/ParameterWrapper;
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/taobao/aranger/core/wrapper/ParameterWrapper;->mClientServiceBinder:Landroid/os/IBinder;

    return-object p0
.end method

.method public setData(Ljava/lang/Object;)Lcom/taobao/aranger/core/wrapper/ParameterWrapper;
    .locals 3

    .line 137
    iput-object p1, p0, Lcom/taobao/aranger/core/wrapper/ParameterWrapper;->mData:Ljava/lang/Object;

    .line 138
    iget-object p1, p0, Lcom/taobao/aranger/core/wrapper/ParameterWrapper;->mData:Ljava/lang/Object;

    if-nez p1, :cond_0

    return-object p0

    .line 141
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    .line 143
    iget v0, p0, Lcom/taobao/aranger/core/wrapper/ParameterWrapper;->mFlowFlag:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 144
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 145
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 146
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/taobao/aranger/core/wrapper/ParameterWrapper;->mData:Ljava/lang/Object;

    invoke-static {p1, v1}, Lcom/taobao/aranger/utils/TypeUtils;->getObjectArraySize(Ljava/lang/String;Ljava/lang/Object;)I

    move-result p1

    .line 145
    invoke-static {v0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/taobao/aranger/core/wrapper/ParameterWrapper;->mData:Ljava/lang/Object;

    goto :goto_0

    .line 147
    :cond_1
    const-class v0, Ljava/util/List;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 148
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/taobao/aranger/core/wrapper/ParameterWrapper;->mData:Ljava/lang/Object;

    goto :goto_0

    .line 149
    :cond_2
    const-class v0, Ljava/util/Map;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 150
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/taobao/aranger/core/wrapper/ParameterWrapper;->mData:Ljava/lang/Object;

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    .line 154
    :try_start_0
    new-array v1, v0, [Ljava/lang/Class;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    new-array v1, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/taobao/aranger/core/wrapper/ParameterWrapper;->mData:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 156
    sget-object v1, Lcom/taobao/aranger/core/wrapper/ParameterWrapper;->TAG:Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "[setData][newInstance]"

    invoke-static {v1, v2, p1, v0}, Lcom/taobao/aranger/logs/IPCLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_4
    :goto_0
    return-object p0
.end method

.method public setFlowFlag(I)Lcom/taobao/aranger/core/wrapper/ParameterWrapper;
    .locals 0

    .line 164
    iput p1, p0, Lcom/taobao/aranger/core/wrapper/ParameterWrapper;->mFlowFlag:I

    return-object p0
.end method

.method public setParameterName(Ljava/lang/String;)Lcom/taobao/aranger/core/wrapper/ParameterWrapper;
    .locals 0

    .line 174
    invoke-virtual {p0, p1}, Lcom/taobao/aranger/core/wrapper/ParameterWrapper;->setName(Ljava/lang/String;)V

    return-object p0
.end method

.method public setTimeStamp(Ljava/lang/String;)Lcom/taobao/aranger/core/wrapper/ParameterWrapper;
    .locals 0

    .line 179
    iput-object p1, p0, Lcom/taobao/aranger/core/wrapper/ParameterWrapper;->mTimeStamp:Ljava/lang/String;

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 80
    invoke-super {p0, p1, p2}, Lcom/taobao/aranger/core/wrapper/BaseWrapper;->writeToParcel(Landroid/os/Parcel;I)V

    .line 81
    iget v0, p0, Lcom/taobao/aranger/core/wrapper/ParameterWrapper;->mFlowFlag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 82
    iget-object v0, p0, Lcom/taobao/aranger/core/wrapper/ParameterWrapper;->mTimeStamp:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 84
    iget-object v0, p0, Lcom/taobao/aranger/core/wrapper/ParameterWrapper;->mTimeStamp:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 86
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 88
    :goto_0
    iget-object v0, p0, Lcom/taobao/aranger/core/wrapper/ParameterWrapper;->mClientServiceBinder:Landroid/os/IBinder;

    if-eqz v0, :cond_1

    .line 89
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    iget-object v0, p0, Lcom/taobao/aranger/core/wrapper/ParameterWrapper;->mClientServiceBinder:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto :goto_1

    .line 92
    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 94
    :goto_1
    iget-object v0, p0, Lcom/taobao/aranger/core/wrapper/ParameterWrapper;->mData:Ljava/lang/Object;

    invoke-static {p1, v0, p2, v2}, Lcom/taobao/aranger/utils/SerializeUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/Object;IZ)J

    return-void
.end method
