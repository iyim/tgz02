.class public interface abstract Lcom/alibaba/ailabs/genie/utils/stream/LineReader$Callback;
.super Ljava/lang/Object;
.source "LineReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/utils/stream/LineReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onDone()V
.end method

.method public abstract onLine(Ljava/lang/String;I)Z
.end method
