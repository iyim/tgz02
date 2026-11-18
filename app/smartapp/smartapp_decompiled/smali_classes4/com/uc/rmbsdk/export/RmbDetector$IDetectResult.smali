.class public interface abstract Lcom/uc/rmbsdk/export/RmbDetector$IDetectResult;
.super Ljava/lang/Object;
.source "RmbDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uc/rmbsdk/export/RmbDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IDetectResult"
.end annotation


# static fields
.field public static final DETECT_FAIL:I = -0x1

.field public static final OK:I = 0x1

.field public static final TIMEOUT:I = 0x0

.field public static final TIMEOUT_RECEIVED:I = 0x2


# virtual methods
.method public abstract onResult(I)V
.end method
