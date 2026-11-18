.class public interface abstract Lcom/alibaba/ailabs/agui/modal/ICapability;
.super Ljava/lang/Object;
.source "ICapability.java"


# static fields
.field public static final CAPABILITY_TYPE_GESTURE:I = 0x1

.field public static final CAPABILITY_TYPE_MMI:I = 0x3e8

.field public static final CAPABILITY_TYPE_SED_DETECT:I = 0x4

.field public static final CAPABILITY_TYPE_VISION_CENTER:I = 0x2

.field public static final CAPABILITY_TYPE_VOICE:I = 0x3


# virtual methods
.method public abstract onResponseCapabilityProcessor(ILcom/alibaba/ailabs/agui/event/MmiEvent;)Lcom/alibaba/ailabs/agui/event/MmiEventResponse;
.end method

.method public abstract setCapabilityProcessor(ILcom/alibaba/ailabs/agui/modal/ICapabilityProcessor;)V
.end method

.method public abstract start(I)V
.end method

.method public abstract stop(I)V
.end method
