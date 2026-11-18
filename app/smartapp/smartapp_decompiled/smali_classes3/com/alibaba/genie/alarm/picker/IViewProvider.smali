.class public interface abstract Lcom/alibaba/genie/alarm/picker/IViewProvider;
.super Ljava/lang/Object;
.source "IViewProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract onBindView(Landroid/view/View;Ljava/lang/Object;)V
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "TT;)V"
        }
    .end annotation
.end method

.method public abstract resLayout()I
    .annotation build Landroid/support/annotation/LayoutRes;
    .end annotation
.end method

.method public abstract updateView(Landroid/view/View;Z)V
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method
