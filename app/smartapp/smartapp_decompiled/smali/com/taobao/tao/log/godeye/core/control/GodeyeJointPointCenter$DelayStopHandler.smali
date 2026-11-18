.class Lcom/taobao/tao/log/godeye/core/control/GodeyeJointPointCenter$DelayStopHandler;
.super Landroid/os/Handler;
.source "GodeyeJointPointCenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/tao/log/godeye/core/control/GodeyeJointPointCenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DelayStopHandler"
.end annotation


# instance fields
.field private final mGodeyeJointPointCallback:Lcom/taobao/tao/log/godeye/api/control/IGodeyeJointPointCenter$GodeyeJointPointCallback;


# direct methods
.method constructor <init>(Lcom/taobao/tao/log/godeye/api/control/IGodeyeJointPointCenter$GodeyeJointPointCallback;)V
    .locals 0

    .line 462
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 463
    iput-object p1, p0, Lcom/taobao/tao/log/godeye/core/control/GodeyeJointPointCenter$DelayStopHandler;->mGodeyeJointPointCallback:Lcom/taobao/tao/log/godeye/api/control/IGodeyeJointPointCenter$GodeyeJointPointCallback;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    .line 468
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 469
    iget-object p1, p0, Lcom/taobao/tao/log/godeye/core/control/GodeyeJointPointCenter$DelayStopHandler;->mGodeyeJointPointCallback:Lcom/taobao/tao/log/godeye/api/control/IGodeyeJointPointCenter$GodeyeJointPointCallback;

    invoke-virtual {p1}, Lcom/taobao/tao/log/godeye/api/control/IGodeyeJointPointCenter$GodeyeJointPointCallback;->doCallback()V

    return-void
.end method
