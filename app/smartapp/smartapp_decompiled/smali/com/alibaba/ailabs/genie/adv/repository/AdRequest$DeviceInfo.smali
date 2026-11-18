.class public Lcom/alibaba/ailabs/genie/adv/repository/AdRequest$DeviceInfo;
.super Ljava/lang/Object;
.source "AdRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/adv/repository/AdRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeviceInfo"
.end annotation


# instance fields
.field private carrier:I

.field private connectiontype:I

.field private devicetype:I

.field private idfa:Ljava/lang/String;

.field private imei:Ljava/lang/String;

.field private imeimd5:Ljava/lang/String;

.field private ip:Ljava/lang/String;

.field private ipv6:Ljava/lang/String;

.field private mac:Ljava/lang/String;

.field private oaid:Ljava/lang/String;

.field private os:Ljava/lang/String;

.field private osv:Ljava/lang/String;

.field private ua:Ljava/lang/String;

.field private uuid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getCarrier()I
    .locals 1

    .line 176
    iget v0, p0, Lcom/alibaba/ailabs/genie/adv/repository/AdRequest$DeviceInfo;->carrier:I

    return v0
.end method

.method public getConnectiontype()I
    .locals 1

    .line 168
    iget v0, p0, Lcom/alibaba/ailabs/genie/adv/repository/AdRequest$DeviceInfo;->connectiontype:I

    return v0
.end method

.method public getDevicetype()I
    .locals 1

    .line 184
    iget v0, p0, Lcom/alibaba/ailabs/genie/adv/repository/AdRequest$DeviceInfo;->devicetype:I

    return v0
.end method

.method public getIdfa()Ljava/lang/String;
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/adv/repository/AdRequest$DeviceInfo;->idfa:Ljava/lang/String;

    return-object v0
.end method

.method public getImei()Ljava/lang/String;
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/adv/repository/AdRequest$DeviceInfo;->imei:Ljava/lang/String;

    return-object v0
.end method

.method public getImeimd5()Ljava/lang/String;
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/adv/repository/AdRequest$DeviceInfo;->imeimd5:Ljava/lang/String;

    return-object v0
.end method

.method public getIp()Ljava/lang/String;
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/adv/repository/AdRequest$DeviceInfo;->ip:Ljava/lang/String;

    return-object v0
.end method

.method public getIpv6()Ljava/lang/String;
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/adv/repository/AdRequest$DeviceInfo;->ipv6:Ljava/lang/String;

    return-object v0
.end method

.method public getMac()Ljava/lang/String;
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/adv/repository/AdRequest$DeviceInfo;->mac:Ljava/lang/String;

    return-object v0
.end method

.method public getOaid()Ljava/lang/String;
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/adv/repository/AdRequest$DeviceInfo;->oaid:Ljava/lang/String;

    return-object v0
.end method

.method public getOs()Ljava/lang/String;
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/adv/repository/AdRequest$DeviceInfo;->os:Ljava/lang/String;

    return-object v0
.end method

.method public getOsv()Ljava/lang/String;
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/adv/repository/AdRequest$DeviceInfo;->osv:Ljava/lang/String;

    return-object v0
.end method

.method public getUa()Ljava/lang/String;
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/adv/repository/AdRequest$DeviceInfo;->ua:Ljava/lang/String;

    return-object v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1

    .line 240
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/adv/repository/AdRequest$DeviceInfo;->uuid:Ljava/lang/String;

    return-object v0
.end method

.method public setCarrier(I)V
    .locals 0

    .line 180
    iput p1, p0, Lcom/alibaba/ailabs/genie/adv/repository/AdRequest$DeviceInfo;->carrier:I

    return-void
.end method

.method public setConnectiontype(I)V
    .locals 0

    .line 172
    iput p1, p0, Lcom/alibaba/ailabs/genie/adv/repository/AdRequest$DeviceInfo;->connectiontype:I

    return-void
.end method

.method public setDevicetype(I)V
    .locals 0

    .line 188
    iput p1, p0, Lcom/alibaba/ailabs/genie/adv/repository/AdRequest$DeviceInfo;->devicetype:I

    return-void
.end method

.method public setIdfa(Ljava/lang/String;)V
    .locals 0

    .line 212
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/adv/repository/AdRequest$DeviceInfo;->idfa:Ljava/lang/String;

    return-void
.end method

.method public setImei(Ljava/lang/String;)V
    .locals 0

    .line 220
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/adv/repository/AdRequest$DeviceInfo;->imei:Ljava/lang/String;

    return-void
.end method

.method public setImeimd5(Ljava/lang/String;)V
    .locals 0

    .line 228
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/adv/repository/AdRequest$DeviceInfo;->imeimd5:Ljava/lang/String;

    return-void
.end method

.method public setIp(Ljava/lang/String;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/adv/repository/AdRequest$DeviceInfo;->ip:Ljava/lang/String;

    return-void
.end method

.method public setIpv6(Ljava/lang/String;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/adv/repository/AdRequest$DeviceInfo;->ipv6:Ljava/lang/String;

    return-void
.end method

.method public setMac(Ljava/lang/String;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/adv/repository/AdRequest$DeviceInfo;->mac:Ljava/lang/String;

    return-void
.end method

.method public setOaid(Ljava/lang/String;)V
    .locals 0

    .line 236
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/adv/repository/AdRequest$DeviceInfo;->oaid:Ljava/lang/String;

    return-void
.end method

.method public setOs(Ljava/lang/String;)V
    .locals 0

    .line 196
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/adv/repository/AdRequest$DeviceInfo;->os:Ljava/lang/String;

    return-void
.end method

.method public setOsv(Ljava/lang/String;)V
    .locals 0

    .line 204
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/adv/repository/AdRequest$DeviceInfo;->osv:Ljava/lang/String;

    return-void
.end method

.method public setUa(Ljava/lang/String;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/adv/repository/AdRequest$DeviceInfo;->ua:Ljava/lang/String;

    return-void
.end method

.method public setUuid(Ljava/lang/String;)V
    .locals 0

    .line 244
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/adv/repository/AdRequest$DeviceInfo;->uuid:Ljava/lang/String;

    return-void
.end method
