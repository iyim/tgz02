.class Lcom/alipay/mobile/verifyidentity/ui/helper/ActivityHelper$1;
.super Lcom/alipay/mobile/verifyidentity/module/MicroModule;
.source "ActivityHelper.java"


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/verifyidentity/ui/helper/ActivityHelper;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/verifyidentity/ui/helper/ActivityHelper;)V
    .locals 1

    .line 252
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/ActivityHelper$1;->this$0:Lcom/alipay/mobile/verifyidentity/ui/helper/ActivityHelper;

    invoke-direct {p0}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;-><init>()V

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const-class p1, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {p1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "hackbyte "

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method protected onDestroy()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method protected onStart()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
