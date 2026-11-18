.class public Lcom/alipay/mobile/verifyidentity/injector/StartActivityInjectorUtils;
.super Ljava/lang/Object;
.source "StartActivityInjectorUtils.java"


# static fields
.field private static a:Lcom/alipay/mobile/verifyidentity/injector/StartActivityInjector;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hackbyte "

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static injectorHandled(Landroid/content/Intent;)Z
    .locals 1

    .line 23
    sget-object v0, Lcom/alipay/mobile/verifyidentity/injector/StartActivityInjectorUtils;->a:Lcom/alipay/mobile/verifyidentity/injector/StartActivityInjector;

    if-eqz v0, :cond_0

    .line 24
    invoke-interface {v0, p0}, Lcom/alipay/mobile/verifyidentity/injector/StartActivityInjector;->startActivity(Landroid/content/Intent;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static setStartActivityInjector(Lcom/alipay/mobile/verifyidentity/injector/StartActivityInjector;)V
    .locals 0

    .line 16
    sput-object p0, Lcom/alipay/mobile/verifyidentity/injector/StartActivityInjectorUtils;->a:Lcom/alipay/mobile/verifyidentity/injector/StartActivityInjector;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
