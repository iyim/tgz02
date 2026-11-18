.class public interface abstract Lcom/alibaba/ailabs/cleaner/contract/CleanerMainContract$IView;
.super Ljava/lang/Object;
.source "CleanerMainContract.java"

# interfaces
.implements Lcom/alibaba/ailabs/base/mvp/contract/IBaseView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/cleaner/contract/CleanerMainContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IView"
.end annotation


# virtual methods
.method public abstract initViewContent(Landroid/app/Activity;Lcom/alibaba/ailabs/cleaner/adapter/CleanerMainAdapter;)V
.end method

.method public abstract startClearAnim()V
.end method

.method public abstract stopClearAnim()V
.end method
