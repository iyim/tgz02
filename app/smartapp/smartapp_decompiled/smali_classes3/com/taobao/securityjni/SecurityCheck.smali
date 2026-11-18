.class public Lcom/taobao/securityjni/SecurityCheck;
.super Ljava/lang/Object;
.source "SecurityCheck.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private manager:Lcom/taobao/wireless/security/sdk/SecurityGuardManager;

.field private proxy:Lcom/taobao/wireless/security/sdk/indiekit/IIndieKitComponent;


# direct methods
.method public constructor <init>(Landroid/content/ContextWrapper;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-static {p1}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/taobao/wireless/security/sdk/SecurityGuardManager;

    move-result-object p1

    iput-object p1, p0, Lcom/taobao/securityjni/SecurityCheck;->manager:Lcom/taobao/wireless/security/sdk/SecurityGuardManager;

    .line 21
    iget-object p1, p0, Lcom/taobao/securityjni/SecurityCheck;->manager:Lcom/taobao/wireless/security/sdk/SecurityGuardManager;

    if-eqz p1, :cond_0

    .line 22
    invoke-virtual {p1}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getIndieKitComp()Lcom/taobao/wireless/security/sdk/indiekit/IIndieKitComponent;

    move-result-object p1

    iput-object p1, p0, Lcom/taobao/securityjni/SecurityCheck;->proxy:Lcom/taobao/wireless/security/sdk/indiekit/IIndieKitComponent;

    :cond_0
    return-void
.end method


# virtual methods
.method public getCheckSignature(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 27
    new-instance v0, Lcom/taobao/securityjni/tools/DataContext;

    invoke-direct {v0}, Lcom/taobao/securityjni/tools/DataContext;-><init>()V

    const/4 v1, 0x0

    .line 28
    iput v1, v0, Lcom/taobao/securityjni/tools/DataContext;->index:I

    .line 29
    invoke-virtual {p0, p1, v0}, Lcom/taobao/securityjni/SecurityCheck;->getCheckSignature(Ljava/lang/String;Lcom/taobao/securityjni/tools/DataContext;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getCheckSignature(Ljava/lang/String;Lcom/taobao/securityjni/tools/DataContext;)Ljava/lang/String;
    .locals 3

    .line 33
    iget-object v0, p0, Lcom/taobao/securityjni/SecurityCheck;->proxy:Lcom/taobao/wireless/security/sdk/indiekit/IIndieKitComponent;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    if-nez p2, :cond_0

    goto :goto_2

    .line 36
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v2, "timestamp"

    .line 37
    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    new-instance p1, Lcom/taobao/wireless/security/sdk/SecurityGuardParamContext;

    invoke-direct {p1}, Lcom/taobao/wireless/security/sdk/SecurityGuardParamContext;-><init>()V

    .line 39
    iput-object v0, p1, Lcom/taobao/wireless/security/sdk/SecurityGuardParamContext;->paramMap:Ljava/util/Map;

    const/4 v0, 0x1

    .line 40
    iput v0, p1, Lcom/taobao/wireless/security/sdk/SecurityGuardParamContext;->requestType:I

    .line 41
    iget-object v0, p2, Lcom/taobao/securityjni/tools/DataContext;->extData:[B

    const-string v2, ""

    if-eqz v0, :cond_1

    iget-object v0, p2, Lcom/taobao/securityjni/tools/DataContext;->extData:[B

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 42
    new-instance v0, Ljava/lang/String;

    iget-object p2, p2, Lcom/taobao/securityjni/tools/DataContext;->extData:[B

    invoke-direct {v0, p2}, Ljava/lang/String;-><init>([B)V

    iput-object v0, p1, Lcom/taobao/wireless/security/sdk/SecurityGuardParamContext;->appKey:Ljava/lang/String;

    goto :goto_1

    .line 44
    :cond_1
    iget v0, p2, Lcom/taobao/securityjni/tools/DataContext;->index:I

    if-gez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget v0, p2, Lcom/taobao/securityjni/tools/DataContext;->index:I

    :goto_0
    iput v0, p2, Lcom/taobao/securityjni/tools/DataContext;->index:I

    .line 45
    iget-object v0, p0, Lcom/taobao/securityjni/SecurityCheck;->manager:Lcom/taobao/wireless/security/sdk/SecurityGuardManager;

    invoke-virtual {v0}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getStaticDataStoreComp()Lcom/taobao/wireless/security/sdk/staticdatastore/IStaticDataStoreComponent;

    move-result-object v0

    iget p2, p2, Lcom/taobao/securityjni/tools/DataContext;->index:I

    invoke-interface {v0, p2}, Lcom/taobao/wireless/security/sdk/staticdatastore/IStaticDataStoreComponent;->getAppKeyByIndex(I)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 46
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    .line 48
    :cond_3
    iput-object p2, p1, Lcom/taobao/wireless/security/sdk/SecurityGuardParamContext;->appKey:Ljava/lang/String;

    .line 50
    :goto_1
    iget-object p2, p0, Lcom/taobao/securityjni/SecurityCheck;->proxy:Lcom/taobao/wireless/security/sdk/indiekit/IIndieKitComponent;

    invoke-interface {p2, p1}, Lcom/taobao/wireless/security/sdk/indiekit/IIndieKitComponent;->indieKitRequest(Lcom/taobao/wireless/security/sdk/SecurityGuardParamContext;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4
    :goto_2
    return-object v1
.end method

.method public indieKitRequest(Lcom/taobao/wireless/security/sdk/SecurityGuardParamContext;)Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/taobao/securityjni/SecurityCheck;->proxy:Lcom/taobao/wireless/security/sdk/indiekit/IIndieKitComponent;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 56
    :cond_0
    invoke-interface {v0, p1}, Lcom/taobao/wireless/security/sdk/indiekit/IIndieKitComponent;->indieKitRequest(Lcom/taobao/wireless/security/sdk/SecurityGuardParamContext;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public reportSusText(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 64
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public validateFileSignature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    const/4 p1, -0x1

    return p1
.end method
