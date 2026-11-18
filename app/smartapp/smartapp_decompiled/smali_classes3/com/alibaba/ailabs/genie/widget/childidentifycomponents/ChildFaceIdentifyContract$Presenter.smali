.class public interface abstract Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyContract$Presenter;
.super Ljava/lang/Object;
.source "ChildFaceIdentifyContract.java"

# interfaces
.implements Landroid/arch/lifecycle/LifecycleObserver;
.implements Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/IPresenter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Presenter"
.end annotation


# virtual methods
.method public abstract beginCountDownTimer()V
.end method

.method public abstract init()V
.end method

.method public abstract initChildFaceClient()V
.end method

.method public abstract onTTSPlayEngineCalled(ILjava/lang/String;)V
.end method

.method public abstract retryIdentify()V
.end method

.method public abstract setOnClickListener(Landroid/view/View;)V
.end method

.method public abstract startFaceIdentify()V
.end method
