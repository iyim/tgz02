.class public Lcom/alipay/apmobilesecuritysdk/otherid/UtdidWrapper;
.super Ljava/lang/Object;
.source "UtdidWrapper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getUtdid(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    :try_start_0
    const-string v0, "com.ut.device.UTDevice"

    .line 22
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getUtdid"

    const/4 v2, 0x1

    .line 23
    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    .line 25
    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "[-] UTDID error."

    .line 28
    invoke-static {v0}, Lcom/alipay/apmobilesecuritysdk/macro/LoggerStub;->logMessage(Ljava/lang/String;)V

    .line 29
    invoke-static {p0}, Lcom/alipay/apmobilesecuritysdk/macro/LoggerStub;->logException(Ljava/lang/Throwable;)V

    const-string p0, ""

    :goto_0
    return-object p0
.end method
