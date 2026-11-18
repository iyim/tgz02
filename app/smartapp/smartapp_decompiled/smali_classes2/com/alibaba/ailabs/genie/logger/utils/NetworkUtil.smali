.class public Lcom/alibaba/ailabs/genie/logger/utils/NetworkUtil;
.super Ljava/lang/Object;
.source "NetworkUtil.java"


# static fields
.field private static final mNetTypeMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/alibaba/ailabs/genie/logger/utils/NetworkUtil;->mNetTypeMap:Landroid/util/SparseArray;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getIP()Ljava/lang/String;
    .locals 4

    .line 30
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 31
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/NetworkInterface;

    .line 32
    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 33
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    .line 34
    invoke-virtual {v2}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v3

    if-nez v3, :cond_1

    .line 35
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :cond_2
    const-string v0, ""

    return-object v0
.end method

.method private static getNetWorkTypeByCode(I)Lcom/alibaba/ailabs/genie/logger/utils/NetworkType;
    .locals 2

    .line 162
    sget-object v0, Lcom/alibaba/ailabs/genie/logger/utils/NetworkUtil;->mNetTypeMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 163
    invoke-static {}, Lcom/alibaba/ailabs/genie/logger/utils/NetworkUtil;->setDefaultNetMapping()V

    .line 166
    :cond_0
    new-instance v0, Lcom/alibaba/ailabs/genie/logger/utils/NetworkType;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/logger/utils/NetworkType;-><init>()V

    .line 167
    invoke-virtual {v0, p0}, Lcom/alibaba/ailabs/genie/logger/utils/NetworkType;->setCode(I)V

    .line 168
    sget-object v1, Lcom/alibaba/ailabs/genie/logger/utils/NetworkUtil;->mNetTypeMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/alibaba/ailabs/genie/logger/utils/NetworkType;->setName(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getNetworkType()Lcom/alibaba/ailabs/genie/logger/utils/NetworkType;
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 99
    :try_start_0
    invoke-static {}, Lcom/alibaba/ailabs/genie/logger/utils/AppContextHelper;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v2

    .line 100
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    const/4 v4, 0x1

    if-nez v3, :cond_1

    .line 103
    invoke-virtual {v2, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v5

    .line 104
    invoke-virtual {v2, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    if-eqz v5, :cond_0

    .line 106
    invoke-virtual {v5}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v2, v5

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_1

    .line 108
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_1
    move-object v2, v3

    :goto_0
    if-eqz v2, :cond_4

    .line 113
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 114
    :cond_2
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-ne v3, v4, :cond_3

    const/4 v2, -0x2

    .line 115
    invoke-static {v2}, Lcom/alibaba/ailabs/genie/logger/utils/NetworkUtil;->getNetWorkTypeByCode(I)Lcom/alibaba/ailabs/genie/logger/utils/NetworkType;

    move-result-object v1

    goto :goto_1

    .line 117
    :cond_3
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v2

    invoke-static {v2}, Lcom/alibaba/ailabs/genie/logger/utils/NetworkUtil;->getNetWorkTypeByCode(I)Lcom/alibaba/ailabs/genie/logger/utils/NetworkType;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_4
    :goto_1
    if-nez v1, :cond_5

    .line 126
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/logger/utils/NetworkUtil;->getNetWorkTypeByCode(I)Lcom/alibaba/ailabs/genie/logger/utils/NetworkType;

    move-result-object v1

    :cond_5
    return-object v1
.end method

.method public static getNetworkType(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/logger/utils/NetworkType;
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "connectivity"

    .line 56
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 57
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    const/4 v3, 0x1

    if-nez v2, :cond_1

    .line 60
    invoke-virtual {p0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v4

    .line 61
    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz v4, :cond_0

    .line 63
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v5

    if-eqz v5, :cond_0

    move-object p0, v4

    goto :goto_0

    :cond_0
    if-eqz p0, :cond_1

    .line 65
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    move-object p0, v2

    :goto_0
    if-eqz p0, :cond_4

    .line 70
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 71
    :cond_2
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-ne v2, v3, :cond_3

    const/4 p0, -0x2

    .line 72
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/logger/utils/NetworkUtil;->getNetWorkTypeByCode(I)Lcom/alibaba/ailabs/genie/logger/utils/NetworkType;

    move-result-object p0

    :goto_1
    move-object v1, p0

    goto :goto_2

    .line 74
    :cond_3
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result p0

    invoke-static {p0}, Lcom/alibaba/ailabs/genie/logger/utils/NetworkUtil;->getNetWorkTypeByCode(I)Lcom/alibaba/ailabs/genie/logger/utils/NetworkType;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    :cond_4
    :goto_2
    if-nez v1, :cond_5

    .line 83
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/logger/utils/NetworkUtil;->getNetWorkTypeByCode(I)Lcom/alibaba/ailabs/genie/logger/utils/NetworkType;

    move-result-object v1

    :cond_5
    return-object v1
.end method

.method public static isMobileNetwork(Landroid/content/Context;)Z
    .locals 2

    .line 147
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/logger/utils/NetworkUtil;->getNetworkType(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/logger/utils/NetworkType;

    move-result-object p0

    .line 148
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/logger/utils/NetworkType;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "2g"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/logger/utils/NetworkType;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "3g"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/logger/utils/NetworkType;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "4g"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isNetworkAvailable()Z
    .locals 2

    .line 21
    invoke-static {}, Lcom/alibaba/ailabs/genie/logger/utils/AppContextHelper;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v0

    .line 22
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 23
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isWifiNetwork(Landroid/content/Context;)Z
    .locals 1

    .line 136
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/logger/utils/NetworkUtil;->getNetworkType(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/logger/utils/NetworkType;

    move-result-object p0

    .line 137
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/logger/utils/NetworkType;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "wifi"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static setDefaultNetMapping()V
    .locals 5

    .line 177
    sget-object v0, Lcom/alibaba/ailabs/genie/logger/utils/NetworkUtil;->mNetTypeMap:Landroid/util/SparseArray;

    const/4 v1, -0x2

    const-string v2, "wifi"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 178
    sget-object v0, Lcom/alibaba/ailabs/genie/logger/utils/NetworkUtil;->mNetTypeMap:Landroid/util/SparseArray;

    const/4 v1, 0x0

    const-string v2, "unknown"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 179
    sget-object v0, Lcom/alibaba/ailabs/genie/logger/utils/NetworkUtil;->mNetTypeMap:Landroid/util/SparseArray;

    const-string v1, "2g"

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 180
    sget-object v0, Lcom/alibaba/ailabs/genie/logger/utils/NetworkUtil;->mNetTypeMap:Landroid/util/SparseArray;

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 181
    sget-object v0, Lcom/alibaba/ailabs/genie/logger/utils/NetworkUtil;->mNetTypeMap:Landroid/util/SparseArray;

    const-string v2, "3g"

    const/4 v3, 0x3

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 182
    sget-object v0, Lcom/alibaba/ailabs/genie/logger/utils/NetworkUtil;->mNetTypeMap:Landroid/util/SparseArray;

    const/4 v3, 0x4

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 183
    sget-object v0, Lcom/alibaba/ailabs/genie/logger/utils/NetworkUtil;->mNetTypeMap:Landroid/util/SparseArray;

    const/4 v3, 0x5

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 184
    sget-object v0, Lcom/alibaba/ailabs/genie/logger/utils/NetworkUtil;->mNetTypeMap:Landroid/util/SparseArray;

    const/4 v3, 0x6

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 185
    sget-object v0, Lcom/alibaba/ailabs/genie/logger/utils/NetworkUtil;->mNetTypeMap:Landroid/util/SparseArray;

    const/4 v3, 0x7

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 186
    sget-object v0, Lcom/alibaba/ailabs/genie/logger/utils/NetworkUtil;->mNetTypeMap:Landroid/util/SparseArray;

    const/16 v3, 0x8

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 187
    sget-object v0, Lcom/alibaba/ailabs/genie/logger/utils/NetworkUtil;->mNetTypeMap:Landroid/util/SparseArray;

    const/16 v3, 0x9

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 188
    sget-object v0, Lcom/alibaba/ailabs/genie/logger/utils/NetworkUtil;->mNetTypeMap:Landroid/util/SparseArray;

    const/16 v3, 0xa

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 189
    sget-object v0, Lcom/alibaba/ailabs/genie/logger/utils/NetworkUtil;->mNetTypeMap:Landroid/util/SparseArray;

    const/16 v3, 0xb

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 190
    sget-object v0, Lcom/alibaba/ailabs/genie/logger/utils/NetworkUtil;->mNetTypeMap:Landroid/util/SparseArray;

    const/16 v3, 0xc

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 191
    sget-object v0, Lcom/alibaba/ailabs/genie/logger/utils/NetworkUtil;->mNetTypeMap:Landroid/util/SparseArray;

    const-string v3, "4g"

    const/16 v4, 0xd

    invoke-virtual {v0, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 192
    sget-object v0, Lcom/alibaba/ailabs/genie/logger/utils/NetworkUtil;->mNetTypeMap:Landroid/util/SparseArray;

    const/16 v4, 0xe

    invoke-virtual {v0, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 193
    sget-object v0, Lcom/alibaba/ailabs/genie/logger/utils/NetworkUtil;->mNetTypeMap:Landroid/util/SparseArray;

    const/16 v4, 0xf

    invoke-virtual {v0, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 194
    sget-object v0, Lcom/alibaba/ailabs/genie/logger/utils/NetworkUtil;->mNetTypeMap:Landroid/util/SparseArray;

    const/16 v4, 0x10

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 195
    sget-object v0, Lcom/alibaba/ailabs/genie/logger/utils/NetworkUtil;->mNetTypeMap:Landroid/util/SparseArray;

    const/16 v1, 0x11

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 196
    sget-object v0, Lcom/alibaba/ailabs/genie/logger/utils/NetworkUtil;->mNetTypeMap:Landroid/util/SparseArray;

    const/16 v1, 0x12

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method
