.class public Lcom/alibaba/ailabs/genie/assistant/bluetooth/BTManagerApi;
.super Ljava/lang/Object;
.source "BTManagerApi.java"


# static fields
.field private static final ACTION_BT_PAIR_CHANGED:Ljava/lang/String; = "ACTION_BT_PAIR_CHANGED"

.field private static final DISCOVERABLE_TIMEOUT:I = 0x96

.field private static final PARAM_DISCOVERABLE:Ljava/lang/String; = "discoverable"

.field private static final TAG:Ljava/lang/String; = "IBTManagerSetting"

.field private static mA2dpSink:Landroid/bluetooth/BluetoothA2dpSink;

.field private static mA2dpSource:Landroid/bluetooth/BluetoothA2dp;


# instance fields
.field protected mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "IBTManagerSetting"

    const-string v1, "BTManagerApi created."

    .line 32
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/assistant/Utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/assistant/bluetooth/BTManagerApi;->setContext(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000()Landroid/bluetooth/BluetoothA2dpSink;
    .locals 1

    .line 19
    sget-object v0, Lcom/alibaba/ailabs/genie/assistant/bluetooth/BTManagerApi;->mA2dpSink:Landroid/bluetooth/BluetoothA2dpSink;

    return-object v0
.end method

.method static synthetic access$002(Landroid/bluetooth/BluetoothA2dpSink;)Landroid/bluetooth/BluetoothA2dpSink;
    .locals 0

    .line 19
    sput-object p0, Lcom/alibaba/ailabs/genie/assistant/bluetooth/BTManagerApi;->mA2dpSink:Landroid/bluetooth/BluetoothA2dpSink;

    return-object p0
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/genie/assistant/bluetooth/BTManagerApi;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/assistant/bluetooth/BTManagerApi;->disConnectA2dpSink(Landroid/bluetooth/BluetoothDevice;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$200()Landroid/bluetooth/BluetoothA2dp;
    .locals 1

    .line 19
    sget-object v0, Lcom/alibaba/ailabs/genie/assistant/bluetooth/BTManagerApi;->mA2dpSource:Landroid/bluetooth/BluetoothA2dp;

    return-object v0
.end method

.method static synthetic access$202(Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;
    .locals 0

    .line 19
    sput-object p0, Lcom/alibaba/ailabs/genie/assistant/bluetooth/BTManagerApi;->mA2dpSource:Landroid/bluetooth/BluetoothA2dp;

    return-object p0
.end method

.method static synthetic access$300(Lcom/alibaba/ailabs/genie/assistant/bluetooth/BTManagerApi;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/assistant/bluetooth/BTManagerApi;->disConnectA2dpSource(Landroid/bluetooth/BluetoothDevice;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private closeA2dpSink()V
    .locals 4

    const-string v0, "IBTManagerSetting"

    const-string v1, "closeA2dpSink==>"

    .line 105
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/assistant/Utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 107
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v1, "closeA2dpSink==>already disable bt"

    .line 108
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/assistant/Utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 111
    :cond_0
    new-instance v0, Lcom/alibaba/ailabs/genie/assistant/bluetooth/BTManagerApi$1;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/assistant/bluetooth/BTManagerApi$1;-><init>(Lcom/alibaba/ailabs/genie/assistant/bluetooth/BTManagerApi;)V

    .line 148
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/assistant/bluetooth/BTManagerApi;->mContext:Landroid/content/Context;

    const/16 v3, 0xb

    invoke-virtual {v1, v2, v0, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    return-void
.end method

.method private closeA2dpSource()V
    .locals 4

    const-string v0, "IBTManagerSetting"

    const-string v1, "closeA2dpSource==>"

    .line 152
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/assistant/Utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 154
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v1, "closeA2dpSource==>already disable bt"

    .line 155
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/assistant/Utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 158
    :cond_0
    new-instance v0, Lcom/alibaba/ailabs/genie/assistant/bluetooth/BTManagerApi$2;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/assistant/bluetooth/BTManagerApi$2;-><init>(Lcom/alibaba/ailabs/genie/assistant/bluetooth/BTManagerApi;)V

    .line 195
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/assistant/bluetooth/BTManagerApi;->mContext:Landroid/content/Context;

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v0, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    return-void
.end method

.method private closeDiscoverableTimeout()V
    .locals 7

    .line 67
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 69
    :try_start_0
    const-class v1, Landroid/bluetooth/BluetoothAdapter;

    const-string v2, "setScanMode"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 70
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 72
    new-array v2, v3, [Ljava/lang/Object;

    const/16 v3, 0x14

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 74
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private disConnectA2dpSink(Landroid/bluetooth/BluetoothDevice;)V
    .locals 6

    :try_start_0
    const-string v0, "IBTManagerSetting"

    const-string v1, "closeA2dpSink==>disConnectA2dpSink"

    .line 82
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/assistant/Utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-class v0, Landroid/bluetooth/BluetoothA2dpSink;

    const-string v1, "disconnect"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/bluetooth/BluetoothDevice;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 85
    sget-object v1, Lcom/alibaba/ailabs/genie/assistant/bluetooth/BTManagerApi;->mA2dpSink:Landroid/bluetooth/BluetoothA2dpSink;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 87
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private disConnectA2dpSource(Landroid/bluetooth/BluetoothDevice;)V
    .locals 6

    :try_start_0
    const-string v0, "IBTManagerSetting"

    const-string v1, "closeA2dpSource==>disConnectA2dpSource"

    .line 95
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/assistant/Utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const-class v0, Landroid/bluetooth/BluetoothA2dp;

    const-string v1, "disconnect"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/bluetooth/BluetoothDevice;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 98
    sget-object v1, Lcom/alibaba/ailabs/genie/assistant/bluetooth/BTManagerApi;->mA2dpSource:Landroid/bluetooth/BluetoothA2dp;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 100
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private setDiscoverableTimeout(I)V
    .locals 9

    const-string v0, "IBTManagerSetting"

    .line 42
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 44
    :try_start_0
    const-class v2, Landroid/bluetooth/BluetoothAdapter;

    const-string v3, "setScanMode"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x1

    aput-object v6, v5, v8

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 45
    invoke-virtual {v2, v8}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 47
    new-array v3, v4, [Ljava/lang/Object;

    const/16 v4, 0x17

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v8

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object p1

    .line 49
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "address:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alibaba/ailabs/genie/assistant/Utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v2

    .line 51
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "name:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alibaba/ailabs/genie/assistant/Utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ":"

    .line 52
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const-string v0, "MagicBox_M18S"

    .line 53
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "vang"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 54
    :cond_0
    array-length v0, p1

    const/4 v3, 0x5

    if-le v0, v3, :cond_1

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    aget-object v2, p1, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p1, p1, v3

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothAdapter;->setName(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 59
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public closeDiscoverable()V
    .locals 1

    .line 226
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/bluetooth/BTManagerApi;->isDiscoverable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/assistant/bluetooth/BTManagerApi;->closeDiscoverableTimeout()V

    :cond_0
    return-void
.end method

.method public isDiscoverable()Z
    .locals 2

    .line 217
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 218
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getScanMode()I

    move-result v0

    const/16 v1, 0x17

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 2

    const-string v0, "IBTManagerSetting"

    const-string v1, "call setContext"

    .line 233
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/assistant/Utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/bluetooth/BTManagerApi;->mContext:Landroid/content/Context;

    return-void
.end method

.method public turnOff()V
    .locals 0

    .line 206
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/assistant/bluetooth/BTManagerApi;->closeA2dpSink()V

    .line 207
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/assistant/bluetooth/BTManagerApi;->closeDiscoverableTimeout()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public turnOffEx()V
    .locals 0

    .line 211
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/assistant/bluetooth/BTManagerApi;->closeA2dpSource()V

    .line 212
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/assistant/bluetooth/BTManagerApi;->closeA2dpSink()V

    .line 213
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/assistant/bluetooth/BTManagerApi;->closeDiscoverableTimeout()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public turnOn()V
    .locals 1

    .line 199
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/bluetooth/BTManagerApi;->isDiscoverable()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x96

    .line 200
    invoke-direct {p0, v0}, Lcom/alibaba/ailabs/genie/assistant/bluetooth/BTManagerApi;->setDiscoverableTimeout(I)V

    :cond_0
    return-void
.end method
