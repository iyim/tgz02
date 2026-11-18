.class Lcom/taobao/tao/log/godeye/core/control/GodeyeJointPointCenter$GodeyeBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "GodeyeJointPointCenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/tao/log/godeye/core/control/GodeyeJointPointCenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GodeyeBroadcastReceiver"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mGodeyeJointPointCallback:Lcom/taobao/tao/log/godeye/api/control/IGodeyeJointPointCenter$GodeyeJointPointCallback;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/taobao/tao/log/godeye/api/control/IGodeyeJointPointCenter$GodeyeJointPointCallback;)V
    .locals 0

    .line 314
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 315
    iput-object p1, p0, Lcom/taobao/tao/log/godeye/core/control/GodeyeJointPointCenter$GodeyeBroadcastReceiver;->mContext:Landroid/content/Context;

    .line 316
    iput-object p2, p0, Lcom/taobao/tao/log/godeye/core/control/GodeyeJointPointCenter$GodeyeBroadcastReceiver;->mGodeyeJointPointCallback:Lcom/taobao/tao/log/godeye/api/control/IGodeyeJointPointCenter$GodeyeJointPointCallback;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 321
    iget-object p1, p0, Lcom/taobao/tao/log/godeye/core/control/GodeyeJointPointCenter$GodeyeBroadcastReceiver;->mGodeyeJointPointCallback:Lcom/taobao/tao/log/godeye/api/control/IGodeyeJointPointCenter$GodeyeJointPointCallback;

    invoke-virtual {p1}, Lcom/taobao/tao/log/godeye/api/control/IGodeyeJointPointCenter$GodeyeJointPointCallback;->doCallback()V

    .line 322
    iget-object p1, p0, Lcom/taobao/tao/log/godeye/core/control/GodeyeJointPointCenter$GodeyeBroadcastReceiver;->mGodeyeJointPointCallback:Lcom/taobao/tao/log/godeye/api/control/IGodeyeJointPointCenter$GodeyeJointPointCallback;

    invoke-virtual {p1}, Lcom/taobao/tao/log/godeye/api/control/IGodeyeJointPointCenter$GodeyeJointPointCallback;->isDisposable()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 323
    iget-object p1, p0, Lcom/taobao/tao/log/godeye/core/control/GodeyeJointPointCenter$GodeyeBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method
