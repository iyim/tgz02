.class public Lcom/taobao/orange/impl/TBGuardSign;
.super Ljava/lang/Object;
.source "TBGuardSign.java"

# interfaces
.implements Lcom/taobao/orange/inner/ISign;


# static fields
.field private static final TAG:Ljava/lang/String; = "TBGuardSign"

.field private static mSecurityGuardValid:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 1

    :try_start_0
    const-string v0, "com.alibaba.wireless.security.open.SecurityGuardManager"

    .line 26
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    const/4 v0, 0x1

    .line 27
    sput-boolean v0, Lcom/taobao/orange/impl/TBGuardSign;->mSecurityGuardValid:Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    .line 29
    sput-boolean v0, Lcom/taobao/orange/impl/TBGuardSign;->mSecurityGuardValid:Z

    :goto_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public sign(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string/jumbo p3, "sign"

    .line 35
    sget-boolean v0, Lcom/taobao/orange/impl/TBGuardSign;->mSecurityGuardValid:Z

    const/4 v1, 0x0

    const-string v2, "TBGuardSign"

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 36
    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "no security guard exist"

    invoke-static {v2, p2, p1}, Lcom/taobao/orange/util/OLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v3

    .line 41
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    move-result-object p1
    :try_end_0
    .catch Lcom/alibaba/wireless/security/open/SecException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 43
    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {v2, p3, p1, v0}, Lcom/taobao/orange/util/OLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    move-object p1, v3

    :goto_0
    if-nez p1, :cond_1

    .line 46
    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "get SecurityGuardManager null"

    invoke-static {v2, p2, p1}, Lcom/taobao/orange/util/OLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v3

    .line 50
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getSecureSignatureComp()Lcom/alibaba/wireless/security/open/securesignature/ISecureSignatureComponent;

    move-result-object p1

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v4, "INPUT"

    .line 52
    invoke-virtual {v0, v4, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    new-instance p4, Lcom/alibaba/wireless/security/open/SecurityGuardParamContext;

    invoke-direct {p4}, Lcom/alibaba/wireless/security/open/SecurityGuardParamContext;-><init>()V

    .line 54
    iput-object p2, p4, Lcom/alibaba/wireless/security/open/SecurityGuardParamContext;->appKey:Ljava/lang/String;

    .line 55
    iput-object v0, p4, Lcom/alibaba/wireless/security/open/SecurityGuardParamContext;->paramMap:Ljava/util/Map;

    const/4 p2, 0x3

    .line 56
    iput p2, p4, Lcom/alibaba/wireless/security/open/SecurityGuardParamContext;->requestType:I

    .line 60
    :try_start_1
    invoke-interface {p1, p4, p5}, Lcom/alibaba/wireless/security/open/securesignature/ISecureSignatureComponent;->signRequest(Lcom/alibaba/wireless/security/open/SecurityGuardParamContext;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catch Lcom/alibaba/wireless/security/open/SecException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 62
    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {v2, p3, p1, p2}, Lcom/taobao/orange/util/OLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_1
    return-object v3
.end method
