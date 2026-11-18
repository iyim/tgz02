.class public Lcom/alipay/security/mobile/module/http/model/DeviceDataRequestModel;
.super Ljava/lang/Object;
.source "DeviceDataRequestModel.java"


# instance fields
.field private apdid:Ljava/lang/String;

.field private dataMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private lastTime:Ljava/lang/String;

.field private os:Ljava/lang/String;

.field private priApdid:Ljava/lang/String;

.field private pubApdid:Ljava/lang/String;

.field private token:Ljava/lang/String;

.field private umidToken:Ljava/lang/String;

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getApdid()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/alipay/security/mobile/module/http/model/DeviceDataRequestModel;->apdid:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->getNonNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDataMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 122
    iget-object v0, p0, Lcom/alipay/security/mobile/module/http/model/DeviceDataRequestModel;->dataMap:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :cond_0
    return-object v0
.end method

.method public getLastTime()Ljava/lang/String;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/alipay/security/mobile/module/http/model/DeviceDataRequestModel;->lastTime:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->getNonNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOs()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/alipay/security/mobile/module/http/model/DeviceDataRequestModel;->os:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->getNonNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPriApdid()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/alipay/security/mobile/module/http/model/DeviceDataRequestModel;->priApdid:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->getNonNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPubApdid()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/alipay/security/mobile/module/http/model/DeviceDataRequestModel;->pubApdid:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->getNonNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/alipay/security/mobile/module/http/model/DeviceDataRequestModel;->token:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->getNonNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUmidToken()Ljava/lang/String;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/alipay/security/mobile/module/http/model/DeviceDataRequestModel;->umidToken:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->getNonNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/alipay/security/mobile/module/http/model/DeviceDataRequestModel;->version:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->getNonNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setApdid(Ljava/lang/String;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/alipay/security/mobile/module/http/model/DeviceDataRequestModel;->apdid:Ljava/lang/String;

    return-void
.end method

.method public setDataMap(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 126
    iput-object p1, p0, Lcom/alipay/security/mobile/module/http/model/DeviceDataRequestModel;->dataMap:Ljava/util/Map;

    return-void
.end method

.method public setLastTime(Ljava/lang/String;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/alipay/security/mobile/module/http/model/DeviceDataRequestModel;->lastTime:Ljava/lang/String;

    return-void
.end method

.method public setOs(Ljava/lang/String;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/alipay/security/mobile/module/http/model/DeviceDataRequestModel;->os:Ljava/lang/String;

    return-void
.end method

.method public setPriApdid(Ljava/lang/String;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/alipay/security/mobile/module/http/model/DeviceDataRequestModel;->priApdid:Ljava/lang/String;

    return-void
.end method

.method public setPubApdid(Ljava/lang/String;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/alipay/security/mobile/module/http/model/DeviceDataRequestModel;->pubApdid:Ljava/lang/String;

    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/alipay/security/mobile/module/http/model/DeviceDataRequestModel;->token:Ljava/lang/String;

    return-void
.end method

.method public setUmidToken(Ljava/lang/String;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/alipay/security/mobile/module/http/model/DeviceDataRequestModel;->umidToken:Ljava/lang/String;

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/alipay/security/mobile/module/http/model/DeviceDataRequestModel;->version:Ljava/lang/String;

    return-void
.end method
