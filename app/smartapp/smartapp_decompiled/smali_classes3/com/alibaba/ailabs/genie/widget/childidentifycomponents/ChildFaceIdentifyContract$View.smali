.class public interface abstract Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyContract$View;
.super Ljava/lang/Object;
.source "ChildFaceIdentifyContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "View"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyContract$Presenter;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract getAttachedContext()Landroid/content/Context;
.end method

.method public abstract getSurfaceView()Landroid/view/SurfaceView;
.end method

.method public abstract initListener()V
.end method

.method public abstract reSetViewStatus()V
.end method

.method public abstract resizeSurface(Landroid/view/SurfaceView;)V
    .param p1    # Landroid/view/SurfaceView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract setMainTextHint(Ljava/lang/String;)V
.end method

.method public abstract setPresenter(Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyContract$Presenter;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public abstract showViewResult(I)V
.end method
