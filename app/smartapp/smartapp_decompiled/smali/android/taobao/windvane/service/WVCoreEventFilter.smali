.class public abstract Landroid/taobao/windvane/service/WVCoreEventFilter;
.super Ljava/lang/Object;
.source "WVCoreEventFilter.java"

# interfaces
.implements Landroid/taobao/windvane/service/WVEventListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method protected onCoreSwitch()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public varargs onEvent(ILandroid/taobao/windvane/service/WVEventContext;[Ljava/lang/Object;)Landroid/taobao/windvane/service/WVEventResult;
    .locals 0

    .line 13
    new-instance p2, Landroid/taobao/windvane/service/WVEventResult;

    const/4 p3, 0x0

    invoke-direct {p2, p3}, Landroid/taobao/windvane/service/WVEventResult;-><init>(Z)V

    const/16 p3, 0xbc8

    if-eq p1, p3, :cond_1

    const/16 p3, 0xbc9

    if-eq p1, p3, :cond_0

    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p0}, Landroid/taobao/windvane/service/WVCoreEventFilter;->onCoreSwitch()V

    goto :goto_0

    .line 16
    :cond_1
    invoke-virtual {p0}, Landroid/taobao/windvane/service/WVCoreEventFilter;->onUCCorePrepared()V

    :goto_0
    return-object p2
.end method

.method protected onUCCorePrepared()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
