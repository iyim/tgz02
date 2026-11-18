.class public Landroid/taobao/windvane/extra/mtop/ApiUrlManager;
.super Ljava/lang/Object;
.source "ApiUrlManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getUploadTokenUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 21
    new-instance v0, Landroid/taobao/windvane/connect/api/ApiRequest;

    invoke-direct {v0}, Landroid/taobao/windvane/connect/api/ApiRequest;-><init>()V

    const-string v1, "api"

    const-string v2, "com.taobao.mtop.getUploadFileToken"

    .line 22
    invoke-virtual {v0, v1, v2}, Landroid/taobao/windvane/connect/api/ApiRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "v"

    const-string v2, "2.0"

    .line 23
    invoke-virtual {v0, v1, v2}, Landroid/taobao/windvane/connect/api/ApiRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "uniqueKey"

    .line 24
    invoke-virtual {v0, v1, p0}, Landroid/taobao/windvane/connect/api/ApiRequest;->addDataParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    const-class p0, Landroid/taobao/windvane/extra/mtop/MtopApiAdapter;

    invoke-static {v0, p0}, Landroid/taobao/windvane/connect/api/WVApiWrapper;->formatUrl(Landroid/taobao/windvane/connect/api/ApiRequest;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getUploadUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 29
    new-instance v0, Landroid/taobao/windvane/connect/api/ApiRequest;

    invoke-direct {v0}, Landroid/taobao/windvane/connect/api/ApiRequest;-><init>()V

    const-string v1, "api"

    const-string v2, "com.taobao.mtop.uploadFile"

    .line 30
    invoke-virtual {v0, v1, v2}, Landroid/taobao/windvane/connect/api/ApiRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "v"

    const-string v2, "2.0"

    .line 31
    invoke-virtual {v0, v1, v2}, Landroid/taobao/windvane/connect/api/ApiRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "uniqueKey"

    .line 32
    invoke-virtual {v0, v1, p0}, Landroid/taobao/windvane/connect/api/ApiRequest;->addDataParam(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "accessToken"

    .line 33
    invoke-virtual {v0, p0, p1}, Landroid/taobao/windvane/connect/api/ApiRequest;->addDataParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    const-class p0, Landroid/taobao/windvane/extra/mtop/MtopApiAdapter;

    invoke-static {v0, p0}, Landroid/taobao/windvane/connect/api/WVApiWrapper;->formatUrl(Landroid/taobao/windvane/connect/api/ApiRequest;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
