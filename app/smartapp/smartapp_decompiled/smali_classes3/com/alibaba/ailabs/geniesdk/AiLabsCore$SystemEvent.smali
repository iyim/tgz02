.class public interface abstract annotation Lcom/alibaba/ailabs/geniesdk/AiLabsCore$SystemEvent;
.super Ljava/lang/Object;
.source "AiLabsCore.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/geniesdk/AiLabsCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "SystemEvent"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final SYSTEM_CHARGING_OFF:I = 0x4

.field public static final SYSTEM_CHARGING_ON:I = 0x3

.field public static final SYSTEM_EVENT_CHILD_MODE:I = 0x1

.field public static final SYSTEM_EVENT_DND_MODE:I = 0x2

.field public static final SYSTEM_EVENT_SHUTDOWN:I = 0x0

.field public static final SYSTEM_EVENT_STANDBY:I = 0x7

.field public static final SYSTEM_LOW_BATTERY_1:I = 0x5

.field public static final SYSTEM_LOW_BATTERY_2:I = 0x6
