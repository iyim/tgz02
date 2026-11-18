.class public interface abstract annotation Lcom/alibaba/ailabs/geniesdk/record/WakeUpInfo$WakeUpType;
.super Ljava/lang/Object;
.source "WakeUpInfo.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/geniesdk/record/WakeUpInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "WakeUpType"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final ACTIVE:I = 0x0

.field public static final APP:I = 0xb

.field public static final CLOUD:I = 0x2

.field public static final CONTINUE_DIALOG:I = 0x9

.field public static final CONTINUITY:I = 0x1

.field public static final DOMAIN_DIRECT:I = 0x6

.field public static final FACE_RECOGNIZE:I = 0xa

.field public static final FULL_DUPLEX_DIALOG:I = 0xe

.field public static final GESTURE:I = 0xd

.field public static final LOCAL_DIALOG:I = 0xc

.field public static final LONG_RECORD:I = 0x10

.field public static final PRESS:I = 0x7

.field public static final SHORTCUT:I = 0x4

.field public static final TOUCH:I = 0x8

.field public static final VOICEPRINT:I = 0x3

.field public static final VOICE_MESSAGE:I = 0x5

.field public static final WAKEUP_ORAL_EVALUATION:I = 0xf
