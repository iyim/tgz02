.class public Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/DeviceInfo;
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

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getAppPackageKey()Ljava/lang/String;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/DeviceInfo;->appPackageKey:Ljava/lang/String;

    return-object v0
.end method

.method public getDesktopCardCurrentDataVersion()J
    .locals 2

    .line 163
    iget-wide v0, p0, Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/DeviceInfo;->desktopCardCurrentDataVersion:J

    return-wide v0
.end method

.method public getDesktopIconCurrentDataVersion()J
    .locals 2

    .line 155
    iget-wide v0, p0, Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/DeviceInfo;->desktopIconCurrentDataVersion:J

    return-wide v0
.end method

.method public getDevice()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/DeviceInfo;->device:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceMode()Ljava/lang/String;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/DeviceInfo;->deviceMode:Ljava/lang/String;

    return-object v0
.end method

.method public getIp()Ljava/lang/String;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/DeviceInfo;->ip:Ljava/lang/String;

    return-object v0
.end method

.method public getOsVer()Ljava/lang/String;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/DeviceInfo;->osVer:Ljava/lang/String;

    return-object v0
.end method

.method public getOsVersion()Ljava/lang/String;
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/DeviceInfo;->osVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getPageIndex()I
    .locals 1

    .line 151
    iget v0, p0, Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/DeviceInfo;->pageIndex:I

    return v0
.end method

.method public getUtdid()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/DeviceInfo;->utdid:Ljava/lang/String;

    return-object v0
.end method

.method public getVer()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/DeviceInfo;->ver:Ljava/lang/String;

    return-object v0
.end method

.method public setAppPackageKey(Ljava/lang/String;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/DeviceInfo;->appPackageKey:Ljava/lang/String;

    return-void
.end method

.method public setDesktopCardCurrentDataVersion(J)V
    .locals 0

    .line 167
    iput-wide p1, p0, Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/DeviceInfo;->desktopCardCurrentDataVersion:J

    return-void
.end method

.method public setDesktopIconCurrentDataVersion(J)V
    .locals 0

    .line 159
    iput-wide p1, p0, Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/DeviceInfo;->desktopIconCurrentDataVersion:J

    return-void
.end method

.method public setDevice(Ljava/lang/String;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/DeviceInfo;->device:Ljava/lang/String;

    return-void
.end method

.method public setDeviceMode(Ljava/lang/String;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/DeviceInfo;->deviceMode:Ljava/lang/String;

    return-void
.end method

.method public setIp(Ljava/lang/String;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/DeviceInfo;->ip:Ljava/lang/String;

    return-void
.end method

.method public setOsVer(Ljava/lang/String;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/DeviceInfo;->osVer:Ljava/lang/String;

    return-void
.end method

.method public setOsVersion(Ljava/lang/String;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/DeviceInfo;->osVersion:Ljava/lang/String;

    return-void
.end method

.method public setPageIndex(I)V
    .locals 0

    .line 147
    iput p1, p0, Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/DeviceInfo;->pageIndex:I

    return-void
.end method

.method public setUtdid(Ljava/lang/String;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/DeviceInfo;->utdid:Ljava/lang/String;

    return-void
.end method

.method public setVer(Ljava/lang/String;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/DeviceInfo;->ver:Ljava/lang/String;

    return-void
.end method

.method public toJson()Ljava/lang/String;
    .locals 1

    .line 130
    invoke-static {p0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 135
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/DeviceInfo;->toJson()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
