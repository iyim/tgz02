.class final Lcom/alipay/apmobilesecuritysdk/otherid/UmidSdkWrapper$1;
.super Ljava/lang/Object;
.source "UmidSdkWrapper.java"

# interfaces
.implements Lcom/taobao/dp/client/IInitResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/apmobilesecuritysdk/otherid/UmidSdkWrapper;->startUmidTaskSync(Landroid/content/Context;I)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public onInitFinished(Ljava/lang/String;I)V
    .locals 0

    const/4 p2, 0x1

    .line 62
    invoke-static {p2}, Lcom/alipay/apmobilesecuritysdk/otherid/UmidSdkWrapper;->access$002(Z)Z

    .line 63
    invoke-static {p1}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 64
    invoke-static {p1}, Lcom/alipay/apmobilesecuritysdk/otherid/UmidSdkWrapper;->access$102(Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
