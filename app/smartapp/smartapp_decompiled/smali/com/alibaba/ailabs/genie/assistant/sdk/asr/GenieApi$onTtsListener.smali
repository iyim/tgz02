.class public interface abstract Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$onTtsListener;
.super Ljava/lang/Object;
.source "GenieApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "onTtsListener"
.end annotation


# static fields
.field public static final STATUS_EXCEPTION:I = 0x3

.field public static final STATUS_NORMAL:I = 0x0

.field public static final STATUS_START:I = 0x1

.field public static final STATUS_STOP:I = 0x2


# virtual methods
.method public abstract onTtsCallback(II)V
.end method
