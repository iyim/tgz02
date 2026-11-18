.class public interface abstract Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;
.super Ljava/lang/Object;
.source "RefreshInternal.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/message/refresh/listener/OnStateChangedListener;


# virtual methods
.method public abstract getSpinnerStyle()Lcom/alibaba/ailabs/genie/message/refresh/constant/SpinnerStyle;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method public abstract getView()Landroid/view/View;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method public abstract isSupportHorizontalDrag()Z
.end method

.method public abstract onFinish(Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;Z)I
    .param p1    # Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;,
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;,
            .enum Landroid/support/annotation/RestrictTo$Scope;->SUBCLASSES:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation
.end method

.method public abstract onHorizontalDrag(FII)V
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;,
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;,
            .enum Landroid/support/annotation/RestrictTo$Scope;->SUBCLASSES:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation
.end method

.method public abstract onInitialized(Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;II)V
    .param p1    # Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;,
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;,
            .enum Landroid/support/annotation/RestrictTo$Scope;->SUBCLASSES:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation
.end method

.method public abstract onMoving(ZFIII)V
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;,
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;,
            .enum Landroid/support/annotation/RestrictTo$Scope;->SUBCLASSES:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation
.end method

.method public abstract onReleased(Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;II)V
    .param p1    # Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;,
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;,
            .enum Landroid/support/annotation/RestrictTo$Scope;->SUBCLASSES:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation
.end method

.method public abstract onStartAnimator(Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;II)V
    .param p1    # Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;,
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;,
            .enum Landroid/support/annotation/RestrictTo$Scope;->SUBCLASSES:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation
.end method

.method public varargs abstract setPrimaryColors([I)V
    .param p1    # [I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;,
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;,
            .enum Landroid/support/annotation/RestrictTo$Scope;->SUBCLASSES:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation
.end method
