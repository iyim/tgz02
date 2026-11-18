.class public Lcom/alipay/security/mobile/module/http/v2/RPCUploadV2Impl;
.super Ljava/lang/Object;
.source "RPCUploadV2Impl.java"

# interfaces
.implements Lcom/alipay/security/mobile/module/http/v2/IUploadV2;


# static fields
.field private static uploadProxy:Lcom/alipay/security/mobile/module/http/IUpload;

.field private static uploadV2:Lcom/alipay/security/mobile/module/http/v2/IUploadV2;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/alipay/security/mobile/module/http/v2/IUploadV2;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 39
    :cond_0
    sget-object v0, Lcom/alipay/security/mobile/module/http/v2/RPCUploadV2Impl;->uploadV2:Lcom/alipay/security/mobile/module/http/v2/IUploadV2;

    if-nez v0, :cond_1

    .line 40
    invoke-static {p0, p1}, Lcom/alipay/security/mobile/module/http/UploadFactory;->create(Landroid/content/Context;Ljava/lang/String;)Lcom/alipay/security/mobile/module/http/IUpload;

    move-result-object p0

    sput-object p0, Lcom/alipay/security/mobile/module/http/v2/RPCUploadV2Impl;->uploadProxy:Lcom/alipay/security/mobile/module/http/IUpload;

    .line 41
    new-instance p0, Lcom/alipay/security/mobile/module/http/v2/RPCUploadV2Impl;

    invoke-direct {p0}, Lcom/alipay/security/mobile/module/http/v2/RPCUploadV2Impl;-><init>()V

    sput-object p0, Lcom/alipay/security/mobile/module/http/v2/RPCUploadV2Impl;->uploadV2:Lcom/alipay/security/mobile/module/http/v2/IUploadV2;

    .line 44
    :cond_1
    sget-object p0, Lcom/alipay/security/mobile/module/http/v2/RPCUploadV2Impl;->uploadV2:Lcom/alipay/security/mobile/module/http/v2/IUploadV2;

    return-object p0
.end method


# virtual methods
.method public logCollect(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 31
    sget-object v0, Lcom/alipay/security/mobile/module/http/v2/RPCUploadV2Impl;->uploadProxy:Lcom/alipay/security/mobile/module/http/IUpload;

    invoke-interface {v0, p1}, Lcom/alipay/security/mobile/module/http/IUpload;->logCollect(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public updateStaticData(Lcom/alipay/security/mobile/module/http/model/DeviceDataRequestModel;)Lcom/alipay/security/mobile/module/http/model/DeviceDataReponseModel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 24
    invoke-static {p1}, Lcom/alipay/security/mobile/module/http/model/ConvertUtil;->convertFrom(Lcom/alipay/security/mobile/module/http/model/DeviceDataRequestModel;)Lcom/alipay/tscenter/biz/rpc/vkeydfp/request/DeviceDataReportRequest;

    move-result-object p1

    .line 25
    sget-object v0, Lcom/alipay/security/mobile/module/http/v2/RPCUploadV2Impl;->uploadProxy:Lcom/alipay/security/mobile/module/http/IUpload;

    invoke-interface {v0, p1}, Lcom/alipay/security/mobile/module/http/IUpload;->updateStaticData(Lcom/alipay/tscenter/biz/rpc/vkeydfp/request/DeviceDataReportRequest;)Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult;

    move-result-object p1

    .line 26
    invoke-static {p1}, Lcom/alipay/security/mobile/module/http/model/ConvertUtil;->convertFrom(Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult;)Lcom/alipay/security/mobile/module/http/model/DeviceDataReponseModel;

    move-result-object p1

    return-object p1
.end method
