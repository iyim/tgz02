.class public interface abstract Lcom/alibaba/ailabs/geniesdk/focus/IFocus;
.super Ljava/lang/Object;
.source "IFocus.java"


# static fields
.field public static final MEDIA_FOCUS_GET:I = 0x1

.field public static final MEDIA_FOCUS_LOSS:I = 0x0

.field public static final MEDIA_FOCUS_PAUSE:I = 0x2

.field public static final MEDIA_FOCUS_RESUME:I = 0x3


# virtual methods
.method public abstract requestFocus(II)Z
.end method

.method public abstract setFocusListener(Lcom/alibaba/ailabs/geniesdk/focus/IFocusListener;)V
.end method
