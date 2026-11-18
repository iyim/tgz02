.class public Lcom/alibaba/ailabs/appbox/mtop/DeviceInfo;
.super Ljava/lang/Object;
.source "DeviceInfo.java"


# instance fields
.field appPackageKey:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "appPackageKey"
    .end annotation
.end field

.field desktopCardCurrentDataVersion:J
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "desktopCardCurrentDataVersion"
    .end annotation
.end field

.field desktopIconCurrentDataVersion:J
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "desktopIconCurrentDataVersion"
    .end annotation
.end field

.field device:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "device"
    .end annotation
.end field

.field deviceMode:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "deviceMode"
    .end annotation
.end field

.field ip:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "ip"
    .end annotation
.end field

.field osVer:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "osVer"
    .end annotation
.end field

.field osVersion:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "osVersion"
    .end annotation
.end field

.field pageIndex:I
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "pageIndex"
    .end annotation
.end field

.field utdid:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "utdid"
    .end annotation
.end field

.field ver:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "ver"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getAppPackageKey()Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/mtop/DeviceInfo;->appPackageKey:Ljava/lang/String;

    return-object v0
.end method

.method public getDesktopCardCurrentDataVersion()J
    .locals 2

    .line 162
    iget-wide v0, p0, Lcom/alibaba/ailabs/appbox/mtop/DeviceInfo;->desktopCardCurrentDataVersion:J

    return-wide v0
.end method

.method public getDesktopIconCurrentDataVersion()J
    .locals 2

    .line 154
    iget-wide v0, p0, Lcom/alibaba/ailabs/appbox/mtop/DeviceInfo;->desktopIconCurrentDataVersion:J

    return-wide v0
.end method

.method public getDevice()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/mtop/DeviceInfo;->device:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceMode()Ljava/lang/String;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/mtop/DeviceInfo;->deviceMode:Ljava/lang/String;

    return-object v0
.end method

.method public getIp()Ljava/lang/String;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/mtop/DeviceInfo;->ip:Ljava/lang/String;

    return-object v0
.end method

.method public getOsVer()Ljava/lang/String;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/mtop/DeviceInfo;->osVer:Ljava/lang/String;

    return-object v0
.end method

.method public getOsVersion()Ljava/lang/String;
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/mtop/DeviceInfo;->osVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getPageIndex()I
    .locals 1

    .line 150
    iget v0, p0, Lcom/alibaba/ailabs/appbox/mtop/DeviceInfo;->pageIndex:I

    return v0
.end method

.method public getUtdid()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/mtop/DeviceInfo;->utdid:Ljava/lang/String;

    return-object v0
.end method

.method public getVer()Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/mtop/DeviceInfo;->ver:Ljava/lang/String;

    return-object v0
.end method

.method public setAppPackageKey(Ljava/lang/String;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/mtop/DeviceInfo;->appPackageKey:Ljava/lang/String;

    return-void
.end method

.method public setDesktopCardCurrentDataVersion(J)V
    .locals 0

    .line 166
    iput-wide p1, p0, Lcom/alibaba/ailabs/appbox/mtop/DeviceInfo;->desktopCardCurrentDataVersion:J

    return-void
.end method

.method public setDesktopIconCurrentDataVersion(J)V
    .locals 0

    .line 158
    iput-wide p1, p0, Lcom/alibaba/ailabs/appbox/mtop/DeviceInfo;->desktopIconCurrentDataVersion:J

    return-void
.end method

.method public setDevice(Ljava/lang/String;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/mtop/DeviceInfo;->device:Ljava/lang/String;

    return-void
.end method

.method public setDeviceMode(Ljava/lang/String;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/mtop/DeviceInfo;->deviceMode:Ljava/lang/String;

    return-void
.end method

.method public setIp(Ljava/lang/String;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/mtop/DeviceInfo;->ip:Ljava/lang/String;

    return-void
.end method

.method public setOsVer(Ljava/lang/String;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/mtop/DeviceInfo;->osVer:Ljava/lang/String;

    return-void
.end method

.method public setOsVersion(Ljava/lang/String;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/mtop/DeviceInfo;->osVersion:Ljava/lang/String;

    return-void
.end method

.method public setPageIndex(I)V
    .locals 0

    .line 146
    iput p1, p0, Lcom/alibaba/ailabs/appbox/mtop/DeviceInfo;->pageIndex:I

    return-void
.end method

.method public setUtdid(Ljava/lang/String;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/mtop/DeviceInfo;->utdid:Ljava/lang/String;

    return-void
.end method

.method public setVer(Ljava/lang/String;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/mtop/DeviceInfo;->ver:Ljava/lang/String;

    return-void
.end method

.method public toJson()Ljava/lang/String;
    .locals 1

    .line 129
    invoke-static {p0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 134
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/mtop/DeviceInfo;->toJson()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
