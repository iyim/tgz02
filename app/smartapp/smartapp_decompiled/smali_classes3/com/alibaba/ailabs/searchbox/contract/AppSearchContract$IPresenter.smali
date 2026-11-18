.class public interface abstract Lcom/alibaba/ailabs/searchbox/contract/AppSearchContract$IPresenter;
.super Ljava/lang/Object;
.source "AppSearchContract.java"

# interfaces
.implements Lcom/alibaba/ailabs/base/mvp/contract/IBasePresenter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/searchbox/contract/AppSearchContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IPresenter"
.end annotation


# virtual methods
.method public abstract initData(Landroid/content/Intent;)V
.end method

.method public abstract itemClick(I)V
.end method
