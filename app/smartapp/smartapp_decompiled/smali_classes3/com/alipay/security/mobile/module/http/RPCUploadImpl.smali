.class public Lcom/alipay/security/mobile/module/http/RPCUploadImpl;
.super Ljava/lang/Object;
.source "RPCUploadImpl.java"

# interfaces
.implements Lcom/alipay/security/mobile/module/http/IUpload;


# static fields
.field private static asyncResult:Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult;

.field private static rpcUpload:Lcom/alipay/security/mobile/module/http/RPCUploadImpl;


# instance fields
.field private mAppListCmdService:Lcom/alipay/tscenter/biz/rpc/vkeydfp/AppListCmdService;

.field private mBugTrackMessageService:Lcom/alipay/tscenter/biz/rpc/deviceFp/BugTrackMessageService;

.field private mDeviceFingerPrintService:Lcom/alipay/tscenter/biz/rpc/vkeydfp/DeviceDataReportService;

.field private mRpcClient:Lcom/alipay/android/phone/mrpc/core/RpcClient;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/alipay/security/mobile/module/http/RPCUploadImpl;->mRpcClient:Lcom/alipay/android/phone/mrpc/core/RpcClient;

    .line 21
    iput-object v0, p0, Lcom/alipay/security/mobile/module/http/RPCUploadImpl;->mBugTrackMessageService:Lcom/alipay/tscenter/biz/rpc/deviceFp/BugTrackMessageService;

    .line 23
    iput-object v0, p0, Lcom/alipay/security/mobile/module/http/RPCUploadImpl;->mDeviceFingerPrintService:Lcom/alipay/tscenter/biz/rpc/vkeydfp/DeviceDataReportService;

    .line 25
    iput-object v0, p0, Lcom/alipay/security/mobile/module/http/RPCUploadImpl;->mAppListCmdService:Lcom/alipay/tscenter/biz/rpc/vkeydfp/AppListCmdService;

    .line 40
    new-instance v0, Lcom/alipay/android/phone/mrpc/core/RpcParams;

    invoke-direct {v0}, Lcom/alipay/android/phone/mrpc/core/RpcParams;-><init>()V

    .line 41
    invoke-virtual {v0, p2}, Lcom/alipay/android/phone/mrpc/core/RpcParams;->setGwUrl(Ljava/lang/String;)V

    .line 44
    new-instance p2, Lcom/alipay/android/phone/mrpc/core/DefaultRpcClient;

    invoke-direct {p2, p1}, Lcom/alipay/android/phone/mrpc/core/DefaultRpcClient;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/alipay/security/mobile/module/http/RPCUploadImpl;->mRpcClient:Lcom/alipay/android/phone/mrpc/core/RpcClient;

    .line 47
    iget-object p1, p0, Lcom/alipay/security/mobile/module/http/RPCUploadImpl;->mRpcClient:Lcom/alipay/android/phone/mrpc/core/RpcClient;

    const-class p2, Lcom/alipay/tscenter/biz/rpc/deviceFp/BugTrackMessageService;

    invoke-virtual {p1, p2, v0}, Lcom/alipay/android/phone/mrpc/core/RpcClient;->getRpcProxy(Ljava/lang/Class;Lcom/alipay/android/phone/mrpc/core/RpcParams;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alipay/tscenter/biz/rpc/deviceFp/BugTrackMessageService;

    iput-object p1, p0, Lcom/alipay/security/mobile/module/http/RPCUploadImpl;->mBugTrackMessageService:Lcom/alipay/tscenter/biz/rpc/deviceFp/BugTrackMessageService;

    .line 48
    iget-object p1, p0, Lcom/alipay/security/mobile/module/http/RPCUploadImpl;->mRpcClient:Lcom/alipay/android/phone/mrpc/core/RpcClient;

    const-class p2, Lcom/alipay/tscenter/biz/rpc/vkeydfp/DeviceDataReportService;

    invoke-virtual {p1, p2, v0}, Lcom/alipay/android/phone/mrpc/core/RpcClient;->getRpcProxy(Ljava/lang/Class;Lcom/alipay/android/phone/mrpc/core/RpcParams;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alipay/tscenter/biz/rpc/vkeydfp/DeviceDataReportService;

    iput-object p1, p0, Lcom/alipay/security/mobile/module/http/RPCUploadImpl;->mDeviceFingerPrintService:Lcom/alipay/tscenter/biz/rpc/vkeydfp/DeviceDataReportService;

    .line 49
    iget-object p1, p0, Lcom/alipay/security/mobile/module/http/RPCUploadImpl;->mRpcClient:Lcom/alipay/android/phone/mrpc/core/RpcClient;

    const-class p2, Lcom/alipay/tscenter/biz/rpc/vkeydfp/AppListCmdService;

    invoke-virtual {p1, p2, v0}, Lcom/alipay/android/phone/mrpc/core/RpcClient;->getRpcProxy(Ljava/lang/Class;Lcom/alipay/android/phone/mrpc/core/RpcParams;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alipay/tscenter/biz/rpc/vkeydfp/AppListCmdService;

    iput-object p1, p0, Lcom/alipay/security/mobile/module/http/RPCUploadImpl;->mAppListCmdService:Lcom/alipay/tscenter/biz/rpc/vkeydfp/AppListCmdService;

    return-void
.end method

.method static synthetic access$000()Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult;
    .locals 1

    .line 17
    sget-object v0, Lcom/alipay/security/mobile/module/http/RPCUploadImpl;->asyncResult:Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult;

    return-object v0
.end method

.method static synthetic access$002(Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult;)Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult;
    .locals 0

    .line 17
    sput-object p0, Lcom/alipay/security/mobile/module/http/RPCUploadImpl;->asyncResult:Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult;

    return-object p0
.end method

.method static synthetic access$100(Lcom/alipay/security/mobile/module/http/RPCUploadImpl;)Lcom/alipay/tscenter/biz/rpc/vkeydfp/DeviceDataReportService;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/alipay/security/mobile/module/http/RPCUploadImpl;->mDeviceFingerPrintService:Lcom/alipay/tscenter/biz/rpc/vkeydfp/DeviceDataReportService;

    return-object p0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/alipay/security/mobile/module/http/RPCUploadImpl;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-class v0, Lcom/alipay/security/mobile/module/http/RPCUploadImpl;

    monitor-enter v0

    .line 32
    :try_start_0
    sget-object v1, Lcom/alipay/security/mobile/module/http/RPCUploadImpl;->rpcUpload:Lcom/alipay/security/mobile/module/http/RPCUploadImpl;

    if-nez v1, :cond_0

    .line 33
    new-instance v1, Lcom/alipay/security/mobile/module/http/RPCUploadImpl;

    invoke-direct {v1, p0, p1}, Lcom/alipay/security/mobile/module/http/RPCUploadImpl;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v1, Lcom/alipay/security/mobile/module/http/RPCUploadImpl;->rpcUpload:Lcom/alipay/security/mobile/module/http/RPCUploadImpl;

    .line 35
    :cond_0
    sget-object p0, Lcom/alipay/security/mobile/module/http/RPCUploadImpl;->rpcUpload:Lcom/alipay/security/mobile/module/http/RPCUploadImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public logCollect(Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 55
    invoke-static {p1}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/alipay/security/mobile/module/http/RPCUploadImpl;->mBugTrackMessageService:Lcom/alipay/tscenter/biz/rpc/deviceFp/BugTrackMessageService;

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    .line 63
    :try_start_0
    invoke-static {p1}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->textCompress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/alipay/tscenter/biz/rpc/deviceFp/BugTrackMessageService;->logCollect(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :catch_0
    invoke-static {v2}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 70
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "success"

    .line 71
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :cond_1
    return v1
.end method

.method public updateStaticData(Lcom/alipay/tscenter/biz/rpc/vkeydfp/request/DeviceDataReportRequest;)Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 83
    :cond_0
    iget-object v1, p0, Lcom/alipay/security/mobile/module/http/RPCUploadImpl;->mDeviceFingerPrintService:Lcom/alipay/tscenter/biz/rpc/vkeydfp/DeviceDataReportService;

    if-eqz v1, :cond_1

    .line 84
    sput-object v0, Lcom/alipay/security/mobile/module/http/RPCUploadImpl;->asyncResult:Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult;

    .line 85
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alipay/security/mobile/module/http/RPCUploadImpl$1;

    invoke-direct {v1, p0, p1}, Lcom/alipay/security/mobile/module/http/RPCUploadImpl$1;-><init>(Lcom/alipay/security/mobile/module/http/RPCUploadImpl;Lcom/alipay/tscenter/biz/rpc/vkeydfp/request/DeviceDataReportRequest;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const p1, 0x493e0

    .line 103
    :goto_0
    sget-object v0, Lcom/alipay/security/mobile/module/http/RPCUploadImpl;->asyncResult:Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult;

    if-nez v0, :cond_1

    if-ltz p1, :cond_1

    const-wide/16 v0, 0x32

    .line 104
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    add-int/lit8 p1, p1, -0x32

    goto :goto_0

    .line 109
    :cond_1
    sget-object p1, Lcom/alipay/security/mobile/module/http/RPCUploadImpl;->asyncResult:Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult;

    return-object p1
.end method
