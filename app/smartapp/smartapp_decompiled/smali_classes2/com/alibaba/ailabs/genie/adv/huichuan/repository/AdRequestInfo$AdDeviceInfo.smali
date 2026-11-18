.class public Lcom/alibaba/ailabs/genie/adv/huichuan/repository/AdRequestInfo$AdDeviceInfo;
.super Ljava/lang/Object;
.source "AdRequestInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/adv/huichuan/repository/AdRequestInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AdDeviceInfo"
.end annotation


# instance fields
.field private access:Ljava/lang/String;

.field private client_ip:Ljava/lang/String;

.field private cpu:Ljava/lang/String;

.field private devId:Ljava/lang/String;

.field private device:Ljava/lang/String;

.field private imei:Ljava/lang/String;

.field private is_jb:Ljava/lang/String;

.field private mac:Ljava/lang/String;

.field private os:Ljava/lang/String;

.field private osv:Ljava/lang/String;

.field private sh:Ljava/lang/String;

.field private sw:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private toJson()Ljava/lang/String;
    .locals 1

    .line 165
    invoke-static {p0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAccess()Ljava/lang/String;
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/adv/huichuan/repository/AdRequestInfo$AdDeviceInfo;->access:Ljava/lang/String;

    return-object v0
.end method

.method public getClient_ip()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/adv/huichuan/repository/AdRequestInfo$AdDeviceInfo;->client_ip:Ljava/lang/String;

    return-object v0
.end method

.method public getCpu()Ljava/lang/String;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/adv/huichuan/repository/AdRequestInfo$AdDeviceInfo;->cpu:Ljava/lang/String;

    return-object v0
.end method

.method public getDevId()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/adv/huichuan/repository/AdRequestInfo$AdDeviceInfo;->devId:Ljava/lang/String;

    return-object v0
.end method

.method public getDevice()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/adv/huichuan/repository/AdRequestInfo$AdDeviceInfo;->device:Ljava/lang/String;

    return-object v0
.end method

.method public getImei()Ljava/lang/String;
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/adv/huichuan/repository/AdRequestInfo$AdDeviceInfo;->imei:Ljava/lang/String;

    return-object v0
.end method

.method public getIs_jb()Ljava/lang/String;
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/adv/huichuan/repository/AdRequestInfo$AdDeviceInfo;->is_jb:Ljava/lang/String;

    return-object v0
.end method

.method public getMac()Ljava/lang/String;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/adv/huichuan/repository/AdRequestInfo$AdDeviceInfo;->mac:Ljava/lang/String;

    return-object v0
.end method

.method public getOs()Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/adv/huichuan/repository/AdRequestInfo$AdDeviceInfo;->os:Ljava/lang/String;

    return-object v0
.end method

.method public getOsv()Ljava/lang/String;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/adv/huichuan/repository/AdRequestInfo$AdDeviceInfo;->osv:Ljava/lang/String;

    return-object v0
.end method

.method public getSh()Ljava/lang/String;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/adv/huichuan/repository/AdRequestInfo$AdDeviceInfo;->sh:Ljava/lang/String;

    return-object v0
.end method

.method public getSw()Ljava/lang/String;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/adv/huichuan/repository/AdRequestInfo$AdDeviceInfo;->sw:Ljava/lang/String;

    return-object v0
.end method

.method public setAccess(Ljava/lang/String;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/adv/huichuan/repository/AdRequestInfo$AdDeviceInfo;->access:Ljava/lang/String;

    return-void
.end method

.method public setClient_ip(Ljava/lang/String;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/adv/huichuan/repository/AdRequestInfo$AdDeviceInfo;->client_ip:Ljava/lang/String;

    return-void
.end method

.method public setCpu(Ljava/lang/String;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/adv/huichuan/repository/AdRequestInfo$AdDeviceInfo;->cpu:Ljava/lang/String;

    return-void
.end method

.method public setDevId(Ljava/lang/String;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/adv/huichuan/repository/AdRequestInfo$AdDeviceInfo;->devId:Ljava/lang/String;

    return-void
.end method

.method public setDevice(Ljava/lang/String;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/adv/huichuan/repository/AdRequestInfo$AdDeviceInfo;->device:Ljava/lang/String;

    return-void
.end method

.method public setImei(Ljava/lang/String;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/adv/huichuan/repository/AdRequestInfo$AdDeviceInfo;->imei:Ljava/lang/String;

    return-void
.end method

.method public setIs_jb(Ljava/lang/String;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/adv/huichuan/repository/AdRequestInfo$AdDeviceInfo;->is_jb:Ljava/lang/String;

    return-void
.end method

.method public setMac(Ljava/lang/String;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/adv/huichuan/repository/AdRequestInfo$AdDeviceInfo;->mac:Ljava/lang/String;

    return-void
.end method

.method public setOs(Ljava/lang/String;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/adv/huichuan/repository/AdRequestInfo$AdDeviceInfo;->os:Ljava/lang/String;

    return-void
.end method

.method public setOsv(Ljava/lang/String;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/adv/huichuan/repository/AdRequestInfo$AdDeviceInfo;->osv:Ljava/lang/String;

    return-void
.end method

.method public setSh(Ljava/lang/String;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/adv/huichuan/repository/AdRequestInfo$AdDeviceInfo;->sh:Ljava/lang/String;

    return-void
.end method

.method public setSw(Ljava/lang/String;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/adv/huichuan/repository/AdRequestInfo$AdDeviceInfo;->sw:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 170
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/adv/huichuan/repository/AdRequestInfo$AdDeviceInfo;->toJson()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
