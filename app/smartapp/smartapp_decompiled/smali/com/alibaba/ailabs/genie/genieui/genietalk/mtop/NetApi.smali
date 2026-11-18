.class public final Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/NetApi;
.super Ljava/lang/Object;
.source "NetApi.java"


# static fields
.field private static final API_REQUEST_CORPUS:Ljava/lang/String; = "mtop.alibaba.aicloud.t.getCorpus.getCorpus"

.field public static final API_VERSION_1_0:Ljava/lang/String; = "1.0"

.field public static final Child_Mode_Persist:Ljava/lang/String; = "persist.sys.is.child.mode"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getCorpus(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/alibaba/ailabs/genie/second/MtopClient$Callback<",
            "Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/response/GetCorpusResponse;",
            ">;)V"
        }
    .end annotation

    .line 35
    invoke-static {}, Lcom/alibaba/ailabs/genie/genieui/widget/BackGroundTaskManager;->getInstance()Lcom/alibaba/ailabs/genie/genieui/widget/BackGroundTaskManager;

    move-result-object v0

    new-instance v7, Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/NetApi$1;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/NetApi$1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;)V

    invoke-virtual {v0, v7}, Lcom/alibaba/ailabs/genie/genieui/widget/BackGroundTaskManager;->run(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static getDeviceInfo()Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/DeviceInfo;
    .locals 2

    .line 71
    new-instance v0, Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/DeviceInfo;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/DeviceInfo;-><init>()V

    .line 72
    invoke-static {}, Lcom/alibaba/ailabs/genie/genieui/GenieBallApplication;->getApp()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/ta/utdid2/device/UTDevice;->getUtdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/DeviceInfo;->setUtdid(Ljava/lang/String;)V

    const-string v1, "ANDROID"

    .line 73
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/DeviceInfo;->setDevice(Ljava/lang/String;)V

    .line 74
    invoke-static {}, Lcom/alibaba/ailabs/genie/genieui/GenieBallApplication;->getApp()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/DeviceInfo;->setAppPackageKey(Ljava/lang/String;)V

    .line 75
    invoke-static {}, Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/NetApi;->getIpAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/DeviceInfo;->setIp(Ljava/lang/String;)V

    .line 76
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/DeviceInfo;->setOsVer(Ljava/lang/String;)V

    .line 77
    invoke-static {}, Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/NetApi;->isChildMode()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "1"

    .line 78
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/DeviceInfo;->setDeviceMode(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v1, "0"

    .line 80
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/DeviceInfo;->setDeviceMode(Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method public static getIpAddress()Ljava/lang/String;
    .locals 2

    .line 96
    invoke-static {}, Lcom/alibaba/ailabs/genie/genieui/GenieBallApplication;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 99
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 100
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v0

    .line 101
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/NetApi;->intToIp(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getSystemProperties(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.os.SystemProperties"

    .line 109
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "get"

    const/4 v3, 0x2

    .line 110
    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, Ljava/lang/String;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 111
    new-array v2, v3, [Ljava/lang/Object;

    aput-object p0, v2, v6

    const-string p0, ""

    aput-object p0, v2, v7

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 113
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method private static intToIp(I)Ljava/lang/String;
    .locals 3

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    and-int/lit16 v1, p0, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    shr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    shr-int/lit8 v2, p0, 0x10

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    shr-int/lit8 p0, p0, 0x18

    and-int/lit16 p0, p0, 0xff

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isChildMode()Z
    .locals 2

    const-string v0, "persist.sys.is.child.mode"

    .line 119
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/NetApi;->getSystemProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    .line 120
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method
