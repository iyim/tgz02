.class public Lcom/alipay/mobile/verifyidentity/engine/TaskManager$SlientModule;
.super Ljava/lang/Object;
.source "TaskManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/verifyidentity/engine/TaskManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SlientModule"
.end annotation


# instance fields
.field public nextModuleData:Ljava/lang/String;

.field public nextVerifyId:Ljava/lang/String;

.field final synthetic this$0:Lcom/alipay/mobile/verifyidentity/engine/TaskManager;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/verifyidentity/engine/TaskManager;)V
    .locals 1

    .line 332
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/engine/TaskManager$SlientModule;->this$0:Lcom/alipay/mobile/verifyidentity/engine/TaskManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
