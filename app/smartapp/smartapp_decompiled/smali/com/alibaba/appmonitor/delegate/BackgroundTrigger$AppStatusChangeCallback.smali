.class public interface abstract Lcom/alibaba/appmonitor/delegate/BackgroundTrigger$AppStatusChangeCallback;
.super Ljava/lang/Object;
.source "BackgroundTrigger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/appmonitor/delegate/BackgroundTrigger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AppStatusChangeCallback"
.end annotation


# virtual methods
.method public abstract onBackground()V
.end method

.method public abstract onForeground()V
.end method
