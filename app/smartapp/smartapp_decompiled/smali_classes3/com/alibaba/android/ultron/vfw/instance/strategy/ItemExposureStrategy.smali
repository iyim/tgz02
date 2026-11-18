.class public Lcom/alibaba/android/ultron/vfw/instance/strategy/ItemExposureStrategy;
.super Ljava/lang/Object;
.source "ItemExposureStrategy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/ultron/vfw/instance/strategy/ItemExposureStrategy$ExposureStrategyComponentLifecycleCallback;
    }
.end annotation


# static fields
.field private static final KEY_ASYNC_STATUS:Ljava/lang/String; = "asyncStatus"

.field private static final KEY_EXPOSURE:Ljava/lang/String; = "exposureCount"

.field private static final KEY_EXPOSURE_ITEM:Ljava/lang/String; = "exposureItem"

.field private static final TAG:Ljava/lang/String; = "ItemExposureStrategy"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static bindExposureEvent(Lcom/alibaba/android/ultron/vfw/core/ViewEngine;Lcom/alibaba/android/ultron/event/base/UltronEventHandler;)V
    .locals 1

    const/4 v0, 0x0

    .line 108
    invoke-static {v0, p0, p1}, Lcom/alibaba/android/ultron/vfw/instance/strategy/ItemExposureStrategy;->bindExposureEvent(Lcom/alibaba/android/ultron/vfw/instance/UltronInstanceConfig$ExposureStrategy;Lcom/alibaba/android/ultron/vfw/core/ViewEngine;Lcom/alibaba/android/ultron/event/base/UltronEventHandler;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static bindExposureEvent(Lcom/alibaba/android/ultron/vfw/instance/UltronInstanceConfig$ExposureStrategy;Lcom/alibaba/android/ultron/vfw/core/ViewEngine;Lcom/alibaba/android/ultron/event/base/UltronEventHandler;)V
    .locals 1

    .line 113
    new-instance v0, Lcom/alibaba/android/ultron/vfw/instance/strategy/ItemExposureStrategy$ExposureStrategyComponentLifecycleCallback;

    invoke-direct {v0, p0, p2}, Lcom/alibaba/android/ultron/vfw/instance/strategy/ItemExposureStrategy$ExposureStrategyComponentLifecycleCallback;-><init>(Lcom/alibaba/android/ultron/vfw/instance/UltronInstanceConfig$ExposureStrategy;Lcom/alibaba/android/ultron/event/base/UltronEventHandler;)V

    invoke-virtual {p1, v0}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->setComponentLifecycleCallback(Lcom/alibaba/android/ultron/vfw/event/ComponentLifecycleCallback;)V

    return-void
.end method
