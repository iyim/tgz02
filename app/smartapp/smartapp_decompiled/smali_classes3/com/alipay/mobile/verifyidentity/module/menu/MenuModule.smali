.class public Lcom/alipay/mobile/verifyidentity/module/menu/MenuModule;
.super Lcom/alipay/mobile/verifyidentity/module/MicroModule;
.source "MenuModule.java"


# static fields
.field public static ModuleData:Ljava/lang/String; = "moduleData"

.field private static final a:Ljava/lang/String; = "MenuModule"


# instance fields
.field private b:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 2

    .line 10
    invoke-direct {p0}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;-><init>()V

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


# virtual methods
.method protected onCreate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 18
    sget-object p1, Lcom/alipay/mobile/verifyidentity/module/menu/MenuModule;->a:Ljava/lang/String;

    const-string p2, "MenuModule onCreate"

    invoke-static {p1, p2}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p4, :cond_0

    .line 19
    new-instance p4, Landroid/os/Bundle;

    invoke-direct {p4}, Landroid/os/Bundle;-><init>()V

    :cond_0
    iput-object p4, p0, Lcom/alipay/mobile/verifyidentity/module/menu/MenuModule;->b:Landroid/os/Bundle;

    .line 20
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/module/menu/MenuModule;->b:Landroid/os/Bundle;

    sget-object p2, Lcom/alipay/mobile/verifyidentity/module/menu/MenuModule;->ModuleData:Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 33
    sget-object v0, Lcom/alipay/mobile/verifyidentity/module/menu/MenuModule;->a:Ljava/lang/String;

    const-string v1, "MenuModule onDestroy"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->d(Ljava/lang/String;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method protected onStart()V
    .locals 3

    .line 25
    sget-object v0, Lcom/alipay/mobile/verifyidentity/module/menu/MenuModule;->a:Ljava/lang/String;

    const-string v1, "MenuModule onStart"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/menu/MenuModule;->getMicroModuleContext()Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 27
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/menu/MenuModule;->b:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 28
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/menu/MenuModule;->getMicroModuleContext()Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->startActivity(Lcom/alipay/mobile/verifyidentity/module/MicroModule;Landroid/content/Intent;)V

    return-void
.end method
