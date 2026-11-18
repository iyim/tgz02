.class public Lcom/alipay/apmobilesecuritysdk/macro/TmxStub;
.super Ljava/lang/Object;
.source "TmxStub.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/apmobilesecuritysdk/macro/TmxStub$TmxSdkListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static initTmxSessionId(Landroid/content/Context;Lcom/alipay/apmobilesecuritysdk/macro/TmxStub$TmxSdkListener;)V
    .locals 0

    const-string p0, ""

    .line 75
    invoke-interface {p1, p0}, Lcom/alipay/apmobilesecuritysdk/macro/TmxStub$TmxSdkListener;->onResult(Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static stop()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
