.class public Landroid/taobao/windvane/jsbridge/api/WVBluetooth;
.super Landroid/taobao/windvane/jsbridge/WVApiPlugin;
.source "WVBluetooth.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WVBluetooth"


# instance fields
.field private mBTAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

.field private mConnectCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

.field private mCurrentConnectionState:I

.field private final mGattCallback:Landroid/bluetooth/BluetoothGattCallback;

.field private mGetServiceCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

.field private mKnownDevices:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLeScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

.field private mReadValueCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

.field private mWriteValueCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 36
    invoke-direct {p0}, Landroid/taobao/windvane/jsbridge/WVApiPlugin;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->mBTAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 39
    iput-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    .line 40
    iput-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->mConnectCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .line 41
    iput-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->mReadValueCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .line 42
    iput-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->mWriteValueCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .line 43
    iput-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->mLeScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    .line 44
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->mKnownDevices:Ljava/util/Set;

    .line 46
    iput-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->mGetServiceCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    const/4 v0, -0x1

    .line 47
    iput v0, p0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->mCurrentConnectionState:I

    .line 485
    new-instance v0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth$4;

    invoke-direct {v0, p0}, Landroid/taobao/windvane/jsbridge/api/WVBluetooth$4;-><init>(Landroid/taobao/windvane/jsbridge/api/WVBluetooth;)V

    iput-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->mGattCallback:Landroid/bluetooth/BluetoothGattCallback;

    return-void
.end method

.method static synthetic access$000(Landroid/taobao/windvane/jsbridge/api/WVBluetooth;)Landroid/bluetooth/BluetoothAdapter;
    .locals 0

    .line 36
    iget-object p0, p0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->mBTAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object p0
.end method

.method static synthetic access$100(Landroid/taobao/windvane/jsbridge/api/WVBluetooth;)Ljava/util/Set;
    .locals 0

    .line 36
    iget-object p0, p0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->mKnownDevices:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic access$1000(Landroid/taobao/windvane/jsbridge/api/WVBluetooth;)Landroid/taobao/windvane/webview/IWVWebView;
    .locals 0

    .line 36
    iget-object p0, p0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->mWebView:Landroid/taobao/windvane/webview/IWVWebView;

    return-object p0
.end method

.method static synthetic access$200(Landroid/taobao/windvane/jsbridge/api/WVBluetooth;)Landroid/taobao/windvane/webview/IWVWebView;
    .locals 0

    .line 36
    iget-object p0, p0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->mWebView:Landroid/taobao/windvane/webview/IWVWebView;

    return-object p0
.end method

.method static synthetic access$302(Landroid/taobao/windvane/jsbridge/api/WVBluetooth;I)I
    .locals 0

    .line 36
    iput p1, p0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->mCurrentConnectionState:I

    return p1
.end method

.method static synthetic access$400(Landroid/taobao/windvane/jsbridge/api/WVBluetooth;)Landroid/taobao/windvane/jsbridge/WVCallBackContext;
    .locals 0

    .line 36
    iget-object p0, p0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->mConnectCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    return-object p0
.end method

.method static synthetic access$402(Landroid/taobao/windvane/jsbridge/api/WVBluetooth;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)Landroid/taobao/windvane/jsbridge/WVCallBackContext;
    .locals 0

    .line 36
    iput-object p1, p0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->mConnectCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    return-object p1
.end method

.method static synthetic access$500(Landroid/taobao/windvane/jsbridge/api/WVBluetooth;)Landroid/bluetooth/BluetoothGatt;
    .locals 0

    .line 36
    iget-object p0, p0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    return-object p0
.end method

.method static synthetic access$600(Landroid/taobao/windvane/jsbridge/api/WVBluetooth;)Landroid/taobao/windvane/webview/IWVWebView;
    .locals 0

    .line 36
    iget-object p0, p0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->mWebView:Landroid/taobao/windvane/webview/IWVWebView;

    return-object p0
.end method

.method static synthetic access$700(Landroid/taobao/windvane/jsbridge/api/WVBluetooth;)Landroid/taobao/windvane/jsbridge/WVCallBackContext;
    .locals 0

    .line 36
    iget-object p0, p0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->mGetServiceCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    return-object p0
.end method

.method static synthetic access$702(Landroid/taobao/windvane/jsbridge/api/WVBluetooth;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)Landroid/taobao/windvane/jsbridge/WVCallBackContext;
    .locals 0

    .line 36
    iput-object p1, p0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->mGetServiceCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    return-object p1
.end method

.method static synthetic access$800(Landroid/taobao/windvane/jsbridge/api/WVBluetooth;)Landroid/taobao/windvane/jsbridge/WVCallBackContext;
    .locals 0

    .line 36
    iget-object p0, p0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->mReadValueCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    return-object p0
.end method

.method static synthetic access$802(Landroid/taobao/windvane/jsbridge/api/WVBluetooth;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)Landroid/taobao/windvane/jsbridge/WVCallBackContext;
    .locals 0

    .line 36
    iput-object p1, p0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->mReadValueCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    return-object p1
.end method

.method static synthetic access$900(Landroid/taobao/windvane/jsbridge/api/WVBluetooth;)Landroid/taobao/windvane/jsbridge/WVCallBackContext;
    .locals 0

    .line 36
    iget-object p0, p0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->mWriteValueCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    return-object p0
.end method

.method static synthetic access$902(Landroid/taobao/windvane/jsbridge/api/WVBluetooth;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)Landroid/taobao/windvane/jsbridge/WVCallBackContext;
    .locals 0

    .line 36
    iput-object p1, p0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->mWriteValueCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    return-object p1
.end method


# virtual methods
.method public connect(Ljava/lang/String;)Z
    .locals 4

    .line 415
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->mBTAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v1, 0x0

    const-string v2, "WVBluetooth"

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 420
    :cond_0
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, "Device not found.  Unable to connect."

    .line 422
    invoke-static {v2, p1}, Landroid/taobao/windvane/util/TaoLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 428
    :cond_1
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->mGattCallback:Landroid/bluetooth/BluetoothGattCallback;

    invoke-virtual {p1, v0, v1, v3}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;

    move-result-object p1

    iput-object p1, p0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    const-string p1, "Trying to create a new connection."

    .line 429
    invoke-static {v2, p1}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    const-string p1, "BluetoothAdapter not initialized or unspecified address."

    .line 416
    invoke-static {v2, p1}, Landroid/taobao/windvane/util/TaoLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public connectDevice(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V
    .locals 4

    .line 267
    new-instance v0, Landroid/taobao/windvane/jsbridge/WVResult;

    invoke-direct {v0}, Landroid/taobao/windvane/jsbridge/WVResult;-><init>()V

    .line 268
    iget-object v1, p0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->mBTAdapter:Landroid/bluetooth/BluetoothAdapter;

    const-string v2, "msg"

    if-nez v1, :cond_0

    const-string p1, "DEVICE_NOT_SUPPORT"

    .line 269
    invoke-virtual {v0, v2, p1}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    invoke-virtual {p2, v0}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Landroid/taobao/windvane/jsbridge/WVResult;)V

    goto :goto_0

    .line 271
    :cond_0
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    const-string p1, "BLUETOOTH_DISABLED"

    .line 272
    invoke-virtual {v0, v2, p1}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    invoke-virtual {p2, v0}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Landroid/taobao/windvane/jsbridge/WVResult;)V

    goto :goto_0

    .line 276
    :cond_1
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "deviceId"

    const-string v3, ""

    .line 277
    invoke-virtual {v1, p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 278
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 280
    invoke-virtual {p0, p1}, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->connect(Ljava/lang/String;)Z

    .line 281
    iput-object p2, p0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->mConnectCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 286
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 287
    invoke-virtual {p2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error()V

    :cond_2
    const-string p1, "FAILED_TO_CONNECT"

    .line 289
    invoke-virtual {v0, v2, p1}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    invoke-virtual {p2, v0}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Landroid/taobao/windvane/jsbridge/WVResult;)V

    :goto_0
    return-void
.end method

.method public disconnect(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V
    .locals 2

    .line 392
    new-instance p1, Landroid/taobao/windvane/jsbridge/WVResult;

    invoke-direct {p1}, Landroid/taobao/windvane/jsbridge/WVResult;-><init>()V

    .line 393
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->mBTAdapter:Landroid/bluetooth/BluetoothAdapter;

    const-string v1, "msg"

    if-nez v0, :cond_0

    const-string v0, "DEVICE_NOT_SUPPORT"

    .line 394
    invoke-virtual {p1, v1, v0}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    invoke-virtual {p2, p1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Landroid/taobao/windvane/jsbridge/WVResult;)V

    goto :goto_0

    .line 396
    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "BLUETOOTH_DISABLED"

    .line 397
    invoke-virtual {p1, v1, v0}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    invoke-virtual {p2, p1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Landroid/taobao/windvane/jsbridge/WVResult;)V

    goto :goto_0

    .line 401
    :cond_1
    :try_start_0
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    const/4 v0, 0x0

    .line 402
    iput-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    .line 403
    invoke-virtual {p2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 406
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 407
    invoke-virtual {p2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error()V

    const-string v0, "FAILED_TO_CONNECT"

    .line 409
    invoke-virtual {p1, v1, v0}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    invoke-virtual {p2, p1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Landroid/taobao/windvane/jsbridge/WVResult;)V

    :goto_0
    return-void
.end method

.method public execute(Ljava/lang/String;Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)Z
    .locals 3

    const-string/jumbo v0, "requestAuthorization"

    .line 57
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {p0, p2, p3}, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->requestAuthorization(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V

    return v1

    :cond_0
    const-string/jumbo v0, "scan"

    .line 60
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 61
    invoke-virtual {p0, p2, p3}, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->findDevices(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V

    return v1

    :cond_1
    const-string/jumbo v0, "stopScan"

    .line 63
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 64
    invoke-virtual {p0, p2, p3}, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->stopScan(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V

    goto :goto_0

    :cond_2
    const-string v0, "connect"

    .line 65
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 66
    invoke-virtual {p0, p2, p3}, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->connectDevice(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V

    return v1

    :cond_3
    const-string v0, "disconnect"

    .line 68
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 69
    invoke-virtual {p0, p2, p3}, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->disconnect(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V

    return v1

    :cond_4
    const-string v0, "getServices"

    .line 71
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 72
    invoke-virtual {p0, p2, p3}, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->getServices(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V

    return v1

    :cond_5
    const-string v0, "getCharacteristics"

    .line 74
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 75
    invoke-virtual {p0, p2, p3}, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->getCharacteristics(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V

    return v1

    :cond_6
    const-string/jumbo v0, "writeValue"

    .line 77
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 78
    invoke-virtual {p0, p2, p3}, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->writeValue(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V

    return v1

    :cond_7
    const-string/jumbo v0, "readValue"

    .line 80
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 81
    invoke-virtual {p0, p2, p3}, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->readValue(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V

    return v1

    :cond_8
    const-string/jumbo v0, "startNotifications"

    .line 83
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 84
    invoke-virtual {p0, p2, v1, p3}, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->setNotifications(Ljava/lang/String;ZLandroid/taobao/windvane/jsbridge/WVCallBackContext;)V

    return v1

    :cond_9
    const-string/jumbo v0, "stopNotifications"

    .line 86
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 87
    invoke-virtual {p0, p2, v2, p3}, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->setNotifications(Ljava/lang/String;ZLandroid/taobao/windvane/jsbridge/WVCallBackContext;)V

    return v1

    :cond_a
    :goto_0
    return v2
.end method

.method public findDevices(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V
    .locals 2

    .line 211
    new-instance p1, Landroid/taobao/windvane/jsbridge/WVResult;

    invoke-direct {p1}, Landroid/taobao/windvane/jsbridge/WVResult;-><init>()V

    .line 212
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->mBTAdapter:Landroid/bluetooth/BluetoothAdapter;

    const-string v1, "msg"

    if-nez v0, :cond_0

    const-string v0, "DEVICE_NOT_SUPPORT"

    .line 213
    invoke-virtual {p1, v1, v0}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    invoke-virtual {p2, p1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Landroid/taobao/windvane/jsbridge/WVResult;)V

    goto :goto_0

    .line 215
    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "BLUETOOTH_DISABLED"

    .line 216
    invoke-virtual {p1, v1, v0}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    invoke-virtual {p2, p1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Landroid/taobao/windvane/jsbridge/WVResult;)V

    goto :goto_0

    .line 219
    :cond_1
    iget-object p1, p0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->mLeScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    if-nez p1, :cond_2

    .line 220
    new-instance p1, Landroid/taobao/windvane/jsbridge/api/WVBluetooth$3;

    invoke-direct {p1, p0}, Landroid/taobao/windvane/jsbridge/api/WVBluetooth$3;-><init>(Landroid/taobao/windvane/jsbridge/api/WVBluetooth;)V

    iput-object p1, p0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->mLeScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    .line 240
    :cond_2
    iget-object p1, p0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->mKnownDevices:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    .line 241
    iget-object p1, p0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->mBTAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->mLeScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothAdapter;->startLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)Z

    .line 242
    invoke-virtual {p2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success()V

    :goto_0
    return-void
.end method

.method public getCharacteristics(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V
    .locals 5

    const-string v0, ""

    .line 177
    new-instance v1, Landroid/taobao/windvane/jsbridge/WVResult;

    invoke-direct {v1}, Landroid/taobao/windvane/jsbridge/WVResult;-><init>()V

    .line 178
    iget-object v2, p0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->mBTAdapter:Landroid/bluetooth/BluetoothAdapter;

    const-string v3, "msg"

    if-nez v2, :cond_0

    const-string p1, "DEVICE_NOT_SUPPORT"

    .line 179
    invoke-virtual {v1, v3, p1}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    invoke-virtual {p2, v1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Landroid/taobao/windvane/jsbridge/WVResult;)V

    return-void

    .line 182
    :cond_0
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 184
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "deviceId"

    .line 185
    invoke-virtual {v2, p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v4, "serviceId"

    .line 186
    invoke-virtual {v2, v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 187
    iget-object v2, p0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    .line 192
    :cond_1
    iget-object p1, p0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object p1

    .line 193
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 194
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattService;->getCharacteristics()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 195
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "characteristicId"

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_2
    const-string p1, "characteristics"

    .line 197
    invoke-virtual {v1, p1, v0}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Lorg/json/JSONArray;)V

    .line 198
    invoke-virtual {p2, v1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success(Landroid/taobao/windvane/jsbridge/WVResult;)V

    goto :goto_2

    :cond_3
    :goto_1
    const-string p1, "DEVICE_NOT_CONNECT"

    .line 188
    invoke-virtual {v1, v3, p1}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    invoke-virtual {p2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 200
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 201
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Ljava/lang/String;)V

    .line 204
    :cond_4
    :goto_2
    invoke-virtual {p2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error()V

    return-void
.end method

.method public getServices(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V
    .locals 4

    .line 144
    new-instance v0, Landroid/taobao/windvane/jsbridge/WVResult;

    invoke-direct {v0}, Landroid/taobao/windvane/jsbridge/WVResult;-><init>()V

    .line 145
    iget-object v1, p0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->mBTAdapter:Landroid/bluetooth/BluetoothAdapter;

    const-string v2, "msg"

    if-nez v1, :cond_0

    const-string p1, "DEVICE_NOT_SUPPORT"

    .line 146
    invoke-virtual {v0, v2, p1}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-virtual {p2, v0}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Landroid/taobao/windvane/jsbridge/WVResult;)V

    return-void

    .line 149
    :cond_0
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 151
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "deviceId"

    const-string v3, ""

    .line 152
    invoke-virtual {v1, p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 153
    iget-object v1, p0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    :cond_1
    const-string p1, "DEVICE_NOT_CONNECT"

    .line 154
    invoke-virtual {v0, v2, p1}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    invoke-virtual {p2, v0}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Landroid/taobao/windvane/jsbridge/WVResult;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 159
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 160
    invoke-virtual {p2, v0}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Landroid/taobao/windvane/jsbridge/WVResult;)V

    .line 163
    :cond_2
    iget-object p1, p0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz p1, :cond_3

    .line 164
    iput-object p2, p0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->mGetServiceCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .line 165
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->discoverServices()Z

    const-string p1, "WVBluetooth"

    const-string p2, "Attempting to start service discovery"

    .line 166
    invoke-static {p1, p2}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void

    .line 170
    :cond_4
    invoke-virtual {p2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error()V

    return-void
.end method

.method public initialize(Landroid/content/Context;Landroid/taobao/windvane/webview/IWVWebView;)V
    .locals 1

    .line 51
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->mBTAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 52
    invoke-super {p0, p1, p2}, Landroid/taobao/windvane/jsbridge/WVApiPlugin;->initialize(Landroid/content/Context;Landroid/taobao/windvane/webview/IWVWebView;)V

    return-void
.end method

.method public readValue(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V
    .locals 7

    const-string v0, ""

    .line 347
    new-instance v1, Landroid/taobao/windvane/jsbridge/WVResult;

    invoke-direct {v1}, Landroid/taobao/windvane/jsbridge/WVResult;-><init>()V

    .line 348
    iget-object v2, p0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->mBTAdapter:Landroid/bluetooth/BluetoothAdapter;

    const-string v3, "msg"

    if-nez v2, :cond_0

    const-string p1, "DEVICE_NOT_SUPPORT"

    .line 349
    invoke-virtual {v1, v3, p1}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    invoke-virtual {p2, v1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Landroid/taobao/windvane/jsbridge/WVResult;)V

    goto/16 :goto_2

    .line 351
    :cond_0
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    const-string p1, "BLUETOOTH_DISABLED"

    .line 352
    invoke-virtual {v1, v3, p1}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    invoke-virtual {p2, v1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Landroid/taobao/windvane/jsbridge/WVResult;)V

    goto/16 :goto_2

    .line 354
    :cond_1
    iget v2, p0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->mCurrentConnectionState:I

    const/4 v4, 0x2

    if-eq v2, v4, :cond_2

    .line 355
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "BLUETOOTH_NOT_ACTIVE: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->mCurrentConnectionState:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v3, p1}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    invoke-virtual {p2, v1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Landroid/taobao/windvane/jsbridge/WVResult;)V

    goto/16 :goto_2

    .line 359
    :cond_2
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "deviceId"

    .line 360
    invoke-virtual {v2, p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v4, "serviceId"

    .line 361
    invoke-virtual {v2, v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "characteristicId"

    .line 362
    invoke-virtual {v2, v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "value"

    .line 363
    invoke-virtual {v2, v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 364
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    .line 369
    :cond_3
    iget-object p1, p0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v4}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object p1

    .line 370
    invoke-static {v5}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 372
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothGatt;->readCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 374
    iput-object p2, p0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->mReadValueCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    goto :goto_1

    .line 376
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FAILED_TO_READ_CHARACTERISTIC: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v3, p1}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    invoke-virtual {p2, v1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Landroid/taobao/windvane/jsbridge/WVResult;)V

    goto :goto_1

    :cond_5
    :goto_0
    const-string p1, "DEVICE_NOT_CONNECT"

    .line 365
    invoke-virtual {v1, v3, p1}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    invoke-virtual {p2, v1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Landroid/taobao/windvane/jsbridge/WVResult;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 381
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Ljava/lang/String;)V

    :cond_6
    :goto_1
    const-string p1, "FAILED_TO_READ"

    .line 383
    invoke-virtual {v1, v3, p1}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    invoke-virtual {p2, v1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Landroid/taobao/windvane/jsbridge/WVResult;)V

    :goto_2
    return-void
.end method

.method public requestAuthorization(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V
    .locals 3

    .line 98
    :try_start_0
    iget-object p1, p0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "android.permission.BLUETOOTH_ADMIN"

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/taobao/windvane/runtimepermission/PermissionProposer;->buildPermissionTask(Landroid/content/Context;[Ljava/lang/String;)Landroid/taobao/windvane/runtimepermission/PermissionProposer$PermissionRequestTask;

    move-result-object p1

    new-instance v0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth$2;

    invoke-direct {v0, p0, p2}, Landroid/taobao/windvane/jsbridge/api/WVBluetooth$2;-><init>(Landroid/taobao/windvane/jsbridge/api/WVBluetooth;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V

    .line 99
    invoke-virtual {p1, v0}, Landroid/taobao/windvane/runtimepermission/PermissionProposer$PermissionRequestTask;->setTaskOnPermissionGranted(Ljava/lang/Runnable;)Landroid/taobao/windvane/runtimepermission/PermissionProposer$PermissionRequestTask;

    move-result-object p1

    new-instance v0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth$1;

    invoke-direct {v0, p0, p2}, Landroid/taobao/windvane/jsbridge/api/WVBluetooth$1;-><init>(Landroid/taobao/windvane/jsbridge/api/WVBluetooth;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V

    .line 126
    invoke-virtual {p1, v0}, Landroid/taobao/windvane/runtimepermission/PermissionProposer$PermissionRequestTask;->setTaskOnPermissionDenied(Ljava/lang/Runnable;)Landroid/taobao/windvane/runtimepermission/PermissionProposer$PermissionRequestTask;

    move-result-object p1

    .line 133
    invoke-virtual {p1}, Landroid/taobao/windvane/runtimepermission/PermissionProposer$PermissionRequestTask;->execute()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 135
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 136
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setNotifications(Ljava/lang/String;ZLandroid/taobao/windvane/jsbridge/WVCallBackContext;)V
    .locals 7

    const-string v0, ""

    .line 435
    new-instance v1, Landroid/taobao/windvane/jsbridge/WVResult;

    invoke-direct {v1}, Landroid/taobao/windvane/jsbridge/WVResult;-><init>()V

    .line 436
    iget-object v2, p0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->mBTAdapter:Landroid/bluetooth/BluetoothAdapter;

    const-string v3, "msg"

    if-nez v2, :cond_0

    const-string p1, "DEVICE_NOT_SUPPORT"

    .line 437
    invoke-virtual {v1, v3, p1}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    invoke-virtual {p3, v1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Landroid/taobao/windvane/jsbridge/WVResult;)V

    goto/16 :goto_3

    .line 439
    :cond_0
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    const-string p1, "BLUETOOTH_DISABLED"

    .line 440
    invoke-virtual {v1, v3, p1}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    invoke-virtual {p3, v1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Landroid/taobao/windvane/jsbridge/WVResult;)V

    goto/16 :goto_3

    .line 442
    :cond_1
    iget v2, p0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->mCurrentConnectionState:I

    const/4 v4, 0x2

    if-eq v2, v4, :cond_2

    .line 443
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "BLUETOOTH_NOT_ACTIVE: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->mCurrentConnectionState:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v3, p1}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    invoke-virtual {p3, v1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Landroid/taobao/windvane/jsbridge/WVResult;)V

    goto/16 :goto_3

    .line 447
    :cond_2
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "deviceId"

    .line 448
    invoke-virtual {v2, p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v4, "serviceId"

    .line 449
    invoke-virtual {v2, v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "characteristicId"

    .line 450
    invoke-virtual {v2, v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "value"

    .line 451
    invoke-virtual {v2, v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 452
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_2

    .line 457
    :cond_3
    iget-object p1, p0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v4}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object p1

    .line 458
    invoke-static {v5}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 460
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0, p1, p2}, Landroid/bluetooth/BluetoothGatt;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 462
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptors()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 463
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 464
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGattDescriptor;

    if-eqz p2, :cond_4

    .line 466
    sget-object v1, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_NOTIFICATION_VALUE:[B

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    goto :goto_1

    .line 468
    :cond_4
    sget-object v1, Landroid/bluetooth/BluetoothGattDescriptor;->DISABLE_NOTIFICATION_VALUE:[B

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    .line 470
    :goto_1
    iget-object v1, p0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothGatt;->writeDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    goto :goto_0

    .line 473
    :cond_5
    invoke-virtual {p3}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success()V

    goto :goto_3

    :cond_6
    const-string p1, "FAILED_TO_SET_NOTIFICATION"

    .line 475
    invoke-virtual {v1, v3, p1}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    invoke-virtual {p3, v1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Landroid/taobao/windvane/jsbridge/WVResult;)V

    goto :goto_3

    :cond_7
    :goto_2
    const-string p1, "DEVICE_NOT_CONNECT"

    .line 453
    invoke-virtual {v1, v3, p1}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    invoke-virtual {p3, v1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Landroid/taobao/windvane/jsbridge/WVResult;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 480
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_8
    :goto_3
    return-void
.end method

.method public stopScan(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V
    .locals 2

    .line 250
    new-instance p1, Landroid/taobao/windvane/jsbridge/WVResult;

    invoke-direct {p1}, Landroid/taobao/windvane/jsbridge/WVResult;-><init>()V

    .line 251
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->mBTAdapter:Landroid/bluetooth/BluetoothAdapter;

    const-string v1, "msg"

    if-nez v0, :cond_0

    const-string v0, "DEVICE_NOT_SUPPORT"

    .line 252
    invoke-virtual {p1, v1, v0}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    invoke-virtual {p2, p1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Landroid/taobao/windvane/jsbridge/WVResult;)V

    goto :goto_0

    .line 254
    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "BLUETOOTH_DISABLED"

    .line 255
    invoke-virtual {p1, v1, v0}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    invoke-virtual {p2, p1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Landroid/taobao/windvane/jsbridge/WVResult;)V

    goto :goto_0

    .line 258
    :cond_1
    iget-object p1, p0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->mBTAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->mLeScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothAdapter;->stopLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V

    .line 259
    invoke-virtual {p2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success()V

    :goto_0
    return-void
.end method

.method public writeValue(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V
    .locals 8

    const-string v0, ""

    .line 298
    new-instance v1, Landroid/taobao/windvane/jsbridge/WVResult;

    invoke-direct {v1}, Landroid/taobao/windvane/jsbridge/WVResult;-><init>()V

    .line 299
    iget-object v2, p0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->mBTAdapter:Landroid/bluetooth/BluetoothAdapter;

    const-string v3, "msg"

    if-nez v2, :cond_0

    const-string p1, "DEVICE_NOT_SUPPORT"

    .line 300
    invoke-virtual {v1, v3, p1}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    invoke-virtual {p2, v1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Landroid/taobao/windvane/jsbridge/WVResult;)V

    goto/16 :goto_2

    .line 302
    :cond_0
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    const-string p1, "BLUETOOTH_DISABLED"

    .line 303
    invoke-virtual {v1, v3, p1}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    invoke-virtual {p2, v1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Landroid/taobao/windvane/jsbridge/WVResult;)V

    goto/16 :goto_2

    .line 305
    :cond_1
    iget v2, p0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->mCurrentConnectionState:I

    const/4 v4, 0x2

    if-eq v2, v4, :cond_2

    .line 306
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "BLUETOOTH_NOT_ACTIVE: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->mCurrentConnectionState:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v3, p1}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    invoke-virtual {p2, v1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Landroid/taobao/windvane/jsbridge/WVResult;)V

    goto/16 :goto_2

    .line 310
    :cond_2
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "deviceId"

    .line 311
    invoke-virtual {v2, p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v5, "serviceId"

    .line 312
    invoke-virtual {v2, v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "characteristicId"

    .line 313
    invoke-virtual {v2, v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "value"

    .line 314
    invoke-virtual {v2, v7, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 315
    iget-object v2, p0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v2, :cond_5

    iget-object v2, p0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_1

    .line 320
    :cond_3
    iget-object p1, p0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v5}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object p1

    .line 321
    invoke-static {v6}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object p1

    const-string v2, "WVBluetooth"

    .line 322
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "get characteristic: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_6

    .line 324
    invoke-static {v0, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 325
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 327
    iput-object p2, p0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;->mWriteValueCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    goto :goto_0

    .line 329
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FAILED_TO_WRITE_CHARACTERISTIC: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v3, p1}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    invoke-virtual {p2, v1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Landroid/taobao/windvane/jsbridge/WVResult;)V

    :goto_0
    return-void

    :cond_5
    :goto_1
    const-string p1, "DEVICE_NOT_CONNECT"

    .line 316
    invoke-virtual {v1, v3, p1}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    invoke-virtual {p2, v1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Landroid/taobao/windvane/jsbridge/WVResult;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 335
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 336
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {v1, v3, p1}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_6
    const-string p1, "FAILED_TO_WRITE"

    .line 338
    invoke-virtual {v1, v3, p1}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    invoke-virtual {p2, v1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Landroid/taobao/windvane/jsbridge/WVResult;)V

    :goto_2
    return-void
.end method
