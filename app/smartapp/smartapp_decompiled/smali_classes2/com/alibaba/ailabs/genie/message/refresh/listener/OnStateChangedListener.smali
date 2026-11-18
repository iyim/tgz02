.class public interface abstract Lcom/alibaba/ailabs/genie/message/refresh/listener/OnStateChangedListener;
.super Ljava/lang/Object;
.source "OnStateChangedListener.java"


# virtual methods
.method public abstract onStateChanged(Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;)V
    .param p1    # Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;
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
