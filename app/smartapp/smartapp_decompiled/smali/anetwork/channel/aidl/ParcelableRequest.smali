.class public Lanetwork/channel/aidl/ParcelableRequest;
.super Ljava/lang/Object;
.source "ParcelableRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lanetwork/channel/aidl/ParcelableRequest;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "anet.ParcelableRequest"


# instance fields
.field public allowRedirect:Z

.field public bizId:Ljava/lang/String;

.field public bodyEntry:Lanet/channel/request/BodyEntry;

.field public charset:Ljava/lang/String;

.field public connectTimeout:I

.field public extProperties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public method:Ljava/lang/String;

.field public params:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public readTimeout:I

.field public request:Lanetwork/channel/Request;

.field public retryTime:I

.field public seqNo:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 168
    new-instance v0, Lanetwork/channel/aidl/ParcelableRequest$1;

    invoke-direct {v0}, Lanetwork/channel/aidl/ParcelableRequest$1;-><init>()V

    sput-object v0, Lanetwork/channel/aidl/ParcelableRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 1

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->headers:Ljava/util/Map;

    .line 28
    iput-object v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->params:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lanetwork/channel/Request;)V
    .locals 4

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->headers:Ljava/util/Map;

    .line 28
    iput-object v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->params:Ljava/util/Map;

    .line 36
    iput-object p1, p0, Lanetwork/channel/aidl/ParcelableRequest;->request:Lanetwork/channel/Request;

    if-eqz p1, :cond_2

    .line 38
    invoke-interface {p1}, Lanetwork/channel/Request;->getUrlString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->url:Ljava/lang/String;

    .line 39
    invoke-interface {p1}, Lanetwork/channel/Request;->getRetryTime()I

    move-result v0

    iput v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->retryTime:I

    .line 40
    invoke-interface {p1}, Lanetwork/channel/Request;->getCharset()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->charset:Ljava/lang/String;

    .line 41
    invoke-interface {p1}, Lanetwork/channel/Request;->getFollowRedirects()Z

    move-result v0

    iput-boolean v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->allowRedirect:Z

    .line 42
    invoke-interface {p1}, Lanetwork/channel/Request;->getMethod()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->method:Ljava/lang/String;

    .line 44
    invoke-interface {p1}, Lanetwork/channel/Request;->getHeaders()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 46
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lanetwork/channel/aidl/ParcelableRequest;->headers:Ljava/util/Map;

    .line 47
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lanetwork/channel/Header;

    .line 48
    iget-object v2, p0, Lanetwork/channel/aidl/ParcelableRequest;->headers:Ljava/util/Map;

    invoke-interface {v1}, Lanetwork/channel/Header;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1}, Lanetwork/channel/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 52
    :cond_0
    invoke-interface {p1}, Lanetwork/channel/Request;->getParams()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 54
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lanetwork/channel/aidl/ParcelableRequest;->params:Ljava/util/Map;

    .line 55
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lanetwork/channel/Param;

    .line 56
    iget-object v2, p0, Lanetwork/channel/aidl/ParcelableRequest;->params:Ljava/util/Map;

    invoke-interface {v1}, Lanetwork/channel/Param;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1}, Lanetwork/channel/Param;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 60
    :cond_1
    invoke-interface {p1}, Lanetwork/channel/Request;->getBodyEntry()Lanet/channel/request/BodyEntry;

    move-result-object v0

    iput-object v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->bodyEntry:Lanet/channel/request/BodyEntry;

    .line 61
    invoke-interface {p1}, Lanetwork/channel/Request;->getConnectTimeout()I

    move-result v0

    iput v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->connectTimeout:I

    .line 62
    invoke-interface {p1}, Lanetwork/channel/Request;->getReadTimeout()I

    move-result v0

    iput v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->readTimeout:I

    .line 63
    invoke-interface {p1}, Lanetwork/channel/Request;->getBizId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->bizId:Ljava/lang/String;

    .line 64
    invoke-interface {p1}, Lanetwork/channel/Request;->getSeqNo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->seqNo:Ljava/lang/String;

    .line 65
    invoke-interface {p1}, Lanetwork/channel/Request;->getExtProperties()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lanetwork/channel/aidl/ParcelableRequest;->extProperties:Ljava/util/Map;

    :cond_2
    return-void
.end method

.method public static readFromParcel(Landroid/os/Parcel;)Lanetwork/channel/aidl/ParcelableRequest;
    .locals 5

    .line 126
    new-instance v0, Lanetwork/channel/aidl/ParcelableRequest;

    invoke-direct {v0}, Lanetwork/channel/aidl/ParcelableRequest;-><init>()V

    const/4 v1, 0x0

    .line 129
    :try_start_0
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v0, Lanetwork/channel/aidl/ParcelableRequest;->retryTime:I

    .line 132
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lanetwork/channel/aidl/ParcelableRequest;->url:Ljava/lang/String;

    .line 134
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lanetwork/channel/aidl/ParcelableRequest;->charset:Ljava/lang/String;

    .line 136
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iput-boolean v3, v0, Lanetwork/channel/aidl/ParcelableRequest;->allowRedirect:Z

    .line 138
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lanetwork/channel/aidl/ParcelableRequest;->method:Ljava/lang/String;

    .line 140
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    .line 141
    const-class v2, Lanetwork/channel/aidl/ParcelableRequest;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v2

    iput-object v2, v0, Lanetwork/channel/aidl/ParcelableRequest;->headers:Ljava/util/Map;

    .line 144
    :cond_1
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    .line 145
    const-class v2, Lanetwork/channel/aidl/ParcelableRequest;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v2

    iput-object v2, v0, Lanetwork/channel/aidl/ParcelableRequest;->params:Ljava/util/Map;

    .line 148
    :cond_2
    const-class v2, Lanetwork/channel/aidl/ParcelableRequest;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lanet/channel/request/BodyEntry;

    iput-object v2, v0, Lanetwork/channel/aidl/ParcelableRequest;->bodyEntry:Lanet/channel/request/BodyEntry;

    .line 150
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v0, Lanetwork/channel/aidl/ParcelableRequest;->connectTimeout:I

    .line 152
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v0, Lanetwork/channel/aidl/ParcelableRequest;->readTimeout:I

    .line 154
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lanetwork/channel/aidl/ParcelableRequest;->bizId:Ljava/lang/String;

    .line 156
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lanetwork/channel/aidl/ParcelableRequest;->seqNo:Ljava/lang/String;

    .line 158
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3

    .line 159
    const-class v2, Lanetwork/channel/aidl/ParcelableRequest;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object p0

    iput-object p0, v0, Lanetwork/channel/aidl/ParcelableRequest;->extProperties:Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const/4 v2, 0x0

    .line 162
    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "anet.ParcelableRequest"

    const-string v4, "[readFromParcel]"

    invoke-static {v3, v4, v2, p0, v1}, Lanet/channel/util/ALog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_3
    :goto_1
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getExtProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 181
    iget-object v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->extProperties:Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 184
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 79
    iget-object p2, p0, Lanetwork/channel/aidl/ParcelableRequest;->request:Lanetwork/channel/Request;

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 84
    :try_start_0
    invoke-interface {p2}, Lanetwork/channel/Request;->getRetryTime()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 86
    iget-object p2, p0, Lanetwork/channel/aidl/ParcelableRequest;->url:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 88
    iget-object p2, p0, Lanetwork/channel/aidl/ParcelableRequest;->request:Lanetwork/channel/Request;

    invoke-interface {p2}, Lanetwork/channel/Request;->getCharset()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 90
    iget-object p2, p0, Lanetwork/channel/aidl/ParcelableRequest;->request:Lanetwork/channel/Request;

    invoke-interface {p2}, Lanetwork/channel/Request;->getFollowRedirects()Z

    move-result p2

    const/4 v1, 0x1

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 92
    iget-object p2, p0, Lanetwork/channel/aidl/ParcelableRequest;->request:Lanetwork/channel/Request;

    invoke-interface {p2}, Lanetwork/channel/Request;->getMethod()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 94
    iget-object p2, p0, Lanetwork/channel/aidl/ParcelableRequest;->headers:Ljava/util/Map;

    if-nez p2, :cond_2

    const/4 p2, 0x0

    goto :goto_1

    :cond_2
    const/4 p2, 0x1

    :goto_1
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 95
    iget-object p2, p0, Lanetwork/channel/aidl/ParcelableRequest;->headers:Ljava/util/Map;

    if-eqz p2, :cond_3

    .line 96
    iget-object p2, p0, Lanetwork/channel/aidl/ParcelableRequest;->headers:Ljava/util/Map;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 99
    :cond_3
    iget-object p2, p0, Lanetwork/channel/aidl/ParcelableRequest;->params:Ljava/util/Map;

    if-nez p2, :cond_4

    const/4 p2, 0x0

    goto :goto_2

    :cond_4
    const/4 p2, 0x1

    :goto_2
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 100
    iget-object p2, p0, Lanetwork/channel/aidl/ParcelableRequest;->params:Ljava/util/Map;

    if-eqz p2, :cond_5

    .line 101
    iget-object p2, p0, Lanetwork/channel/aidl/ParcelableRequest;->params:Ljava/util/Map;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 104
    :cond_5
    iget-object p2, p0, Lanetwork/channel/aidl/ParcelableRequest;->bodyEntry:Lanet/channel/request/BodyEntry;

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 106
    iget-object p2, p0, Lanetwork/channel/aidl/ParcelableRequest;->request:Lanetwork/channel/Request;

    invoke-interface {p2}, Lanetwork/channel/Request;->getConnectTimeout()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 108
    iget-object p2, p0, Lanetwork/channel/aidl/ParcelableRequest;->request:Lanetwork/channel/Request;

    invoke-interface {p2}, Lanetwork/channel/Request;->getReadTimeout()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 110
    iget-object p2, p0, Lanetwork/channel/aidl/ParcelableRequest;->request:Lanetwork/channel/Request;

    invoke-interface {p2}, Lanetwork/channel/Request;->getBizId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 112
    iget-object p2, p0, Lanetwork/channel/aidl/ParcelableRequest;->request:Lanetwork/channel/Request;

    invoke-interface {p2}, Lanetwork/channel/Request;->getSeqNo()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 114
    iget-object p2, p0, Lanetwork/channel/aidl/ParcelableRequest;->request:Lanetwork/channel/Request;

    invoke-interface {p2}, Lanetwork/channel/Request;->getExtProperties()Ljava/util/Map;

    move-result-object p2

    if-nez p2, :cond_6

    const/4 v1, 0x0

    .line 115
    :cond_6
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz p2, :cond_7

    .line 117
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    const/4 p2, 0x0

    .line 121
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "anet.ParcelableRequest"

    const-string v2, "[writeToParcel]"

    invoke-static {v1, v2, p2, p1, v0}, Lanet/channel/util/ALog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_7
    :goto_3
    return-void
.end method
