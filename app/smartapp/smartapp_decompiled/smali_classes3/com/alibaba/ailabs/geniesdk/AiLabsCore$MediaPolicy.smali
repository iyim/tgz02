.class public interface abstract annotation Lcom/alibaba/ailabs/geniesdk/AiLabsCore$MediaPolicy;
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
    name = "MediaPolicy"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final POLICY_CALL_PHONE:I = 0x2

.field public static final POLICY_NORMAL:I = 0x0

.field public static final POLICY_REMIND:I = 0xc8

.field public static final POLICY_VOICE:I = 0x1

.field public static final POLICY_VOICE_ALARM:I = 0x64

.field public static final POLICY_VOICE_PRINT:I = 0x3
