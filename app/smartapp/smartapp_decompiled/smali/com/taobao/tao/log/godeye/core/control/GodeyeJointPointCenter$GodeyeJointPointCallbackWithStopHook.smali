.class Lcom/taobao/tao/log/godeye/core/control/GodeyeJointPointCenter$GodeyeJointPointCallbackWithStopHook;
.super Lcom/taobao/tao/log/godeye/api/control/IGodeyeJointPointCenter$GodeyeJointPointCallback;
.source "GodeyeJointPointCenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/tao/log/godeye/core/control/GodeyeJointPointCenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GodeyeJointPointCallbackWithStopHook"
.end annotation


# instance fields
.field private final mGodeyeJointPointCallback:Lcom/taobao/tao/log/godeye/api/control/IGodeyeJointPointCenter$GodeyeJointPointCallback;


# direct methods
.method public constructor <init>(Lcom/taobao/tao/log/godeye/api/control/IGodeyeJointPointCenter$GodeyeJointPointCallback;)V
    .locals 0

    .line 502
    invoke-direct {p0}, Lcom/taobao/tao/log/godeye/api/control/IGodeyeJointPointCenter$GodeyeJointPointCallback;-><init>()V

    .line 503
    iput-object p1, p0, Lcom/taobao/tao/log/godeye/core/control/GodeyeJointPointCenter$GodeyeJointPointCallbackWithStopHook;->mGodeyeJointPointCallback:Lcom/taobao/tao/log/godeye/api/control/IGodeyeJointPointCenter$GodeyeJointPointCallback;

    return-void
.end method


# virtual methods
.method public doCallback()V
    .locals 5

    .line 513
    invoke-static {}, Lcom/taobao/tao/log/godeye/core/control/Godeye;->sharedInstance()Lcom/taobao/tao/log/godeye/core/control/Godeye;

    move-result-object v0

    new-instance v1, Lcom/taobao/tao/log/godeye/protocol/model/ClientEvent;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "global_end"

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/taobao/tao/log/godeye/protocol/model/ClientEvent;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/taobao/tao/log/godeye/core/control/Godeye;->addClientEvent(Lcom/taobao/tao/log/godeye/protocol/model/ClientEvent;)V

    .line 514
    iget-object v0, p0, Lcom/taobao/tao/log/godeye/core/control/GodeyeJointPointCenter$GodeyeJointPointCallbackWithStopHook;->mGodeyeJointPointCallback:Lcom/taobao/tao/log/godeye/api/control/IGodeyeJointPointCenter$GodeyeJointPointCallback;

    invoke-virtual {v0}, Lcom/taobao/tao/log/godeye/api/control/IGodeyeJointPointCenter$GodeyeJointPointCallback;->doCallback()V

    return-void
.end method

.method public isDisposable()Z
    .locals 1

    .line 508
    iget-object v0, p0, Lcom/taobao/tao/log/godeye/core/control/GodeyeJointPointCenter$GodeyeJointPointCallbackWithStopHook;->mGodeyeJointPointCallback:Lcom/taobao/tao/log/godeye/api/control/IGodeyeJointPointCenter$GodeyeJointPointCallback;

    invoke-virtual {v0}, Lcom/taobao/tao/log/godeye/api/control/IGodeyeJointPointCenter$GodeyeJointPointCallback;->isDisposable()Z

    move-result v0

    return v0
.end method
